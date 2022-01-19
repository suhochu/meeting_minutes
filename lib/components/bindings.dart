import 'package:get/get.dart';
import 'package:meeting_minutes/models/meeting_minute_controller.dart';
import 'package:meeting_minutes/models/meeting_resource_controller.dart';
import 'package:meeting_minutes/models/user_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MeetingMinuteController());
    Get.put(MeetingSourceController());
    Get.put(UserController());

  }
}
