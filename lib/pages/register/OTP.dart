import 'package:flutter/material.dart';

class OTP extends StatefulWidget {
  final int? phone_number;
  OTP({super.key, this.phone_number});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {

  final otp_key = GlobalKey<FormState>();
  int timer=60;

  //count time reverse
  void countTime(){
    setState(() {
      timer-=1;
    });
  }

  final TextEditingController tnt1 = TextEditingController();
  final TextEditingController tnt2 = TextEditingController();
  final TextEditingController tnt3 = TextEditingController();
  final TextEditingController tnt4 = TextEditingController();

  final FocusNode _f1 = FocusNode();
  final FocusNode _f2 = FocusNode();
  final FocusNode _f3 = FocusNode();
  final FocusNode _f4 = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    tnt1.dispose();
    tnt2.dispose();
    tnt3.dispose();
    tnt4.dispose();
    _f1.dispose();
    _f2.dispose();
    _f3.dispose();
    _f4.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffff),
      body: Form(
        key: otp_key,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                child: null,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    child: Text('Дугаар баталгаажуулалт',style: TextStyle(fontFamily: 'Inter-Bold', fontSize: 22)),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: 300,
                child: Text('Таны ${widget.phone_number == null ? '99102830' : ''} дугаар луу явуулсан кодыг оруулж баталгаажуулна уу.'),
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
                        focusNode: _f1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xffE1E3E8),
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
                      focusNode: _f2,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xffE1E3E8),
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
                      focusNode: _f3,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xffE1E3E8),
                          ),
                        ),
                        border: const OutlineInputBorder(),
                      ),
                      maxLength: 1,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 7.5,
                    height: MediaQuery.of(context).size.width / 7.5,
                    child: TextFormField(
                      controller: tnt4,
                      focusNode: _f4,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(0xffE1E3E8),
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
                     Text('Код дахин илгээх: 00:$timer'),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 52,
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(onPressed: (){},
                    child: const Text('Баталгаажуулах', style: TextStyle(color: Color(0xffffffff)),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff182247),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
              ),
            ],
          )),
    );
  }
}
