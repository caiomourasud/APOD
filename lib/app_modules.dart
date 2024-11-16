import 'package:apod/core/stores/app_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<AppStore>(AppStore.new);
  }
}
