import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:MyProfile()
    );
  }
}



class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                    width: 200,
                    height: 200,

                    child: Image.asset("assets/images/profile.jpg")
                ),
                const SizedBox(height: 20,),
                Text("Name : Fatma Abdelghany"),
                const SizedBox(height: 20,),
                Text("phone :01090057013"),
                const SizedBox(height: 20,),

                Container(
                  width:double.infinity ,
                  child: ElevatedButton(

                      onPressed: (){
                        setState(() {

                        });

                      },
                      child: const Text(
                          "Call me"
                      )),
                )


              ],
            ),
          ),
        ),
    );
  }
}