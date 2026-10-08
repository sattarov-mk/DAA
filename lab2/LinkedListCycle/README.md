# LeetCode 141. Linked List Cycle (Dart)

Решение задачи на определение цикла в связном списке.

## Идея

Использую алгоритм "черепахи и зайца" (Floyd's Cycle-Finding Algorithm):

1. Заводим два указателя: `slow` и `fast`, оба изначально смотрят на `head`.
2. `slow` двигается на 1 шаг за итерацию, а `fast` — на 2 шага.
3. Если в списке есть цикл, рано или поздно `fast` догонит `slow` и они сравняются по ссылке (`slow == fast`).
4. Если цикла нет, `fast` просто упрется в `null` и мы выйдем из цикла.

## Решение

```dart
class Solution {
  bool hasCycle(ListNode? head) {
    if (head == null || head.next == null) return false;

    var slow = head;
    var fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;

      if (slow == fast) {
        return true;
      }
    }

    return false;
  }
}
