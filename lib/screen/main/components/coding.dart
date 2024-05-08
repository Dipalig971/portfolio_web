import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: 'C++',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: 'C',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: 'Dart',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: 'Python',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: 'Java',
        ),
      ],
    );
  }
}
