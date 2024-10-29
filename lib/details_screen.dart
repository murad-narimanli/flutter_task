import 'package:flutter/material.dart';
import 'insurance_plan.dart';

class DetailsScreen extends StatelessWidget {
  final InsurancePlan plan;

  DetailsScreen({required this.plan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Coverage Amount: \$${plan.coverageAmount}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Monthly Premium: \$${plan.monthlyPremium}/mo',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Deductible: \$${plan.deductible}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              plan.description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
