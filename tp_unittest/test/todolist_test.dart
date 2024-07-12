import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tp_unittest/models/todo.dart';
import 'package:tp_unittest/pages/todo_list.dart';
import 'package:tp_unittest/services/todo_service.dart';

class MockTodoService extends Mock implements TodoService {
  static Future<List<Todo>> findAll() async {
    return []; // Return an empty list or a mock list of Todo items as needed
  }
}

void main() {
  late MockTodoService mockTodoService;

  setUp(() {
    mockTodoService = MockTodoService();
  });

  testWidgets('TodoList initializes with todos from TodoService',
      (WidgetTester tester) async {
    // Arrange
    when(MockTodoService.findAll()).thenAnswer((_) async => [
          Todo(
            'Test Todo',
            false,
            id: 1,
          )
        ]);

    // Act
    await tester.pumpWidget(MaterialApp(home: TodoList()));

    // Assert
    verify(MockTodoService.findAll()).called(1);
  });

  // testWidgets('TodoList refreshes todos on _refreshTodos call',
  //     (WidgetTester tester) async {
  //   // Arrange
  //   when(mockTodoService.findAll()).thenAnswer(
  //       (_) async => [Todo(id: '1', title: 'Test Todo', completed: false)]);
  //   await tester.pumpWidget(MaterialApp(home: TodoList()));

  //   // Act
  //   // Simulate the refresh action. This might need to be adjusted based on how _refreshTodos is triggered in the UI.
  //   // For example, if it's a button press, you would use tester.tap(find.byType(IconButton));
  //   // Since _refreshTodos is private and likely called within the class, this step might be more about ensuring the UI updates after the service call.

  //   // Assert
  //   verify(mockTodoService.findAll()).called(
  //       greaterThanOrEqualTo(2)); // Assuming it was called again during refresh
  // });
}
