import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/account/widgets/arraw_back_button.dart';
import 'package:flutter_application_1/features/account/widgets/sign_out_button.dart';
import 'package:flutter_application_1/features/account/widgets/user_information.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_application_1/features/account/bloc/account_bloc.dart';

import '../../../generated/l10n.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();

  static const routeName = 'account';
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountBloc()..add(LoadAccountInfoEvent()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: const ArrawBackButton(),
          title: Text(S.of(context).account),
          actions: const [
            SignOutButton(),
          ],
        ),
        body: Center(
          child: BlocConsumer<AccountBloc, AccountState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is AccountLoading) {
                return const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                );
              } else if (state is AccountError) {
                return Text(state.message);
              } else if (state is AccountLoaded) {
                return UserInformation(
                  email: state.email,
                  firstName: state.firstName,
                  lastName: state.lastName,
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
