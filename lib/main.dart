import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tugas1prakpam/constans.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      )
  );
}


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.pink), //ganti warna appbar dan button primary
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xffffffff),
          appBar: AppBar(
              backgroundColor: textColor,
              leading: Icon(Icons.compare_arrows),
              title: Text("Halaman Login")
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Image.network("https://awsimages.detik.net.id/community/media/visual/2022/03/15/kenapa-logo-halal-diganti-ada-perpindahan-wewenang-dari-mui-ke-kemenag.jpeg?w=1200", height: 250),
                    SizedBox(height: 20,),
                    Text(
                        "Mari Sertifikasi Halal Produk Anda dan Penuhi Kriteria Syariat Islam",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: secondTextColor,
                        ),
                        textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF1EFEF),
                          ),
                          child: TextField(
                                  controller: email,
                                  decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  //labelText: "Username",
                                  hintText: "124210002@student.upnyk.ac.id",
                                  hintStyle: TextStyle(fontSize: 14,color: textColor.withOpacity(0.5)),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16)
                              )
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Password",
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF1EFEF),
                          ),
                          child: TextField(
                              controller: password,
                              obscureText: true,
                              //obscureText: passwordVisible,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  //labelText: "Username",
                                  //hintText: "124210002@student.upnyk.ac.id",
                                  //hintStyle: TextStyle(fontSize: 12,color: textColor.withOpacity(0.5)),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                                  suffixIcon: Icon(Icons.visibility_off),

                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CheckboxRememberMe(),
                            Text("Remember me",
                            style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 12),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (
                                        (context) => Page3()
                                )
                                )
                            );
                          },
                          child: const Text('Forgot Password?'),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: secondTextColor,
                          ),
                            onPressed: () {
                              if (email.text == "admin" && password.text == "admin") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (
                                            (context) => Page2()
                                    )
                                    )
                                );
                              }
                              else {
                                //notif email atau password salah
                                //belum tau
                              }
                            },
                            child: Text("LOGIN",
                            style: TextStyle(fontWeight: FontWeight.bold)
                            )
                        ),

                      ),

                    )

                  ]
              ),
            ),
          )
      ),
    );
  }
}

// class Example extends StatefulWidget {
//   const Example({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return ExampleState();
//   }
// }

// class ExampleState extends State<Example> {
//
//   bool _isVisible = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(10),
//       child: Column(
//         children: [
//           TextField(
//             obscureText: !_isVisible,
//             decoration: InputDecoration(
//               border: const OutlineInputBorder(),
//               labelText: 'Password',
//               suffixIcon: IconButton(
//                 icon: Icon(_isVisible ? Icons.visibility_off : Icons.visibility),
//                 onPressed: () => setState(() {
//                   _isVisible = !_isVisible;
//                 }),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('BAAAA, Kaget'),
                  //Image.network("https://img.youtube.com/vi/SBNuSBjaXy8/0.jpg", height: 100),
                ],
              ),
          ),
        ),
      ),
    );
  }
}


class CheckboxRememberMe extends StatefulWidget {
  const CheckboxRememberMe({super.key});

  @override
  State<CheckboxRememberMe> createState() => _CheckboxRememberMeState();
}

class _CheckboxRememberMeState extends State<CheckboxRememberMe> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color(0xff662549);
      }
      return Color(0xffF39F5A);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}