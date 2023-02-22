




// import 'dart:developer';

// import 'package:flutter/material.dart';

// import 'package:sampurnagroupmobile/intro_screens/main_push_notif.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/timezone.dart' as tz;

// class PushNotif extends StatefulWidget {
//   const PushNotif({super.key});

//   @override
//   State<PushNotif> createState() => _PushNotifState();
// }

// class _PushNotifState extends State<PushNotif> {

//   void showNotification() async {
//     AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
//       "notifications-youtube",
//       "YouTube Notifications",
//       priority: Priority.max,
//       importance: Importance.max
//     );

//     // DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
//     //   presentAlert: true,
//     //   presentBadge: true,
//     //   presentSound: true,
//     // );

//     NotificationDetails notiDetails = NotificationDetails(
//       android: androidDetails,
//       // iOS: iosDetails
//     );

//     DateTime scheduleDate = DateTime.now().add(Duration(seconds: 5));

//     await notificationsPlugin.zonedSchedule(
//       0,
//       "Sample Notification",
//       "This is a notification",
//       tz.TZDateTime.from(scheduleDate, tz.local),
//       notiDetails,
//       uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
//       androidAllowWhileIdle: true,
//       payload: "notification-payload"
//     );
//   }

//   void checkForNotification() async {
//     NotificationAppLaunchDetails? details = await notificationsPlugin.getNotificationAppLaunchDetails();

//     if(details != null) {
//       if(details.didNotificationLaunchApp) {
//         NotificationResponse? response = details.notificationResponse;

//         if(response != null) {
//           String? payload = response.payload;
//           log("Notification Payload: $payload");
//         }
//       }
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     checkForNotification();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: showNotification,
//         child: Icon(Icons.notification_add),
//       ),
//       body: SafeArea(
//         child: Container(),
//       ),
//     );
//   }
// }