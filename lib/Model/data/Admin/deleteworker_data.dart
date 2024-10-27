import 'package:project2/Base/class/database.dart';
import 'package:project2/Base/constant/applink.dart';

class WorkerDelete {
  Database database = Database();
 WorkerDelete(this.database);
  deleteWorker(String email) async {
    var data = await database.postData(Applink.deleteWorker, {"email" : email});
    return data.fold((l) => l, (r) => r);
  }
}