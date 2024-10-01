import 'package:flutter/material.dart';

class Verify extends StatefulWidget {
  final int? phone_number;
  Verify({super.key, this.phone_number});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

  final verify = GlobalKey<FormState>();
  int timer=60;

  //count time reverse
  void countTime(){
    setState(() {
      timer-=1;
    });
  }



  @override
  void dispose() {
    // TODO: implement dispose
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
        key: verify,
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
                      width: MediaQuery.of(context).size.width / 7.5,
                      height: MediaQuery.of(context).size.width / 7.5,
                      child: TextField(
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
                    child: TextField(
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
                    child: TextField(
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
                    child: TextField(
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
                margin: EdgeInsets.symmetric(vertical: 20),
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
