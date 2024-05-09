import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: Responsive.isMobile(context)?2.5:3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/background.jpeg',
              fit: BoxFit.cover,
            ),
            Container(
              color: darkColor.withOpacity(0.66),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Discover my Amazing \n Art Space!',
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headlineLarge?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)
                        : Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const MyBuildAnimatedText(),
                  if(Responsive.isMobile(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  if(Responsive.isMobile(context))
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        ),
                        backgroundColor: primaryColor,
                      ),
                      child: const Text(
                        'EXPLORE NOW',
                        style: TextStyle(color: darkColor),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleLarge!,
      child: Row(
        children: [
          if(Responsive.isMobile(context))
          const FlutterCodeText(),
          if(Responsive.isMobile(context))
          const SizedBox(
            width: defaultPadding / 2,
          ),
          const Text('I build '),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText('responsive Web and mobile app.',
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText('complete e-commerce app UI.',
                speed: const Duration(milliseconds: 60)),
            TyperAnimatedText('Chat app With dark and light theme.',
                speed: const Duration(milliseconds: 60)),
          ]),
          if(Responsive.isMobile(context))
          const SizedBox(
            width: defaultPadding / 2,
          ),
          if(Responsive.isMobile(context))
          const FlutterCodeText(),
        ],
      ),
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
          TextSpan(
            text: '>',
          )
        ],
      ),
    );
  }
}
