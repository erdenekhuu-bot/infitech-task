import 'package:flutter/material.dart';
import 'package:task/pages/register/Register.dart';
import 'package:task/Colors/custom_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final login_form=GlobalKey<FormState>();

  final TextEditingController number = TextEditingController();

  @override
  void dispose() {
    number.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: custom_colors.color_x1,
      body: Form(
        key: login_form,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                child: null,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: const Text('НЭВТРЭХ',style: TextStyle(fontFamily: 'SemiBold', fontSize: 20)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text('Та өөрийн бүртгэлээр нэвтрэнэ үү', style: TextStyle(color: custom_colors.color_x4, fontFamily: 'Inter')),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 52,
                width: double.infinity,
                child: const Opacity(
                    opacity: 0.5,
                  child: TextField(
                    maxLength: 8,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: custom_colors.color_x6,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelStyle: TextStyle(
                          fontFamily: 'Inter'),
                      labelText: 'Утасны дугаар',
                      counterText: '',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    autofocus: false,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 52,
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Register()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: custom_colors.color_x5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                ),
                  child: const Text('Нэтврэх', style: TextStyle(color: custom_colors.color_x1))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Opacity(opacity: 0.5, child: Text('ЭСВЭЛ', style: TextStyle(fontSize: 13, fontFamily: 'Inter-Semi-Bold'))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    child: Text('Та бүртгэлгүй юу?', style: TextStyle(fontFamily: 'Inter', fontSize: 14)),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text('Бүртгүүлэх', style: TextStyle(fontSize: 14, fontFamily: 'Inter-Bold', color: custom_colors.color_x5)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.16),
                    child: Image.asset('images/cars.jpg'),
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}
