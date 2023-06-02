import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:passionpals/features/auth/controller/auth_controller.dart";
import "package:passionpals/theme/pallete.dart";
import "package:routemaster/routemaster.dart";

class ProfileDrawer extends ConsumerWidget {
  const ProfileDrawer({super.key});

  void logOut(WidgetRef ref, BuildContext context) {
    ref.read(authControllerProvider.notifier).logout(context);
  }

  void navigateToUserProfile(String uid, BuildContext context) {
    Routemaster.of(context).push('/u/$uid');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user!.profilePic),
              radius: 70,
            ),
            const SizedBox(height: 10),
            Text(
              'u/${user.name}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            ListTile(
                title: const Text("My Profile"),
                leading: const Icon(Icons.person),
                onTap: () => navigateToUserProfile(user.uid, context)),
            ListTile(
              title: const Text("Logout"),
              leading: Icon(Icons.logout, color: Pallete.redColor),
              onTap: () => logOut(ref, context),
            ),
          ],
        ),
      ),
    );
  }
}
