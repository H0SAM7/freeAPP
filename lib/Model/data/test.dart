import 'package:project2/Base/class/database.dart';
import 'package:project2/Base/constant/applink.dart';

class Test {
  Database database = Database();
  Test(this.database);
  getData(String licennumber , String username , String firstname , String lastname , String email , String contactor_email , String password , String categoties) async {
    var data = await database.postData(Applink.test, {"licennumber" : licennumber,
    "username" : username,
    "firstname" : firstname ,
    "lastname" : lastname,
    "email" : email ,
    "contactor_email" : contactor_email,
    "password" : password,
    "categoties" : categoties

     });
    return data.fold((l) => l, (r) => r);
  }
}
