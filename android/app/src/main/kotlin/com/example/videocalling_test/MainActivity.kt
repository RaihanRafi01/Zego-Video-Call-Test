package com.example.videocalling_test

import android.app.PictureInPictureParams
import android.os.Build
import android.util.Rational
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onUserLeaveHint() {
        super.onUserLeaveHint()

        // Enter Picture-in-Picture (PiP) mode when the user presses the home button or minimizes the app.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val aspectRatio = Rational(16, 9)
            val params = PictureInPictureParams.Builder()
                .setAspectRatio(aspectRatio)
                .build()
            enterPictureInPictureMode(params)
        }
    }
}


