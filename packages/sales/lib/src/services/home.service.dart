import 'package:sales/src/types/home.type.dart';
import 'package:shared/shared.dart';

final logger = Logger(logName: "HomeService");

class HomeService {
  Future<IPost> getTodos(String id) async {
    try {
      var respose = await dioInstance.get("posts/$id");
      return IPost(
          id: respose.data['id'],
          userId: respose.data['userId'],
          title: respose.data['title']);
    } catch (error) {
      logger.info("ERROR $error");
      rethrow;
    }
  }
}
