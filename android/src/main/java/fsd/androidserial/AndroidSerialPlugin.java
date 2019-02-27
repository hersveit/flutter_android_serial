package fsd.androidserial;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** AndroidSerialPlugin */
public class AndroidSerialPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "android_serial");
    channel.setMethodCallHandler(new AndroidSerialPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getSerialNumber")) {
      result.success(android.os.Build.SERIAL);
    } else {
      result.notImplemented();
    }
  }
}
