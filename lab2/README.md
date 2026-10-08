LeetCode, Merge Two Sorted Lists (Dart)

Решение задачи на слияние двух отсортированных списков
Использую стандартный итеративный подход с dummy-нодой

Суть простая:
1. Создаем фейковый узел `dummy`, чтобы удобнее собирать новый список и не обрабатывать отдельно случай с головой.
2. В цикле через `while` сравниваем элементы `list1` и `list2`.
3. Меньший узел цепляем к `current.next` и сдвигаем указатель этого списка дальше.
4. Когда один из списков заканчивается, оставшуюся часть другого просто привязываем в конец (`current.next = list1 ?? list2`).



## Решение такое вот
```dart
class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    final dummy = ListNode(0);
    var current = dummy;

    while (list1 != null && list2 != null) {
      if (list1.val <= list2.val) {
        current.next = list1;
        list1 = list1.next;
      } else {
        current.next = list2;
        list2 = list2.next;
      }
      current = current.next!;
    }

    current.next = list1 ?? list2;

    return dummy.next;
  }
} 
(в MergeTwoSortedList.dart весь код)
