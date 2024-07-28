## Types of sorting algorithms:

- Bubble Sort: Bubble Sort repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. This process is repeated until the list is sorted.
Time Complexity:O(n^2).

- Insertion Sort: Insertion Sort builds the final sorted array one item at a time. It takes each element and inserts it into its correct position among the previously sorted elements.
Time Complexity: O(n^2).

- Quick Sort: Quick Sort is a divide-and-conquer algorithm. It selects a pivot element and partitions the array into two sub-arrays such that elements less than the pivot are on the left, and elements greater than the pivot are on the right. It then recursively sorts the sub-arrays.
Time Complexity: O(n^2)

- Merge Sort: Merge Sort is also a divide-and-conquer algorithm. It divides the array into two halves, recursively sorts them, and then merges the sorted halves.
Time Complexity: O(nlogn).

### Quick Sort is generally preferred over Bubble Sort because Quick Sort has an average and best-case time complexity of O(nlogn), which is significantly better than Bubble Sort’s O(n^2).