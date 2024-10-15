import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Join Call')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the call screen when the button is pressed
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CallPage()),
            );
          },
          child: const Text('Join Call'),
        ),
      ),
    );
  }
}

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZegoUIKitPrebuiltCall(
        appID: 4718390, // Replace with your actual appID
        appSign: 'c16cd1e0bc62f20a10c43ecac646aaafd7f352af5a01687b235fd0d03aece263', // Replace with your actual appSign
        userID: 'user_2',
        userName: 'User 2',
        callID: 'call_1',
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
      ),
    );
  }
}
