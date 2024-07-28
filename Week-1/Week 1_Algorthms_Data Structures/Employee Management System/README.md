### Memory Representation of Arrays
In memory, arrays are stored in contiguous locations. Each element is stored in adjacent memory locations. The memory representation of an array is like a long tape of bytes, with each element taking up a certain number of bytes.

### Time Complexity
- Add Operation:
Best-case: 
O(1) - If there is space available in the array.
Worst-case: 
O(1) - Adding an element always takes constant time as long as there is space.

- Search Operation:
Best-case: 
O(1) - If the element is at the beginning of the array.
Worst-case: 
O(n) - If the element is at the end or not present in the array.

- Traverse Operation:
Best-case: 
O(n) - Iterating through all elements in the array.
Worst-case: 
O(n) - Iterating through all elements in the array.

- Delete Operation:
Best-case: 
O(1) - If the element to be deleted is at the end of the array.
Worst-case: 
O(n) - If the element to be deleted is at the beginning of the array, requiring all subsequent elements to be shifted.

### Limitations of Arrays
- Fixed Size: The size of an array is fixed at the time of creation and cannot be changed. This can lead to wastage of memory or insufficient capacity.
- Insertion and Deletion: Inserting or deleting elements in an array can be expensive, especially if it requires shifting elements.

### When to Use Arrays
- Known Size: When the number of elements is known in advance and will not change.
- Fast Access: When fast, constant-time access to elements is required.
- Memory Efficiency: When a simple, memory-efficient data structure is sufficient for the application.