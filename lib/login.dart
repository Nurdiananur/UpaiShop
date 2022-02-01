import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:upai/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 5),
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(children: [
            Image.asset(
              'assets/splash.jpg',
              height: 170.0,
              width: 170.0,
            ),
            Text(
              'Войти через социальные сети',
              style: TextStyle(
                color: Colors.black38,
                fontSize: 18,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 51),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/google.png', width: 50),
                      Image.asset('assets/facebook.png', width: 50),
                    ]),
              ),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Phone Number',
                prefix: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text('+996'),
                ),
              ),
              maxLength: 10,
              keyboardType: TextInputType.phone,
            ),
            TextField(
              controller: otpController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'OTP',
                prefix: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(''),
                ),
              ),
              maxLength: 6,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              color: Colors.indigo[900],
              onPressed: () {
                if (otpVisibility) {
                  verifyOTP();
                } else {
                  loginWithPhone();
                }
              },
              child: Text(
                otpVisibility ? "Verify" : "Войти",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text('Не можете войти?',
                          style: TextStyle(
                              fontSize: 12, color: Colors.indigo[900])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 69),
                      child: Text('Зарегистрироваться',
                          style: TextStyle(color: Colors.indigo[900])),
                    ),
                  ],
                ))
          ]),
        ),
      ),
    );
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+996" + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        print("You are logged in successfully");
        Fluttertoast.showToast(
          msg: "You are logged in successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      },
    ).whenComplete(
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }
}
