import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  static const platform = MethodChannel('com.example.videocalling_test/pip');

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  void initState() {
    super.initState();
    // Notify the native side that the user is on the call screen
    CallPage.platform.invokeMethod('onCallScreen');
  }

  @override
  void dispose() {
    // Notify the native side that the user has left the call screen
    CallPage.platform.invokeMethod('offCallScreen');
    super.dispose();
  }

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
