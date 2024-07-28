### Algorithms:

Linear Search: Linear search is a simple search algorithm that checks each element in a list sequentially until the target element is found or the end of the list is reached.
Time Complexity: O(n) 

Binary Search: Binary search is a more efficient search algorithm that works on sorted lists. It repeatedly divides the search interval in half. If the target element is less than the middle element, it searches the left half, otherwise, it searches the right half.
Time Complexity: O(logn) 

### When to Use Each Algorithm:

- Linear Search:
Suitable for small datasets where the overhead of sorting is not justified.
Useful when the list is not sorted and sorting it would be too costly or unnecessary.

- Binary Search:
Suitable for larger datasets where efficient search times are required.
Requires the list to be sorted, so it is useful when the dataset is static or rarely changes, allowing the sorting cost to be amortized over many search operations.