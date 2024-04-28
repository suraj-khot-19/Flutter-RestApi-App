import 'package:api/model/user.dart';
import 'package:api/resources/base.dart';
import 'package:api/resources/button.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        title: const Center(child: Text("Api")),
        backgroundColor: Colors.purple[200],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const FlutterLogo(
              size: 50,
            ),
            //get
            MyButton(
              title: "GET",
              subtitle: "Fetch Users",
              operation: "GET",
              opcolor: Colors.blue,
              onTapFun: () async {
                var response = await Base().get('/users').catchError((err) {});
                if (response == null) {
                  return;
                } else {
                  debugPrint("get successful..");
                }
                //username count from GET method
                var users = userFromJson(response);
                debugPrint('Users count: ' + users.length.toString());
              },
            ),
            //post
            MyButton(
              title: "POST",
              subtitle: "Add Users",
              operation: "POST",
              opcolor: Colors.red,
              onTapFun: () async {
                //posting request using User
                var user = User(
                  name: "Suraj",
                  education: "BCA",
                  age: 23,
                );
                var response =
                    await Base().post('/users', user).catchError((err) {});
                if (response == null) {
                  return print("error in post");
                } else {
                  debugPrint("post successful..");
                }
              },
            ),
            //put
            MyButton(
              title: "PUT",
              subtitle: "Edit Users",
              operation: "PUT",
              opcolor: Colors.green,
              onTapFun: () async {
                //puting request at position id
                var id = 2;
                var user = User(
                  name: "Giridhar",
                  education: "12th",
                  age: 50,
                );
                var response =
                    await Base().put('/users/$id', user).catchError((err) {});
                if (response == null) {
                  return print("error in put");
                } else {
                  debugPrint("put successful..");
                }
              },
            ),
            MyButton(
              title: "Delete",
              subtitle: "Delete Users",
              operation: "DELETE",
              opcolor: Colors.pink,
              onTapFun: () async {
                //puting request at position id
                var id = 2;
                var response =
                    await Base().delete('/users/$id').catchError((err) {});
                if (response == null) {
                  return print("error in delete");
                } else {
                  debugPrint("delete successful..");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
