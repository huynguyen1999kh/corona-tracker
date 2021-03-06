import 'package:corona_tracker/corona_tracker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:corona_tracker/globals.dart' as globals;

import 'utils/remote_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

//   for (int i = 1; i < 100; i++) {
//     print("""
// INSERT into "USERS"
// (username, password, fullname, "yearOfBirth", code, phone, citycode, long,lat, address, "isInfected")
// VALUES ('user$i', 'password123', 'Nguyễn Văn A', 1999, 'user$i',
// '0123456789', 79, ${double.parse("10.8" + i.toString() + "599")}, ${double.parse("106.6" + i.toString() + "599")}, 'Hồ Chí Minh', false);
//     """);
//   }
  AppRemoteConfig.instance
      .init()
      .then((value) => 
      globals.baseURL = AppRemoteConfig.instance.host);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(CoronaTracker());
  });
}
