public class LinearSearch {
    public static Book linearSearch(Book[] books, String title) {
        for (Book book : books) {
            if (book.getTitle().equalsIgnoreCase(title)) {
                return book;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        Book[] books = {
            new Book("1", "To Kill a Mockingbird", "Harper Lee"),
            new Book("2", "1984", "George Orwell"),
            new Book("3", "Pride and Prejudice", "Jane Austen")
        };

        System.out.println("Linear Search for '1984':");
        System.out.println(linearSearch(books, "1984"));
    }
}
