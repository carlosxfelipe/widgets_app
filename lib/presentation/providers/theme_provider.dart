import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);

final isDarkmodeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);

// objeto do tipo AppTheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

// controller
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toogleDarkMode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
