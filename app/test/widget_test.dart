import 'package:cpeb_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders dashboard title', (tester) async {
    await tester.pumpWidget(const CpebApp());

    expect(find.text('University Equipment Booking System'), findsOneWidget);
  });
}
