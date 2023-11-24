import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:socle/core/presentation/blocs/navigation/navigation_cubit.dart';

void main() {
  late NavigationCubit navigationCubit;

  setUp(() {
    navigationCubit = NavigationCubit();
  });

  blocTest<NavigationCubit, NavigationState>(
    'Navigate to "movies"',
    build: () => navigationCubit,
    act: (cubit) => cubit.getNavBarItem(NavbarItem.movies),
    expect: () => [
      const NavigationState(NavbarItem.movies),
    ],
  );

  blocTest<NavigationCubit, NavigationState>(
    'Navigate to "favorites"',
    build: () => navigationCubit,
    act: (cubit) => cubit.getNavBarItem(NavbarItem.favorites),
    expect: () => [
      const NavigationState(NavbarItem.favorites),
    ],
  );

  blocTest<NavigationCubit, NavigationState>(
    '"Movies" is the first item',
    build: () => navigationCubit,
    act: (cubit) => cubit.getNavBarItemFromIndex(0),
    expect: () => [
      const NavigationState(NavbarItem.movies),
    ],
  );

  blocTest<NavigationCubit, NavigationState>(
    '"Favorites" is the second item',
    build: () => navigationCubit,
    act: (cubit) => cubit.getNavBarItemFromIndex(1),
    expect: () => [
      const NavigationState(NavbarItem.favorites),
    ],
  );
}
