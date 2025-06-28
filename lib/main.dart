import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'modules/views/add_card_view.dart';
import 'modules/views/payment_methods_view.dart';
import 'modules/views/profile_details_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(VisaCardApp());
}
class VisaCardApp extends StatelessWidget {
  const VisaCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Visa Card App',
      initialRoute: PaymentMethodsView.routeName,
      getPages: [
        GetPage(name: AddCardView.routeName, page: () => const AddCardView()),
        GetPage(name: PaymentMethodsView.routeName, page: () => const PaymentMethodsView()),
        GetPage(name: ProfileDetailsView.routeName, page: () => const ProfileDetailsView()),
      ],
    );
  }
}
