//
// Generated file. Do not edit.
//

// ignore_for_file: directives_ordering
// ignore_for_file: lines_longer_than_80_chars

import 'package:assets_audio_player_web/web/assets_audio_player_web.dart';
import 'package:audioplayers/web/audioplayers_web.dart';
import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  AssetsAudioPlayerWebPlugin.registerWith(registrar);
  AudioplayersPlugin.registerWith(registrar);
  FilePickerWeb.registerWith(registrar);
  ImagePickerPlugin.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
