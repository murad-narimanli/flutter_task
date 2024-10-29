import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'insurance_plan.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Property Insurance Plans'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Use GridView for wider screens, ListView for smaller screens
          if (constraints.maxWidth > 600) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
              ),
              itemCount: insurancePlans.length,
              itemBuilder: (context, index) {
                final plan = insurancePlans[index];
                return buildCard(context, plan);
              },
            );
          } else {
            return ListView.builder(
              itemCount: insurancePlans.length,
              itemBuilder: (context, index) {
                final plan = insurancePlans[index];
                return buildCard(context, plan);
              },
            );
          }
        },
      ),
    );
  }

  // Function to create card for each insurance plan
  Widget buildCard(BuildContext context, InsurancePlan plan) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(plan.name),
        subtitle: Text(
          'Coverage: \$${plan.coverageAmount}, Premium: \$${plan.monthlyPremium}/mo',
        ),
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  DetailsScreen(plan: plan),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                var begin = Offset(1.0, 0.0);
                var end = Offset.zero;
                var tween = Tween(begin: begin, end: end);
                var offsetAnimation = animation.drive(tween);

                return SlideTransition(position: offsetAnimation, child: child);
              },
            ),
          );
        },
      ),
    );
  }
}
