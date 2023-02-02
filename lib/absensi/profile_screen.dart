import 'dart:io';

import 'package:sampurnagroupmobile/absensi/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileScreen extends StatefulHookConsumerWidget {
  const ProfileScreen({super.key});
  static const routeName = 'profile-screen';

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final xFileState = ref.watch(xFileProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Image.file(
          File(xFileState.path),
        ),
      ),
    );
  }
}
