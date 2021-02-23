import 'dart:collection';

class MyStack<T> {
  final Queue<T> _stack = Queue<T>();

  void push(T element) {
    _stack.addLast(element);
  }

  T pop() {
    final T lastElement = _stack.last;
    _stack.removeLast();
    return lastElement;
  }

  bool isEmpty() => _stack.isEmpty;
  bool isNotEmpty() => _stack.isNotEmpty;
  int length() => _stack.length;
  T first() => _stack.first;
  T last() => _stack.last;
}
