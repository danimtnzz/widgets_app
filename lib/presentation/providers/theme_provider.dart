import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//Listado de colores inmutable

final colorListProvider = Provider((ref) => colorList);

//un simple entero
final selectedColorProvider = StateProvider((ref) => 0);