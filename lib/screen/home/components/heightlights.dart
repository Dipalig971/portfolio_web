import 'package:flutter/cupertino.dart';
import 'package:portfolio_web/responsive.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ?  const Column(
              children: [
                Row(
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
                  ],
                ),
                SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 30,
                        text: '+',
                      ),
                      label: 'Github Projects',
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: 'K+',
                      ),
                      label: 'Stars',
                    ),
                  ],
                )

              ],
            )
          : const Row(
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
                    value: 13,
                    text: 'K+',
                  ),
                  label: 'Stars',
                ),
              ],
            ),
    );
  }
}
