import java.util.HashMap;
import java.util.Map;

public class OptimisedFinancialForecasting {

    private static Map<Integer, Double> memo = new HashMap<>();

    public static double calculateFutureValue(double initialValue, double growthRate, int periods) {
        if (periods == 0) {
            return initialValue;
        }
        if (memo.containsKey(periods)) {
            return memo.get(periods);
        }
        double futureValue = (1 + growthRate) * calculateFutureValue(initialValue, growthRate, periods - 1);
        memo.put(periods, futureValue);
        return futureValue;
    }

    public static void main(String[] args) {
        double initialValue = 1000.0;
        double growthRate = 0.05;
        int periods = 10;

        double futureValue = calculateFutureValue(initialValue, growthRate, periods);
        System.out.println("Future Value: " + futureValue);
    }
}
