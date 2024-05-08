
import 'package:flutter/cupertino.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: 119,
              text: '+',
            ),
            label: 'Subscribers',
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 40,
              text: '+',
            ),
            label: 'Videos',
          ),
          HeighLight(
            counter: AnimatedCounter(
              value: 30,
              text: '+',
            ),
            label: 'Github Projects',
          ),
          HeighLight(
            counter: AnimatedCounter(
              value:13,
              text: 'K+',
            ),
            label: 'Stars',
          ),
        ],
      ),
    );
  }
}