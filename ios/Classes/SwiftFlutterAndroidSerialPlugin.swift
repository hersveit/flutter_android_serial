import Flutter
import UIKit

public class SwiftFlutterAndroidSerialPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_android_serial", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterAndroidSerialPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("")
  }
}
