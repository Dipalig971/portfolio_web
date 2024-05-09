
import 'package:flutter/material.dart';
import 'package:portfolio_web/screen/home/components/recommendations_card.dart';

import '../../../constants.dart';
import '../../../model/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommendations',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendation.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: RecommendationsCard(
                    recommendation: demo_recommendation[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}