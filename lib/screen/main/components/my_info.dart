

import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xff242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: defaultPadding ,),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.png'),
              backgroundColor: Color(0xff003A54),
            ),
            const SizedBox(height: defaultPadding ,),
            Text(
              'Dipali Gunjal',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: defaultPadding /2,),
            const Text(
              'Flutter Developer & Founder of \n The Flutter Way',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}