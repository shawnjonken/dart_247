// Online Shopping Cart System in Dart

// Standard Function: Calculate total with optional tax
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double subtotal = prices.reduce((a, b) => a + b);
  double tax = subtotal * taxRate;
  return subtotal + tax;
}

// Higher-Order Function: Apply discount using a passed function
List<double> applyDiscount(
  List<double> prices,
  double Function(double) discountFn,
) {
  return prices.map((price) => discountFn(price)).toList();
}

// Recursive Function: Factorial-based discount
int calculateFactorialDiscount(int n) {
  if (n <= 1) return 1;
  return n * calculateFactorialDiscount(n - 1);
}

void main() {
  // Initial cart items
  List<double> cart = [5.0, 12.0, 25.0, 8.0, 50.0];

  print("Original Cart: $cart");

  // Anonymous Function: Filter out items under $10
  cart = cart.where((price) => price >= 10).toList();
  print("Filtered Cart (items >= \$10): $cart");

  // Apply a 20% discount using Higher-Order Function
  cart = applyDiscount(cart, (price) => price * 0.8);
  print("Cart after 20% discount: $cart");

  // Calculate total with 10% tax
  double totalWithTax = calculateTotal(cart, taxRate: 0.10);
  print("Total after tax: \$${totalWithTax.toStringAsFixed(2)}");

  // Apply factorial discount based on number of items
  int itemCount = cart.length;
  int factorialDiscountPercent = calculateFactorialDiscount(itemCount);
  double finalPrice = totalWithTax * (1 - factorialDiscountPercent / 100);

  print("Factorial Discount (${itemCount}! = $factorialDiscountPercent%):");
  print(
    "Final Price after factorial discount: \$${finalPrice.toStringAsFixed(2)}",
  );
}
