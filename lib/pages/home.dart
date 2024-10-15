import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zego Call App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CallScreen(),
              ),
            );
          },
          child: const Text('Start a Call'),
        ),
      ),
    );
  }
}

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice/Video Call'),
      ),
      body: ZegoUIKitPrebuiltCall(
        appID: 4718390, // Replace with your Zego appID
        appSign: 'c16cd1e0bc62f20a10c43ecac646aaafd7f352af5a01687b235fd0d03aece263', // Replace with your Zego appSign
        userID: 'user_1', // User ID of the current user
        userName: 'User 1', // Name of the current user
        callID: 'call_1', // Unique call ID
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
      ),
    );
  }
}