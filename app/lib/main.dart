import 'package:flutter/material.dart';

void main() {
  runApp(const CpebApp());
}

class CpebApp extends StatelessWidget {
  const CpebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CPEB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width >= 800;

    return Scaffold(
      appBar: AppBar(title: const Text('Equipment Booking')),
      drawer: isWide
          ? null
          : const Drawer(child: Center(child: Text('Navigation'))),
      body: Row(
        children: [
          if (isWide)
            const NavigationRail(
              selectedIndex: 0,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard),
                  label: Text('Dashboard'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.devices),
                  label: Text('Equipment'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.event),
                  label: Text('Bookings'),
                ),
              ],
            ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: _DashboardContent(),
            ),
          ),
        ],
      ),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text(
          'University Equipment Booking System',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        Card(
          child: ListTile(
            title: Text('Available Equipment'),
            subtitle: Text('Browse and request resources'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Booking Conflict Prevention'),
            subtitle: Text('Overlapping reservations must be rejected'),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Approval Workflow'),
            subtitle: Text('Lab managers approve or reject requests'),
          ),
        ),
      ],
    );
  }
}
