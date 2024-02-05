import 'package:sahil/apiHandler/apis/misc_api.dart';
import 'package:sahil/model/faq_model.dart';
import 'package:get/get.dart';

class FAQController extends GetxController {
  RxList<FAQModel> faqs = <FAQModel>[].obs;

  loadFAQs() {
    MiscApi.getFAQ(resultCallback: (result) {
      faqs.value = result;
      update();
    });
  }
}
