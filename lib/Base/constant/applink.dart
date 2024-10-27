class Applink {
  //Server
  static const String serverlink = "http://10.0.2.2/fixme";
  //test
  static const String test = "$serverlink/test.php";

  //---------------------Admin-----------------------
  //login php
  static const String adminlogin = "$serverlink/Admin/adminAuth/login.php";
  //admin pages php
  static const String dispalyworkerifon =
      "$serverlink/Admin/adminworkerinfo.php";
  static const String dispalyContractorinfo =
      "$serverlink/Admin/admincontractorinfo.php";
  static const String acceptWorkerInSystem =
      "$serverlink/Admin/adminacceptworker.php";
  static const String deleteWorker = "$serverlink/Admin/admindeletworker.php";
  static const String acceptContractor =
      "$serverlink/Admin/adminacceptcontractor.php";
  static const String deleteContractor =
      "$serverlink/Admin/admindeletecontractor.php";
  //---------------------customer-----------------------
  // ---------------auth
  static const String customerSignin = "$serverlink/User/userAuth/signin.php";
  static const String customerVerifySignin =
      "$serverlink/User/userAuth/verifycodesign.php";
  static const String customerLogin = "$serverlink/User/userAuth/login.php";
  static const String customerErOpenAccount =
      "$serverlink/User/userAuth/flseattempts.php";
  static const String customerVerifycodeErOpenAccount =
      "$serverlink/User/userAuth/reopenaccunt.php";
  static const String customerresendverficode =
      "$serverlink/User/userAuth/resendverficode.php";
  //-----forget password
  static const String customerforgetpass =
      "$serverlink/User/userAuth/forgetpassword/checkemail.php";
  static const String customerforgetpassverifycode = "$serverlink/User/userAuth/forgetpassword/verifycode.php";
  static const String customerrestpass = "$serverlink/User/userAuth/forgetpassword/restpassword.php";


  //----------------home
  static const String customerHome = "$serverlink/User/home.php";
  static const String customerWorkerCate = "$serverlink/User/workerview.php";
  static const String resetuseratmmpts =
      "$serverlink/User/resetuseratmmpts.php";
  //search
  static const String customerSearch = "$serverlink/User/searchpage.php";

  //Address
  static const String customerAddAddress =
      "$serverlink/User/address/userinseraddress.php";
  static const String customerViewAddress =
      "$serverlink/User/address/userviewaddress.php";
  static const String customerDeleteaddress =
      "$serverlink/User/address/userdeleteaddress.php";

  //Request
  static const String userinsertRequset =
      "$serverlink/User/request/insertrequest.php";
  static const String usercheckout = "$serverlink/User/request/checkout.php";

  //-------------------------Worker------------------------------------
  //----------------------auth
  static const String workerLogin = "$serverlink/Worker/workerAuth/login.php";

  //testchat
  static const String testchat = "$serverlink/testchatuserhome.php";
  static const String testgetmasseges = "$serverlink/testgetmessage.php";
  static const String testchatadd = "$serverlink/testchatmessages.php";
}
