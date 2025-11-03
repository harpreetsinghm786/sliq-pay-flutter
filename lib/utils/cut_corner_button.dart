import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

enum Corner { topLeft, topRight, bottomLeft, bottomRight }

class CutCornerButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Set<Corner> cornersToClip;
  final double cutSize;
  final double height;
  final double? width;
  final Gradient? gradient;
  final Color? backgroundColor;
  final Border? border;

  const CutCornerButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.cornersToClip = const {},
    this.cutSize = 16.0,
    this.height = 52.0,
    this.width,
    this.gradient,
    this.backgroundColor = AppColors.darkGrayPrimary,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          // Background container with cut corners
          ClipPath(
            clipper: _CutCornerClipper(corners: cornersToClip, cutSize: cutSize),
            child: Container(
              decoration: BoxDecoration(
                gradient: gradient,
                color: gradient == null ? backgroundColor : null,
              ),
            ),
          ),
          // Custom border with cut corners
          if (border != null)
            CustomPaint(
              painter: _CutCornerBorderPainter(
                corners: cornersToClip,
                cutSize: cutSize,
                border: border!,
              ),
              size: Size(width ?? double.infinity, height),
            ),
          // Interactive layer
          ClipPath(
            clipper: _CutCornerClipper(corners: cornersToClip, cutSize: cutSize),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onPressed,
                child: Center(child: child),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CutCornerClipper extends CustomClipper<Path> {
  final Set<Corner> corners;
  final double cutSize;

  _CutCornerClipper({required this.corners, required this.cutSize});

  @override
  Path getClip(Size size) {
    final path = Path();
    if (corners.contains(Corner.topLeft)) {
      path.moveTo(cutSize, 0);
    } else {
      path.moveTo(0, 0);
    }
    if (corners.contains(Corner.topRight)) {
      path.lineTo(size.width - cutSize, 0);
      path.lineTo(size.width, cutSize);
    } else {
      path.lineTo(size.width, 0);
    }
    if (corners.contains(Corner.bottomRight)) {
      path.lineTo(size.width, size.height - cutSize);
      path.lineTo(size.width - cutSize, size.height);
    } else {
      path.lineTo(size.width, size.height);
    }
    if (corners.contains(Corner.bottomLeft)) {
      path.lineTo(cutSize, size.height);
      path.lineTo(0, size.height - cutSize);
    } else {
      path.lineTo(0, size.height);
    }
    if (corners.contains(Corner.topLeft)) {
      path.lineTo(0, cutSize);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class _CutCornerBorderPainter extends CustomPainter {
  final Set<Corner> corners;
  final double cutSize;
  final Border border;

  _CutCornerBorderPainter({
    required this.corners,
    required this.cutSize,
    required this.border,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = border.top.color
      ..strokeWidth = border.top.width
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    // Use the exact same path logic as the clipper
    final path = Path();
    
    if (corners.contains(Corner.topLeft)) {
      path.moveTo(cutSize, 0);
    } else {
      path.moveTo(0, 0);
    }
    
    if (corners.contains(Corner.topRight)) {
      path.lineTo(size.width - cutSize, 0);
      path.lineTo(size.width, cutSize);
    } else {
      path.lineTo(size.width, 0);
    }
    
    if (corners.contains(Corner.bottomRight)) {
      path.lineTo(size.width, size.height - cutSize);
      path.lineTo(size.width - cutSize, size.height);
    } else {
      path.lineTo(size.width, size.height);
    }
    
    if (corners.contains(Corner.bottomLeft)) {
      path.lineTo(cutSize, size.height);
      path.lineTo(0, size.height - cutSize);
    } else {
      path.lineTo(0, size.height);
    }
    
    if (corners.contains(Corner.topLeft)) {
      path.lineTo(0, cutSize);
    }
    
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
} 

/// Public clipper for containers that need only the top corners cut.
/// Useful for modal panels or cards that align with the app's brand.
class TopCutCornerClipper extends CustomClipper<Path> {
  final double cutSize;

  TopCutCornerClipper({required this.cutSize});

  @override
  Path getClip(Size size) {
    final path = Path();

    // Start at top-left cut
    path.moveTo(cutSize, 0);
    // Top edge to top-right minus cut
    path.lineTo(size.width - cutSize, 0);
    // Top-right cut
    path.lineTo(size.width, cutSize);
    // Right edge
    path.lineTo(size.width, size.height);
    // Bottom edge
    path.lineTo(0, size.height);
    // Left edge up to cut
    path.lineTo(0, cutSize);
    // Back to start to close cut
    path.lineTo(cutSize, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}


class RoundedTopTrapeziumClipper extends CustomClipper<Path> {
  final double cornerRadius; // roundness of top corners
  final double topInset; // how much narrower the top is

  RoundedTopTrapeziumClipper({
    this.cornerRadius = 16.0,
    this.topInset = 24.0,
  });

  @override
  Path getClip(Size size) {
    final path = Path();

    // Start from top-left rounded corner
    path.moveTo(topInset + cornerRadius, 0);
    path.quadraticBezierTo(
      topInset, 0,
      topInset, cornerRadius,
    );

    // Left edge down to bottom-left
    path.lineTo(0, size.height);

    // Bottom edge to bottom-right
    path.lineTo(size.width, size.height);

    // Right edge up to top-right rounded corner
    path.lineTo(size.width - topInset, cornerRadius);
    path.quadraticBezierTo(
      size.width - topInset, 0,
      size.width - topInset - cornerRadius, 0,
    );

    // Close path
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

