import 'package:flutter/material.dart';
import 'package:portfolio_web/responsive.dart';

import '../../../constants.dart';
import '../../../model/projects.dart';

class MyProjectCard extends StatelessWidget {
  const MyProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
           Spacer(),
          Text(
            project.description!,
            maxLines:Responsive.isMobileLarge(context)? 4 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Read More>>",
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}