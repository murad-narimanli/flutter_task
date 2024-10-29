class InsurancePlan {
  final String name;
  final double coverageAmount;
  final double monthlyPremium;
  final double deductible;
  final String description;

  InsurancePlan({
    required this.name,
    required this.coverageAmount,
    required this.monthlyPremium,
    required this.deductible,
    required this.description,
  });
}

final List<InsurancePlan> insurancePlans = [
  InsurancePlan(
    name: 'Basic Plan',
    coverageAmount: 100000,
    monthlyPremium: 50,
    deductible: 1000,
    description: 'A basic plan with limited coverage for essential risks.',
  ),
  InsurancePlan(
    name: 'Standard Plan',
    coverageAmount: 200000,
    monthlyPremium: 100,
    deductible: 800,
    description: 'A standard plan with moderate coverage for common risks.',
  ),
  InsurancePlan(
    name: 'Premium Plan',
    coverageAmount: 500000,
    monthlyPremium: 200,
    deductible: 500,
    description: 'A premium plan with extensive coverage for most risks.',
  ),
];
