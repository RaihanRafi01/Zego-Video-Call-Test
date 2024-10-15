import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZegoUIKitPrebuiltCall(
        appID: 4718390,
        appSign: 'c16cd1e0bc62f20a10c43ecac646aaafd7f352af5a01687b235fd0d03aece263',
        userID: 'user_2',
        userName: 'User 2',
        callID: 'call_1',
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
      ),
    );
  }
}
