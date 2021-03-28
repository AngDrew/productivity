import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:get/route_manager.dart';
import 'package:productivity/src/resources/colors.dart';
import 'package:productivity/src/widgets/appbar.dart';
import 'package:productivity/src/widgets/buttons.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (Duration timeStamp) async {
        print('Initial build took ${timeStamp.inMilliseconds}ms');
        final DateTime start = DateTime.now();
        await initialize();
        print(
          'Initialization took '
          '${DateTime.now().difference(start).inMilliseconds}ms',
        );
      },
    );
  }

  Future<void> initialize() async {
    final Size size = MediaQuery.of(context).size;

    ScreenUtil.init(
      BoxConstraints(
        maxHeight: size.height,
        maxWidth: size.width,
      ),
    );
    // await Future<void>.delayed(const Duration(milliseconds: 100));
    // Get.offNamed<void>('/notes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 16,
            ),
            RoundedButton(
              child: const Text('HMM'),
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            RoundedButton.icon(
              label: const Text('MEH'),
              icon: const Icon(Icons.ac_unit),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
