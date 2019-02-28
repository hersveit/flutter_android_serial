package fsd.flutterandroidserial;

import android.os.Build;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterAndroidSerialPlugin */
public class FlutterAndroidSerialPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_android_serial");
    channel.setMethodCallHandler(new FlutterAndroidSerialPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getAndroidSerial")) {
      result.success(Build.SERIAL);
    } else {
      result.notImplemented();
    }
  }
}
