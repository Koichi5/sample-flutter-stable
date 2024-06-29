import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_flutter_stable/responsive/responsive_sample.dart';

part 'get_device_type_provider.g.dart';

// @riverpod
// DeviceType getDeviceTypeByMediaQuery(
//   GetDeviceTypeByMediaQueryRef ref,
//   BuildContext context,
//   Orientation orientation,
// ) {
//   final isPortrait = orientation == Orientation.portrait;
//   final isTablet = isPortrait &&
//           MediaQuery.of(context).size.width > Breakpoint.small.width ||
//       !isPortrait && MediaQuery.of(context).size.width > Breakpoint.large.width;
//   if (isTablet) {
//     return isPortrait ? DeviceType.tabletPortrait : DeviceType.tabletLandscape;
//   } else {
//     return isPortrait ? DeviceType.phonePortrait : DeviceType.phoneLandscape;
//   }
// }

@riverpod
DeviceType getDeviceTypeByMediaQuery(GetDeviceTypeByMediaQueryRef ref, MediaQueryData mediaQuery) {
  final isPortrait = mediaQuery.orientation == Orientation.portrait;
  final isTablet = isPortrait &&
          mediaQuery.size.width > Breakpoint.small.width ||
      !isPortrait && mediaQuery.size.width > Breakpoint.large.width;
  if (isTablet) {
    return isPortrait ? DeviceType.tabletPortrait : DeviceType.tabletLandscape;
  } else {
    return isPortrait ? DeviceType.phonePortrait : DeviceType.phoneLandscape;
  }
}