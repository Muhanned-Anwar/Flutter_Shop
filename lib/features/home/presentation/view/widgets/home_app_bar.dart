import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
import '../../../../../core/constants.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_font_sizes.dart';
import '../../../../../core/resources/manager_icon_sizes.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_text_styles.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const HomeAppBar({
    super.key,
    required this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ManagerColors.transparent,
      elevation: Constants.appBarElevation,
      title: Text(
        ManagerStrings.home.toUpperCase(),
        style: getBoldTextStyle(
          fontSize: ManagerFontSizes.s18,
        ),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            SlideDrawer.of(context)?.toggle();
          },
          icon: const Icon(
            Icons.menu,
            size: ManagerIconSizes.s30,
          ),
        );
      }),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.qr_code_scanner,
            size: ManagerIconSizes.s30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.remove_shopping_cart,
            size: ManagerIconSizes.s30,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
