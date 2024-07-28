### Different types of Linked Lists

- Singly Linked List: A Singly Linked List is a data structure that consists of a sequence of elements called nodes, where each node contains a data part and a reference (or link) to the next node in the sequence.

- Doubly Linked List: A Doubly Linked List is similar to a Singly Linked List but with an additional link to the previous node. This allows traversal in both forward and backward directions.

### Time Complexity

Add Operation:
Best-case: 
O(1) - If adding at the head.
Worst-case: 
O(n) - If adding at the end (requires traversal).

Search Operation:
Best-case: 
O(1) - If the element is at the head.
Worst-case: 
O(n) - If the element is at the end or not present in the list.

Traverse Operation:
Best-case:
O(n) - Iterating through all elements.
Worst-case: 
O(n) - Iterating through all elements.

Delete Operation:
Best-case: 
O(1) - If the element to be deleted is at the head.
Worst-case: 
O(n) - If the element to be deleted is at the end or not present in the list.

### Advantages of Linked Lists Over Arrays for Dynamic Data

- Dynamic Size: Linked lists can grow and shrink dynamically, making them suitable for applications where the number of elements changes frequently.
- Ease of Insertion/Deletion: Inserting or deleting elements in a linked list is more efficient than in an array, especially when operations are performed at the beginning or end of the list.
- No Wastage of Memory: Linked lists do not require contiguous memory allocation, which can lead to more efficient use of memory.