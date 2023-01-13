// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sampurnagroupmobile/components/my_employeedetail.dart';
import 'package:sampurnagroupmobile/pallete_login.dart';
import 'package:http/http.dart' as http;

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    fetchUser();
  }
  fetchUser() async {
    setState(() {
      isLoading = true;
    });
    var url = "https://randomuser.me/api/?results=50";
    var response = await http.get(Uri.parse(url));
    // print(response.body);
    if(response.statusCode == 200){
      var items = json.decode(response.body)['results'];
      setState(() {
        users = items;
        isLoading = false;
      });
    }else{
      users = [];
      isLoading = false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 103, 101, 255),
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const EmployeeDetail()),
            );
          }
        ),
        title: const Text('Employee',),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {},
          ),
        ],
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    // ignore: prefer_is_empty
    if(users.contains(null) || users.length < 0 || isLoading){
      return const Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Pallete.primary),));
    }
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context,index){
      return getCard(users[index]);
    });
  }
  Widget getCard(item){
    var fullName = item['name']['title']+" "+item['name']['first']+" "+item['name']['last'];
    var email = item['email'];
    var profileUrl = item['picture']['large'];
    return Card(
      elevation: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Pallete.primary,
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(profileUrl)
                  )
                ),
              ),
              const SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width-140,
                    child: Text(fullName,style: const TextStyle(fontSize: 12),)),
                  const SizedBox(height: 10,),
                  Text(email.toString(),style: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 214, 207, 255)),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}