import 'package:flutter/material.dart';
import 'package:task/Colors/custom_colors.dart';

class OTP extends StatefulWidget {
  final int? phone_number;
  const OTP({super.key, this.phone_number});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {

  final otp_key = GlobalKey<FormState>();
  int timer=60;

  final TextEditingController tnt1 = TextEditingController();
  final TextEditingController tnt2 = TextEditingController();
  final TextEditingController tnt3 = TextEditingController();
  final TextEditingController tnt4 = TextEditingController();


  @override
  void dispose() {
    // TODO: implement dispose
    tnt1.dispose();
    tnt2.dispose();
    tnt3.dispose();
    tnt4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () async {
      if(0 < timer) {
        setState(() {
          timer -= 1;
        });
      }
    });
    return Scaffold(
      backgroundColor: custom_colors.color_x1,
      body: Form(
        key: otp_key,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                child: null,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Text('Дугаар баталгаажуулалт',style: TextStyle(fontFamily: 'Inter-Bold', fontSize: 22)),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: 300,
                child: Text('Таны ${widget.phone_number == null ? '99102830' : ''} дугаар луу явуулсан кодыг оруулж баталгаажуулна уу.', style: TextStyle(color: custom_colors.color_x4)),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Container(
                      margin: null,
                      width: MediaQuery.of(context).size.width / 7.5,
                      height: MediaQuery.of(context).size.width / 7.5,
                      child: TextFormField(
                        controller: tnt1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 1,
                              color: custom_colors.color_x7,
                            ),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                        maxLength: 1,
                      ),
                    ),
                  Container(
                    padding: null,
                    width: MediaQuery.of(context).size.width / 7.5,
                    height: MediaQuery.of(context).size.width / 7.5,
                    child: TextFormField(
                      controller: tnt2,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1,
                            color: custom_colors.color_x7,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      maxLength: 1,
                    ),
                  ),
                  Container(
                    padding: null,
                    width: MediaQuery.of(context).size.width / 7.5,
                    height: MediaQuery.of(context).size.width / 7.5,
                    child: TextFormField(
                      controller: tnt3,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1,
                            color: custom_colors.color_x7,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      maxLength: 1,
                    ),
                  ),
                  Container(
                    margin: null,
                    width: MediaQuery.of(context).size.width / 7.5,
                    height: MediaQuery.of(context).size.width / 7.5,
                    child: TextFormField(
                      controller: tnt4,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1,
                            color: custom_colors.color_x7,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      maxLength: 1,
                    ),
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('Код дахин илгээх: 00:${timer.toString().length < 2 ? '0$timer' : timer}', style: TextStyle(color: custom_colors.color_x3)),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 52,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: custom_colors.color_x5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: const Text('Баталгаажуулах', style: TextStyle(color: custom_colors.color_x1)),
                  ),
              ),
            ],
          )),
    );
  }
}
