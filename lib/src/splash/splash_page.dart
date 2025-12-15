import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:versa360_webview/src/app/app_page.dart';
import 'package:versa360_webview/src/core/ui/image_constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    _startAnimationAndNavigation();
  }

  void _navigateToApp() {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => const App()));
  }

  void _startAnimationAndNavigation() async {
    await Future.delayed(const Duration(seconds: 1));
    if (mounted) {
      setState(() {
        _opacity = 1.0;
      });
    }

    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      _navigateToApp();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF020817),
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            opacity: _opacity,
            child: SvgPicture.asset(Assets.versa360Logo, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
