import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//Listado de colores inmutable

final colorListProvider = Provider((ref) => colorList);

//un simple entero
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme>{
  //STATE=Estado = new AppTheme();
  // ThemeNotifier(super.state);
  ThemeNotifier(): super(AppTheme());
  
  void toggleDarkMode(){
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }
  void changeColorIndex(int colorIndex){

  }

}