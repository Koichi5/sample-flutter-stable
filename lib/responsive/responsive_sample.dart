import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_flutter_stable/responsive/provider/get_device_type_provider.dart';

enum Breakpoint {
  small,
  large;

  double get width {
    switch (this) {
      case Breakpoint.small:
        return 680;
      case Breakpoint.large:
        return 1048;
    }
  }
}

enum DeviceType {
  phonePortrait,
  phoneLandscape,
  tabletPortrait,
  tabletLandscape,
}

extension DeviceTypeExtension on DeviceType {
  String get name {
    switch (this) {
      case DeviceType.phonePortrait:
        return 'iPhone 縦向き';
      case DeviceType.phoneLandscape:
        return 'iPhone 横向き';
      case DeviceType.tabletPortrait:
        return 'iPad 縦向き';
      case DeviceType.tabletLandscape:
        return 'iPad 横向き';
    }
  }
}

// class ResponsiveSample extends StatelessWidget {
//   const ResponsiveSample({super.key});

//   DeviceType getDeviceTypeByMediaQuery(BuildContext context) {
//     final isPortrait =
//         MediaQuery.of(context).orientation == Orientation.portrait;
//     final isTablet = isPortrait &&
//             MediaQuery.of(context).size.width > Breakpoint.small.width ||
//         !isPortrait &&
//             MediaQuery.of(context).size.width > Breakpoint.large.width;

//     if (isTablet) {
//       return isPortrait
//           ? DeviceType.tabletPortrait
//           : DeviceType.tabletLandscape;
//     } else {
//       return isPortrait ? DeviceType.phonePortrait : DeviceType.phoneLandscape;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final deviceType = getDeviceTypeByMediaQuery(context);

//     String type;
//     switch (deviceType) {
//       case DeviceType.phonePortrait:
//         type = deviceType.name;
//         break;
//       case DeviceType.phoneLandscape:
//         type = deviceType.name;
//         break;
//       case DeviceType.tabletPortrait:
//         type = deviceType.name;
//         break;
//       case DeviceType.tabletLandscape:
//         type = deviceType.name;
//         break;
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'レスポンシブ対応',
//         ),
//       ),
//       body: Center(
//         child: Text(
//           type,
//           style: const TextStyle(fontSize: 25),
//         ),
//       ),
//     );
//   }
// }

class ResponsiveSample extends ConsumerWidget {
  const ResponsiveSample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final deviceType = ref.watch(getDeviceTypeByMediaQueryProvider(mediaQuery));
    String type = deviceType.name;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'レスポンシブ対応',
        ),
      ),
      body: Center(
        child: Text(
          type,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
