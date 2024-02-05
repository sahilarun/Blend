import 'package:sahil/helper/imports/common_import.dart';
import 'package:sahil/model/post_model.dart';
import '../../apiHandler/apis/post_api.dart';

class SinglePostDetailController extends GetxController {
  Rx<PostModel?> post = Rx<PostModel?>(null);
  bool isLoading = false;

  clear() {
    post.value = null;
    isLoading = false;
  }

  getPostDetail(int postId) async {
    isLoading = true;
    await PostApi.getPostDetail(postId, resultCallback: (result) {
      post.value = result;
      isLoading = false;
      update();
    });
  }

  void likeUnlikePost(BuildContext context) {
    post.value!.isLike = !post.value!.isLike;
    post.value!.totalLike = post.value!.isLike
        ? (post.value!.totalLike) + 1
        : (post.value!.totalLike) - 1;

    PostApi.likeUnlikePost(like: post.value!.isLike, postId: post.value!.id);

    update();
  }
}
