import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliqpay/constants/app_constants.dart';
import 'package:sliqpay/constants/app_icons.dart';

class RollerController extends StatefulWidget {
  final List<String> contacts;
  final double itemHeight;
  final double itemWidth;
  final double speed;
  final bool isLocked;
  final String selectedImage;

  const RollerController({
    super.key,
    required this.contacts,
    this.itemHeight = 100,
    this.itemWidth = 100,
    this.speed = 1.5,
    this.isLocked = false,
    this.selectedImage = '',
  });

  @override
  State<RollerController> createState() => _EndlessVerticalScrollerState();
}

class _EndlessVerticalScrollerState extends State<RollerController> {
  late final ScrollController _scrollController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && !widget.isLocked) {
        _startInfiniteScroll();
      }
    });
  }

  void _startInfiniteScroll() {
    const frameDuration = Duration(milliseconds: 16);

    _timer = Timer.periodic(frameDuration, (_) {
      if (!mounted || !_scrollController.hasClients || widget.isLocked) return;

      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final currentOffset = _scrollController.offset;

      if (currentOffset >= maxScrollExtent) {
        _scrollController.jumpTo(0);
      } else {
        _scrollController.jumpTo(currentOffset + widget.speed);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final repeatedList = List.generate(
      50,
      (_) => widget.contacts,
    ).expand((i) => i).toList();

    return SizedBox(
      height: widget.itemHeight,
      width: widget.itemWidth,
      child: widget.isLocked
          ? Center(
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                    height: widget.itemHeight,
                    width: widget.itemWidth*1.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: widget.isLocked ? 3 : 1.5,
                      ),
                      boxShadow: [
                        if (widget.isLocked)
                          BoxShadow(
                            color: Colors.white.withOpacity(0.6),
                            blurRadius: 10,
                            spreadRadius: 3,
                          ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        widget.selectedImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: AppConstants.pad_10,
                    right: -5,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(AppIcons.tickCircleFill,height: AppConstants.pad_15,width: AppConstants.pad_15,)
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              controller: _scrollController,
              physics: const NeverScrollableScrollPhysics(),
              itemExtent: widget.itemHeight / 1.5,
              itemCount: repeatedList.length,
              itemBuilder: (context, index) {
                final path = repeatedList[index];
                final box = SizedBox(
                  height: widget.itemHeight,
                  width: widget.itemWidth,
                  child: Center(
                    child: path.endsWith('.svg')
                        ? SvgPicture.asset(
                            path,
                            height: widget.itemHeight * 0.8,
                            width: widget.itemWidth * 0.8,
                            fit: BoxFit.contain,
                          )
                        : Image.asset(
                            path,
                            height: widget.itemHeight * 0.8,
                            width: widget.itemWidth * 0.8,
                            fit: BoxFit.contain,
                          ),
                  ),
                );
                return box;
              },
            ),
    );
  }
}
