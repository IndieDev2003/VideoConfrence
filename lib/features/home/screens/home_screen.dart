// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sliding_drawer/flutter_sliding_drawer.dart';
import 'package:sizer/sizer.dart';
import 'package:waterbus/core/constants/constants.dart';

// Project imports:
import 'package:waterbus/core/navigator/app_navigator.dart';
import 'package:waterbus/core/navigator/app_routes.dart';
import 'package:waterbus/core/utils/appbar/app_bar_title_back.dart';
import 'package:waterbus/features/app/bloc/bloc.dart';
import 'package:waterbus/features/auth/domain/entities/user.dart';
import 'package:waterbus/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:waterbus/features/auth/presentation/screens/login_screen.dart';
import 'package:waterbus/features/home/widgets/enter_code_box.dart';
import 'package:waterbus/features/home/widgets/my_meetings.dart';
import 'package:waterbus/features/profile/presentation/bloc/user_bloc.dart';
import 'package:waterbus/features/profile/presentation/widgets/avatar_card.dart';
import 'package:waterbus/features/profile/presentation/widgets/profile_drawer_layout.dart';
import 'package:waterbus/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SlidingDrawerState> _sideMenuKey =
      GlobalKey<SlidingDrawerState>();

  void _toggleDrawer() {
    _sideMenuKey.toggle();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, auth) {
        if (auth is AuthInitial) return const SizedBox();

        if (auth is AuthFailure) return const LogInScreen();

        return SlidingDrawer(
          key: _sideMenuKey,
          drawerBuilder: (_) => ProfileDrawerLayout(
            onTapItem: (item) {
              _toggleDrawer();

              Future.delayed(const Duration(milliseconds: 300), () {
                switch (item.title) {
                  case "Logout":
                    AppBloc.authBloc.add(LogOutEvent());
                    break;
                  case "Profile":
                    AppNavigator.push(Routes.profileRoute);
                    break;
                  case "Settings":
                    AppNavigator.push(Routes.settingsRoute);
                    break;
                  case "Term & Privacy":
                    AppNavigator.push(Routes.privacyRoute);
                    break;
                  default:
                    break;
                }
              });
            },
          ),
          contentBuilder: (_) => Scaffold(
            appBar: appBarTitleBack(
              context,
              '',
              centerTitle: false,
              isVisibleBackButton: false,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              titleWidget: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  final User user = state is UserGetDone && state.user != null
                      ? state.user!
                      : defaultUser;

                  return Row(
                    children: [
                      SizedBox(width: 6.sp),
                      GestureDetector(
                        onTap: _toggleDrawer,
                        child: user.avatar == null
                            ? CircleAvatar(
                                radius: 15.sp,
                                backgroundColor: Colors.black,
                                backgroundImage: AssetImage(
                                  Assets.images.imgAppLogo.path,
                                ),
                              )
                            : AvatarCard(
                                urlToImage: user.avatar!,
                                size: 30.sp,
                              ),
                      ),
                      SizedBox(width: 10.sp),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            user.fullName,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Text(
                            '@${user.userName}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 10.sp,
                                ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              actions: [
                Container(
                  width: 36.sp,
                  height: 36.sp,
                  margin: EdgeInsets.only(right: 16.sp),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    Assets.icons.icNewMeeting.path,
                    height: 22.sp,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            body: ColoredBox(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Column(
                children: [
                  SizedBox(height: 10.sp),
                  EnterCodeBox(
                    onTap: () {
                      AppNavigator.push(Routes.enterCodeRoute);
                    },
                  ),
                  SizedBox(height: 12.sp),
                  const Expanded(
                    child: MyMeetings(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
