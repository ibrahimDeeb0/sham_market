// import 'package:flutter_svg/svg.dart';
import '../../general_exports.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  const Header({
    this.withoutBackGround = false,
    super.key,
  });

  final bool withoutBackGround;

  @override
  //* implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + DEVICE_HEIGHT * 0.012); //0.012  //0.062
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        borderBottomWidth: 1.5,
        borderBottomColor: Color(AppColors.grey).withOpacity(0.2),
      ),
      child: AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarHeight + DEVICE_HEIGHT * 0.012,
        backgroundColor:
            withoutBackGround ? Colors.transparent : Color(AppColors.white),
        centerTitle: true,
        title: CommonText(
          text: 'الشام ماركت',
          style: txtHeading,
        ),
        // SvgPicture.asset(
        //   appLogo2,
        //   width: DEVICE_WIDTH * 0.2,
        //   height: DEVICE_WIDTH * 0.2,
        //   color: Color(AppColors.prime),
        // ),

        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(AppColors.colorBlack),
              size: 32,
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: SizedBox(),
        ),
      ),
    );
  }
}
