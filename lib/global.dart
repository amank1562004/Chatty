import 'package:chatty/common/services/services.dart';
import 'package:chatty/common/store/store.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'firebase_option.dart';

class Global{
  static Future init() async{
    WidgetsFlutterBinding.ensureInitialized();
    // var DefaultFirebaseOptions;
    await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
    );
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}

