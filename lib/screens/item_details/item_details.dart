import '../../general_exports.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: CommonContainer(
        style: CommonContainerModel(),
        child: Column(
          children: <Widget>[
            CommonContainer(
              style: CommonContainerModel(
                height: 0.5,
                paddingVertical: 0.02,
              ),
              child: Image.asset(image2),
            ),
            CommonContainer(
              style: CommonContainerModel(
                paddingVertical: 0.02,
              ),
              child: CommonText(
                text: 'أسم المنتج ',
                style: appTextStyles.h2MediumStyleBlack(),
                bottomChild: CommonText(
                  text: 'تفاصل المنتج',
                  style: appTextStyles.h3MediumStyleBlack(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
