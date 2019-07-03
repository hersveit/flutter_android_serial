package com.flutter_android_serial;

import android.content.Context;
import android.provider.Settings.Secure;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * FlutterAndroidSerialPlugin
 */
public class FlutterAndroidSerialPlugin implements MethodCallHandler {
    private Context context;

    /**
     * Plugin registration.
     */
    public static void registerWith(Registrar registrar) {
        final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_android_serial");
        channel.setMethodCallHandler(new FlutterAndroidSerialPlugin(
                registrar.context()
        ));
    }

    FlutterAndroidSerialPlugin(Context context) {
        this.context = context;
    }

    @Override
    public void onMethodCall(MethodCall call, Result result) {
        if (call.method.equals("getAndroidId")) {
            String id = Secure.getString(
                    context.getContentResolver(),
                    Secure.ANDROID_ID);
            result.success(id);
        } else {
            result.notImplemented();
        }
    }
}
