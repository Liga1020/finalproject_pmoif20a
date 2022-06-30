import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  FirebaseCoreWeb.registerWith(registrar);
  ImagePickerPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
