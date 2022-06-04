import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  const CustomAppBar({Key? key, required this.appBar}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leadingWidth: 45,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: InkWell(
          onTap: () => Scaffold.of(context).openEndDrawer(),
          radius: 30,
          borderRadius: BorderRadius.circular(50),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Image.asset(
            'assets/icons/menu.png',
          ),
        ),
      ),
      actions: [
        _ActionButton(
          assetsName: 'shopping_cart',
          onPressed: () {},
        ),
        SizedBox(width: 3.w),
        _ActionButton(
          assetsName: 'notification',
          onPressed: () {},
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String assetsName;
  final Function()? onPressed;
  const _ActionButton({Key? key, required this.assetsName, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 18),
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Image.asset(
              'assets/icons/$assetsName.png',
              width: 20,
            ),
            assetsName != 'notification'
                ? const SizedBox()
                : Image.asset(
                    'assets/icons/red_dot.png',
                    width: 10,
                  ),
          ],
        ),
      ),
    );
  }
}
