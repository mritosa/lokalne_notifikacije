import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ServisNotifikacija{
  final FlutterLocalNotificationsPlugin _pluginNotifikacija = FlutterLocalNotificationsPlugin();

  final AndroidInitializationSettings _postavkeInicijalizacijeAndroid =
      AndroidInitializationSettings('ic_launcher');

  void inicijalizirajNotifikacije() async {
    InitializationSettings postavkeInicijalizacije = InitializationSettings(
      android: _postavkeInicijalizacijeAndroid,
    );

    await _pluginNotifikacija.initialize(postavkeInicijalizacije);
  }
  void posaljiNotifikaciju(String title, String body) async{
    NotificationDetails detaljiNotifikacije = NotificationDetails();

    AndroidNotificationDetails detaljiNotifikacijeAndroid = AndroidNotificationDetails(
        'channelId', 'channelName',importance: Importance.high,priority: Priority.high
    );

     await _pluginNotifikacija.show(
        1,
        title,
        body,
        detaljiNotifikacije);
  }
}