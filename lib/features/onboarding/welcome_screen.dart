import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/onboarding/welcome_painter.dart';
import 'package:realtime_chat_app/generated/l10n.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  late Animation buttonAnimation;
  late Animation textAnimation;
  late Animation painterAnimation;
  late Animation positionAnimation;
  late Animation fadeTextAnimation;

  late double height;
  late double width;
  bool showWelcomeText = false;

  @override
  void initState() {
    initializeAnimations();
    super.initState();
    animationController
      ..addListener(() {
        setState(() {});
      })
      ..forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initializeAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4, milliseconds: 500),
    );

    painterAnimation = Tween<double>(begin: 0.0, end: 12.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.25, 0.5, curve: Curves.easeInOut),
      ),
    );

    textAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.4, 0.6, curve: Curves.easeInOut),
      ),
    );

    positionAnimation = Tween<double>(begin: 0.5, end: 0.3).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.625, 0.7, curve: Curves.easeInOut),
      ),
    );

    fadeTextAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.7, 0.8, curve: Curves.easeInOut),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Center(
            child: GradientIcon(
              iconData: Icons.textsms_rounded,
              size: 96,
            ),
          ),
          CustomPaint(
            painter: WelcomePainter(painterAnimation.value),
            child: Stack(
              children: [
                if (textAnimation.value > 0.0)
                  _buildWelcomeText()
                else
                  Container(),
                if (fadeTextAnimation.value > 0)
                  _buildDetailTextAndButton(context)
                else
                  Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Positioned _buildDetailTextAndButton(BuildContext context) {
    return Positioned(
      top: 0.4 * height,
      left: 0.15 * width,
      right: 0.15 * width,
      child: Opacity(
        opacity: fadeTextAnimation.value,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.of(context).welcomeText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 0.05 * height),
            InkWell(
              onTap: () {
                context.pushReplacement('/');
              },
              child: Container(
                height: 0.06 * height,
                width: 0.5 * width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white.withOpacity(0.25),
                ),
                child: Center(
                  child: Text(
                    S.of(context).letsStart,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _buildWelcomeText() {
    return Positioned(
      top: positionAnimation.value * height,
      left: 0,
      right: 0,
      child: Opacity(
        opacity: textAnimation.value,
        child: Center(
          child: Text(
            S.of(context).welcome,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.w900,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  const GradientIcon({
    super.key,
    required this.iconData,
    this.size = 96.0,
  });
  final IconData iconData;
  final double size;

  @override
  Widget build(BuildContext context) {
    final Color color1 = Theme.of(context).colorScheme.primary;
    final Color color2 = Theme.of(context).colorScheme.secondary;

    return ShaderMask(
      shaderCallback: (bounds) {
        return LinearGradient(
          colors: [color1, color2],
          tileMode: TileMode.clamp,
        ).createShader(bounds);
      },
      child: Icon(
        iconData,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
