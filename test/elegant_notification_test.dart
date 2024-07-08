import 'package:elegant_notification/elegant_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Simple elegant notification test', () {
    testWidgets(
      'basic elegant notification',
      (tester) async {
        var basicElgantNotificaiton = ElegantNotification(
          description: const Text(
            'Elegant notification description',
          ),
          icon: const Icon(
            Icons.add,
          ),
        );
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: basicElgantNotificaiton,
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsOneWidget,
        );
        expect(
          find.byType(LinearProgressIndicator),
          findsOneWidget,
        );
        expect(
          find.byType(Icon),
          findsAtLeastNWidgets(2),
        );
        expect(
          basicElgantNotificaiton.background,
          equals(Colors.white),
        );
      },
    );

    testWidgets(
      'Success elegant notification',
      (tester) async {
        var basicElgantNotificaiton = ElegantNotification.success(
          description: const Text(
            'Simple success toast',
          ),
          autoDismiss: true,
          toastDuration: const Duration(seconds: 1),
        );
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: basicElgantNotificaiton,
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsOneWidget,
        );
        expect(
          find.byType(LinearProgressIndicator),
          findsOneWidget,
        );
        expect(
          find.byIcon(Icons.check_circle),
          findsOneWidget,
        );
        expect(
          basicElgantNotificaiton.background,
          equals(Colors.white),
        );
      },
    );


    testWidgets(
      'Success elegant notification',
      (tester) async {
        var basicElgantNotificaiton = ElegantNotification.success(
          description: const Text(
            'Simple success toast',
          ),
          autoDismiss: true,
          toastDuration: const Duration(seconds: 1),
        );
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: basicElgantNotificaiton,
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsOneWidget,
        );
        expect(
          find.byType(LinearProgressIndicator),
          findsOneWidget,
        );
        expect(
          find.byIcon(Icons.check_circle),
          findsOneWidget,
        );
        expect(
          basicElgantNotificaiton.background,
          equals(Colors.white),
        );
      },
    );

    testWidgets(
      'Success elegant notification',
      (tester) async {
        var basicElgantNotificaiton = ElegantNotification.success(
          description: const Text(
            'Simple success toast',
          ),
          autoDismiss: true,
          toastDuration: const Duration(seconds: 1),
        );
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: basicElgantNotificaiton,
              ),
            ),
          ),
        );
        expect(
          find.byType(Text),
          findsOneWidget,
        );
        expect(
          find.byType(LinearProgressIndicator),
          findsOneWidget,
        );
        expect(
          find.byIcon(Icons.check_circle),
          findsOneWidget,
        );
        expect(
          basicElgantNotificaiton.background,
          equals(Colors.white),
        );
      },
    );

    // testWidgets('Test toast dismissal', (tester) async {
    //   await tester.pump(const Duration(seconds: 1));
    //   expect(
    //     find.byType(ElegantNotification),
    //     findsNothing,
    //   );
    // });
  });
}
