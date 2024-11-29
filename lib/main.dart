import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tawkto/flutter_tawk.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color(0xffDC562B),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Customer Service App',
      debugShowCheckedModeBanner: false,
      home: CustomerServiceScreen(),
    );
  }
}

class CustomerServiceScreen extends StatefulWidget {
  const CustomerServiceScreen({super.key});

  @override
  State<CustomerServiceScreen> createState() => _CustomerServiceScreenState();
}

class _CustomerServiceScreenState extends State<CustomerServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tawk(
        directChatLink:
            'https://tawk.to/chat/6749269d4304e3196aea2199/1idqrtm91',
        visitor: TawkVisitor(
          name: 'Mahmoud Elsayed',
          email: 'mahmoudelsayed.dev@gmail.com',
        ),
        placeholder: const Center(
          child: Text('Loading...'),
        ),
      ),
    );
  }
}
