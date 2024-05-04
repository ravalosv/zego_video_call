import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key, required this.callID, required this.config});
  final String callID;
  final ZegoUIKitPrebuiltCallConfig config;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 797588182, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: '9097e6de9e29ec11b712f6976181149205605ad10e71e85a81e0eef1a5b30899', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: generateRandomString(10), // Generate a random userID for the user.
      userName: generateRandomString(10),
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: config,
    );
  }

  String generateRandomString(int length) {
    const randomChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    const charsLength = randomChars.length;

    final random = Random();

    final randomString = String.fromCharCodes(Iterable.generate(
      length,
      (_) => randomChars.codeUnitAt(random.nextInt(charsLength)),
    ));

    return randomString;
  }
}
