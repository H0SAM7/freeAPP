import 'package:get/get.dart';
import 'package:project2/Base/middelwere/middelware.dart';
import 'package:project2/View/logopage.dart';
import 'package:project2/View/screen/Admin/adminfirstpage.dart';
import 'package:project2/View/screen/Admin/adminlogin.dart';
import 'package:project2/View/screen/Admin/contractordetailsinfo.dart';
import 'package:project2/View/screen/Admin/contractorpage.dart';
import 'package:project2/View/screen/Admin/workerdetalisinfo.dart';
import 'package:project2/View/screen/Admin/workerpage.dart';
import 'package:project2/View/screen/Contactor/authContarctor/foregetPassword/foregetpassword.dart';
import 'package:project2/View/screen/Contactor/authContarctor/foregetPassword/restpassword.dart';
import 'package:project2/View/screen/Contactor/authContarctor/foregetPassword/verifycoderestpass.dart';
import 'package:project2/View/screen/Contactor/authContarctor/signin.dart';
import 'package:project2/View/screen/User/address/addaddress.dart';
import 'package:project2/View/screen/User/address/addresdetails.dart';
import 'package:project2/View/screen/User/address/addresspage.dart';
import 'package:project2/View/screen/User/authUser/foregetPassword/foregetpassword.dart';
import 'package:project2/View/screen/User/authUser/foregetPassword/restpassword.dart';
import 'package:project2/View/screen/User/authUser/foregetPassword/verifycoderestpass.dart';
import 'package:project2/View/screen/User/authUser/login.dart';
import 'package:project2/View/screen/User/authUser/successfulreopenaccunt.dart';
import 'package:project2/View/screen/User/authUser/useremailreopentaccount.dart';
import 'package:project2/View/screen/User/authUser/userverfiycodereopen.dart';
import 'package:project2/View/screen/User/authUser/verifycodesign.dart';
import 'package:project2/View/screen/User/requests/checkoutpage.dart';
import 'package:project2/View/screen/User/screen.dart';
import 'package:project2/View/screen/User/searchpage.dart';
import 'package:project2/View/screen/Worker/authWorker/foregetPassword/foregetpassword.dart';
import 'package:project2/View/screen/Worker/authWorker/foregetPassword/restpassword.dart';
import 'package:project2/View/screen/Worker/authWorker/foregetPassword/verifycoderestpass.dart';
import 'package:project2/View/screen/Worker/authWorker/login.dart';
import 'package:project2/View/screen/Worker/authWorker/verifycodesign.dart';
import 'package:project2/View/screen/User/authUser/foregetPassword/successrestpassword.dart';
import 'package:project2/View/screen/Contactor/authContarctor/login.dart';
import 'package:project2/View/screen/Contactor/authContarctor/verifycodesign.dart';
import 'package:project2/View/screen/User/authUser/signin.dart';
import 'package:project2/View/screen/Worker/authWorker/signin.dart';
import 'package:project2/View/screen/firstpage.dart';
import 'package:project2/View/screen/languages.dart';
import 'package:project2/View/screen/User/workercat.dart';
import 'package:project2/homechattest.dart';
import 'package:project2/testchat.dart';
import 'package:project2/View/test.dart';
import 'package:project2/View/screen/User/workerdetailsinfo.dart';

List<GetPage<dynamic>> getPages = [
  //أول صفحه يبدأ من عندها التطبيق
  GetPage(name: "/", page: () => const LogoScreen()),
  GetPage(name: "/firstpage", page: () => const FirstPage()),
  // --------------User-----------------
  //---------UserAuth
  GetPage(name: "/usersignin", page: () => const UserSignIn()),
  GetPage(name: "/userlogin", page: () => const UserLogin()),
  GetPage(name: "/userverifycodesign", page: () => const UserVerifyCode()),
  GetPage(
      name: "/useremailreOpenaccunt",
      page: () => const UserEmailReOpenAccunt()),
  GetPage(
      name: "/userverifycodereopenaccount",
      page: () => const UserVerifyCodeReOpenAccount()),
  GetPage(
      name: "/successreopenaccount", page: () => const SuccessReOpenAccount()),

  //--UserForgetPassword
  GetPage(name: "/userforgetpassword", page: () => const UserForgetPassword()),
  GetPage(
      name: "/userverifycodepass",
      page: () => const UserVerifyCodeRestPassword()),
  GetPage(name: "/userrestpassword", page: () => const UserRestPassword()),
  GetPage(name: "/successrestpass", page: () => const SuccessRestPassword()),
  //----------UserHome
  GetPage(name: "/userHome", page: () => const Screen()),
  GetPage(name: "/workercategories", page: () => const WorkerCategories()),
  GetPage(
      name: "/userworkerdetailsinfo",
      page: () => const UserWorkerDetailsInfo()),
  //-------------search
  GetPage(name: "/searchpage", page: () => const SearchPage()),
  //--------------Address
  GetPage(name: "/addresspage", page: () => const AddressPage()),
  GetPage(name: "/addaddress", page: () => const AddAddress()),
  GetPage(name: "/addressdetails", page: () => const AddressDetails()),
  //--------------Request
  GetPage(name: "/checkoutpage", page: () => const CheckOutPage()),

  // --------------Worker-----------------
  //WorkerAuth
  GetPage(name: "/workersignin", page: () => const WorkerSignIn()),
  GetPage(name: "/workerlogin", page: () => const WorkerLogin()),
  GetPage(name: "/workerverifycodesign", page: () => const WorkerVerifyCode()),
  //workerForgetPassword
  GetPage(
      name: "/workerforgetpassword", page: () => const WorkerForegetPassword()),
  GetPage(
      name: "/workerverifycodeforgetpass",
      page: () => const WorkerVerifyCodeRestPassword()),
  GetPage(name: "/workerrestpassword", page: () => const WorkerRestPassword()),
  // --------------Contracto-----------------
  //ContractorAuth
  GetPage(name: "/contractorsignin", page: () => const ContractorSignIn()),
  GetPage(name: "/contractorlogin", page: () => const ContactorLogin()),
  //ContractorForgetPassword
  GetPage(
      name: "/contractorforgetpassword",
      page: () => const ContactorForgetPassword()),
  GetPage(
      name: "/contractorverifycodepass",
      page: () => const ContractorVerifyCodeRestPassword()),
  GetPage(
      name: "/contractorrestpassword",
      page: () => const ContactorRestPassword()),
  GetPage(
      name: "/contractorverifycodesign",
      page: () => const ContactorVerifyCode()),
  //---------------------Admin---------------
  // adminAuth

  //adminHome
  GetPage(name: "/adminfirstpage", page: () => const AdminFirstPage()),
  GetPage(name: "/adminworkerpage", page: () => const AdminHome()),
  GetPage(name: "/admincontractorpage", page: () => const ContractorPage()),
  GetPage(
      name: "/adminworkerdetailsinfo", page: () => const WorkerDetailsInfo()),
  GetPage(
      name: "/admincontractordetailsinfo",
      page: () => const ContractorDetailsInfo()),

  // Test Pages
  GetPage(
    name: "/usercahthome",
    page: () => const HomeChat(),
  ),
  GetPage(name: "/chat1", page: () => ChatTest()),
];
