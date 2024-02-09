import 'package:sahil/helper/imports/common_import.dart';

class ClubDescription extends StatefulWidget {
  const ClubDescription({Key? key}) : super(key: key);

  @override
  ClubDescriptionState createState() => ClubDescriptionState();
}

class ClubDescriptionState extends State<ClubDescription> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorConstants.backgroundColor,
      // appBar: CustomNavigationBar(
      //   child: appBar(),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
