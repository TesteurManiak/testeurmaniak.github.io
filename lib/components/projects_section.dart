import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../data/projects.dart';
import '../models/project.dart';
import 'icon_link.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'projects', [
      for (final project in projects) _ProjectCard(project),
    ]);
  }
}

class _ProjectCard extends StatelessComponent {
  const _ProjectCard(this.project);

  final Project project;

  @override
  Component build(BuildContext context) {
    final description = project.description;
    final imageUrl = project.imageUrl;
    final iconUrl = project.iconUrl;

    return div(classes: 'project', [
      if (imageUrl != null)
        img(
          src: imageUrl,
          alt: '',
          classes: 'project-background',
          loading: MediaLoading.lazy,
        ),
      div(classes: 'project-content', [
        if (iconUrl != null)
          img(
            src: iconUrl,
            alt: '',
            classes: 'project-icon',
            loading: MediaLoading.lazy,
          ),
        h3([Component.text(project.title)]),
        if (description != null)
          p(classes: 'project-description', [Component.text(description)]),
        div(classes: 'icon-links', [
          for (final link in project.links) IconLink(link),
        ]),
      ]),
    ]);
  }
}
