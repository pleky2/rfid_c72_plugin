import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bda_c72_plugin_method_channel.dart';

abstract class BdaC72PluginPlatform extends PlatformInterface {
  /// Constructs a BdaC72PluginPlatform.
  BdaC72PluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static BdaC72PluginPlatform _instance = MethodChannelBdaC72Plugin();

  /// The default instance of [BdaC72PluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelBdaC72Plugin].
  static BdaC72PluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BdaC72PluginPlatform] when
  /// they register themselves.
  static set instance(BdaC72PluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
