public class StrategyPatternTest {
    public static void main(String[] args) {
        PaymentContext paymentContext = new PaymentContext();

        PaymentStrategy creditCardPayment = new CreditCardPayment("1234567890123456", "John Doe", "123", "12/25");
        paymentContext.setPaymentStrategy(creditCardPayment);
        paymentContext.executePayment(150.0);

        PaymentStrategy payPalPayment = new PayPalPayment("subh@example.com", "password123");
        paymentContext.setPaymentStrategy(payPalPayment);
        paymentContext.executePayment(75.0);
    }
}
