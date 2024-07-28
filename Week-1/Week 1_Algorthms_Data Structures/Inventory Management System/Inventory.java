import java.util.HashMap;
import java.util.Map;

public class Inventory {
    private HashMap<String, Product> products;

    public Inventory() {
        products = new HashMap<>();
    }

    public void addProduct(Product product) {
        products.put(product.getProductId(), product);
    }

    public void updateProduct(String productId, Product updatedProduct) {
        if (products.containsKey(productId)) {
            products.put(productId, updatedProduct);
        } else {
            System.out.println("Product not found");
        }
    }

    public void deleteProduct(String productId) {
        if (products.containsKey(productId)) {
            products.remove(productId);
        } else {
            System.out.println("Product not found");
        }
    }

    public Product getProduct(String productId) {
        return products.get(productId);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Inventory{\n");
        for (Map.Entry<String, Product> entry : products.entrySet()) {
            sb.append("  ").append(entry.getValue()).append("\n");
        }
        sb.append("}");
        return sb.toString();
    }

    public static void main(String[] args) {
        Inventory inventory = new Inventory();

        Product product1 = new Product("1", "Macbook", 10, 100.0);
        Product product2 = new Product("2", "Iphone", 20, 200.0);

        inventory.addProduct(product1);
        inventory.addProduct(product2);

        System.out.println(inventory);

        Product updatedProduct1 = new Product("1", "Alienware", 15, 150.0);
        inventory.updateProduct("1", updatedProduct1);

        System.out.println(inventory);

        inventory.deleteProduct("2");

        System.out.println(inventory);
    }
}
