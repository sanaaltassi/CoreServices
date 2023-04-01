
import 'package:corereservation/Style/colorstyle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 // States state = States.initial;
  final _formKey = GlobalKey<FormState>();
  bool passVisibility = true;
  var errorMessage = "";


  @override
  Widget build(BuildContext context) {
   // var provider = Provider.of<LoginStates>(context);
    //state = provider.state;
    return Scaffold(
     // body: buildBody(),
    );
  }
  // buildBody() {
  //   switch (state) {
  //     case States.initial:
  //       return  buildLoginPage();
  //     case States.loading:
  //       return const Center(child: CircularProgressIndicator());
  //     case States.failed:
  //       return buildLoginPage();
  //     case States.succeeded:
  //     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const AccountPage()));
  //       return const FirstPage();
  //   }
  // }
  buildLoginPage(){
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            buildLoginHeader(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child:  buildLoginForm(),
            ),

          ],
        ),
      ),
    );

  }
  buildLoginHeader(){
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 50),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("images/logpic.png"),
            ),
          ),
        ),
        Text(
          "Welcome Again!",
          style: TextStyle(
              color: ColorStyle.text,
              fontWeight: FontWeight.bold,
            //  fontSize: bigTextFontSize
          ),
        ),
        Text(
          "We are happy to see you again!",
          style: TextStyle(
              color: ColorStyle.blackText,
             // fontSize: subTextFontSize
          ),
        ),
      ],
    );
  }
  buildLoginForm(){
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.33,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: TextStyle(color: ColorStyle.blackText),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.75,
                height: MediaQuery.of(context).size.height*0.05,
                child: Form(child: TextFormField(
                  controller: TextEditingController(),
                  validator: validateEmail,
                  decoration:  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: ColorStyle.text
                        )
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal: 10),
                    hintText: "Add email Here",hintStyle: TextStyle(color: ColorStyle.text),
                    enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: ColorStyle.text)
                    ),
                  ),
                ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: TextStyle(color: ColorStyle.text),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.05,
                child: TextFormField(
                  obscureText: passVisibility,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorStyle.text)),
                    suffixIcon: IconButton(
                      icon:
                      Icon(passVisibility ? Icons.visibility_off : Icons.visibility),
                      color: ColorStyle.text,
                      onPressed: () {
                        setState(() {
                          passVisibility = !passVisibility;
                        });
                      },
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    hintText: "************",
                    hintStyle: TextStyle(color: ColorStyle.text),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorStyle.text)),
                  ),
                ),
              ),
            ],
          ),

          Text(
            'Forget Password?',
            style: TextStyle(color: ColorStyle.blackText),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.05,
            child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorStyle.available,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
                //onPressed: () { LoginStates().login(TextEditingController().text, "password"); },
                onPressed: () {  },
                child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: ColorStyle.whiteText,
                          fontWeight: FontWeight.bold),
                    ))),
          ),
          Text(
            //state == States.failed ?
             errorMessage = "Login Faild" ,

            style: TextStyle(color: ColorStyle.error),
          )
        ],
      ),
    );
  }
  String? validateEmail(String? email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (email != null && regExp.hasMatch(email)) {
      return null;
    } else {
      const String errorText = 'Please enter a valid email';
      return errorText;
    }
  }
}
