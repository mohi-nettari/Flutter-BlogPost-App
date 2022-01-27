import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_authorize_net_client/flutter_authorize_net_client.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_authorize_net_client');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterAuthorizeNetClient.platformVersion, '42');
  });
}
