import 'package:flutter/material.dart';
import 'package:portfolio_web/responsive.dart';
import 'package:portfolio_web/screen/home/components/project_card.dart';

import '../../../constants.dart';
import '../../../model/projects.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
          mobile: ProjectGridView(crossAxisCount: 1,childAspectRatio: 2,),
          desktop: ProjectGridView(),
          tablet: ProjectGridView(childAspectRatio: 1.1,),
          mobileLarge: ProjectGridView(crossAxisCount: 1,),
        )
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio:childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => MyProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
