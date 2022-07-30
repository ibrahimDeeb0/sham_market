// import 'package:cloud_firestore/cloud_firestore.dart';
import '../../general_exports.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: GetBuilder<TestScreenController>(
        init: TestScreenController(),
        builder: (TestScreenController controller) => Scaffold(
          appBar: AppBar(title: const Text('Test Screen')),
          // body: ListView.separated(
          //   itemCount: controller.localListusers.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return controller.localListusers.isEmpty
          //         ? const CircularProgressIndicator()
          //         : ListTile(
          //             title: Text(
          //                 '${controller.localListusers[index][keyUserName]}'),
          //             subtitle:
          //                 Text('${controller.localListusers[index]['phone']}'),
          //           );
          //   },
          //   separatorBuilder: (BuildContext context, int index) =>
          //       const Divider(thickness: 1.0, color: Colors.grey),
          // ),
        ),
      ),
    );
  }
}
