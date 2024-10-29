import 'package:flutter_test/flutter_test.dart';
import 'package:test_task/insurance_plan.dart';

void main() {
  test('Insurance plan should have correct coverage amount', () {
    final plan = InsurancePlan(
      name: 'Test Plan',
      coverageAmount: 100000,
      monthlyPremium: 50,
      deductible: 1000,
      description: 'Test description',
    );

    expect(plan.coverageAmount, 100000);
  });
}
