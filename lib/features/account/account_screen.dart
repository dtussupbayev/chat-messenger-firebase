import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'account_controller.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();

  static const routeName = 'account';
}

class _AccountScreenState extends State<AccountScreen> {
  final accountController = AccountController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const ArrawBackButton(),
        title: Text(S.of(context).account),
        actions: [
          SignOutButton(accountController: accountController),
        ],
      ),
      body: Center(
        child: FutureBuilder<Map<String, dynamic>?>(
          future: accountController.getUserInfo(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(strokeWidth: 2),
              );
            } else if (snapshot.hasError) {
              return Text('${S.of(context).error}:${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data == null) {
              return Text(S.of(context).userInformationNotAvailable);
            } else {
              return UserInformation(accountController: accountController, snapshot: snapshot);
            }
          },
        ),
      ),
    );
  }
}

class UserInformation extends StatelessWidget {
  final AsyncSnapshot<Map<String, dynamic>?> snapshot;
  const UserInformation({
    super.key,
    required this.accountController,
    required this.snapshot,
  });

  final AccountController accountController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${S.of(context).yourEmail}${accountController.user?.email}'),
        Text('${S.of(context).firstName}${snapshot.data!['firstName']}'),
        Text('${S.of(context).lastName}${snapshot.data!['lastName']}'),
        TextButton(
          onPressed: () => accountController.signOut(context),
          child: Text(S.of(context).signOut),
        ),
      ],
    );
  }
}

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    super.key,
    required this.accountController,
  });

  final AccountController accountController;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.logout),
      tooltip: 'Sign Out Icon',
      onPressed: () => accountController.signOut(context),
    );
  }
}

class ArrawBackButton extends StatelessWidget {
  const ArrawBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
    );
  }
}
