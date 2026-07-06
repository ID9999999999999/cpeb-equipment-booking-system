import 'package:flutter_test/flutter_test.dart';
import 'package:cpeb_app/main.dart';

void main() {
  testWidgets('app renders dashboard title', (tester) async {
    await tester.pumpWidget(const CpebApp());
    expect(find.text('University Equipment Booking System'), findsOneWidget);
  });
}
