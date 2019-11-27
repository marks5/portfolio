import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/bio_page.dart';
import 'package:website/stores/bio/bio.dart';

class HomePage extends StatelessWidget {
  static const routePath = "/";

  @override
  Widget build(BuildContext context) {
    return Provider<Bio>(
      create: (_) => Bio(),
      child: Scaffold(body: BioPage(routePath: routePath)),
    );
  }
}