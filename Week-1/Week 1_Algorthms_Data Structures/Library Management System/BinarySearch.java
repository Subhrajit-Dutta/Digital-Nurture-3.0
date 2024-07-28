import java.util.Arrays;
import java.util.Comparator;

public class BinarySearch {
    public static Book binarySearch(Book[] books, String title) {
        int left = 0;
        int right = books.length - 1;

        while (left <= right) {
            int mid = left + (right - left) / 2;
            int compareResult = books[mid].getTitle().compareToIgnoreCase(title);

            if (compareResult == 0) {
                return books[mid];
            } else if (compareResult < 0) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        Book[] books = {
            new Book("1", "1984", "George Orwell"),
            new Book("2", "Pride and Prejudice", "Jane Austen"),
            new Book("3", "To Kill a Mockingbird", "Harper Lee")
        };

        Arrays.sort(books, Comparator.comparing(Book::getTitle));

        System.out.println("Binary Search for '1984':");
        System.out.println(binarySearch(books, "To Kill a Mockingbird"));
    }
}
