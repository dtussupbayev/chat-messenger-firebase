import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realtime_chat_app/features/profile/widgets/arraw_back_button.dart';
import 'package:realtime_chat_app/features/profile/widgets/sign_out_button.dart';
import 'package:realtime_chat_app/features/profile/widgets/user_information.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:realtime_chat_app/features/profile/bloc/profile_bloc.dart';

import '../../../generated/l10n.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();

  static const routeName = 'profile';
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc()..add(LoadProfileInfoEvent()),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: const ArrawBackButton(),
          title: Text(S.of(context).profile),
          actions: const [
            SignOutButton(),
          ],
        ),
        body: Center(
          child: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is ProfileLoading) {
                return const CupertinoActivityIndicator();
              } else if (state is ProfileError) {
                return Text(state.message);
              } else if (state is ProfileLoaded) {
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
