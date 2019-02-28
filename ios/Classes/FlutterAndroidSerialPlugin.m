#import "FlutterAndroidSerialPlugin.h"
#import "SwiftFlutterAndroidSerialPlugin-Swift.h"

@implementation FlutterAndroidSerialPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterAndroidSerialPlugin registerWithRegistrar:registrar];
}
@end
