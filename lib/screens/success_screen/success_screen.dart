import 'package:flutter/material.dart';
import '../../constants/app_constants.dart';
import 'widgets/background.dart';
import 'widgets/doneButton.dart';
import 'widgets/successContent.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: const [
          background(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppConstants.pad_15),
              child: Column(
                children: [
                  Expanded(flex: 9, child: successContent()),
                  Expanded(flex: 1, child: doneButton()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
