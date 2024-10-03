import 'package:flutter/material.dart';
import 'package:task/pages/permission/RequestPermission.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final register_form=GlobalKey<FormState>();

  final TextEditingController number_register = TextEditingController();
  final FocusNode number_focus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    number_register.dispose();
    number_focus.dispose();
  }

  bool _limit=false;
  String _phone='';

  @override
  Widget build(BuildContext context) {
    _phone.length==0;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Form(
        key: register_form,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                child: null,
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                child: const Text('БҮРТГЭЛ ҮҮСГЭХ',style: TextStyle(fontFamily: 'SemiBold', fontSize: 20)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 52,
                width: double.infinity,
                child: Opacity(
                    opacity: 0.5,
                    child: TextFormField(
                      onChanged: (input_number){
                         setState(() {
                           _phone=number_register.text;
                           if(input_number.length < 8){
                             _limit = !_limit;
                           }
                         });
                      },
                      controller: number_register,
                      focusNode: number_focus,
                      maxLength: 8,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xffF8F9FA),
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
                margin: const EdgeInsets.fromLTRB(0, 2, 0, 40),
                child: Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: 0.5,
                  children: [
                     const Text('Та манай Үйлчилгээний нөхцөл болон Нууцлалын бодлого -той танилцана уу.', style: TextStyle(fontFamily: 'Inter-Bold', fontSize: 12), textAlign: TextAlign.center),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 52,
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: ElevatedButton(
                  onPressed: _limit ? (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RequestPermission()));
                  } : null,
                    child: const Text('Үргэлжлүүлэх', style: TextStyle(color: Color(0xffffffff)),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff182247),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Opacity(opacity: 0.5, child: Text('ЭСВЭЛ', style: TextStyle(fontSize: 13, fontFamily: 'Inter-Semi-Bold')),),
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
                    child: const Text('Бүртгүүлэх', style: TextStyle(fontSize: 14, fontFamily: 'Inter-Bold', color: Color(0xff182247))),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.12),
                    child: Image.asset('images/cars.jpg'),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
