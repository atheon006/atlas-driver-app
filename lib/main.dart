import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'views/driver_dashboard_view.dart';

void main() {
  runApp(const AtlasDriverApp());
}

class AtlasDriverApp extends StatelessWidget {
  const AtlasDriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATLAS Livreur',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const DriverDashboardView(),
    );
  }
}
