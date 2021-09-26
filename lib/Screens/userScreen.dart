import 'package:flutter/material.dart';
import 'package:flutter_app/modal/userModal.dart';
import 'package:flutter_app/utils/httpService.dart';

class ScreenAllPost extends StatefulWidget {
  const ScreenAllPost({Key key}) : super(key: key);

  @override
  _ScreenAllPostState createState() => _ScreenAllPostState();
}

class _ScreenAllPostState extends State<ScreenAllPost> {
  Future<List<ModelPost>> futureBuilder;
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();

    futureBuilder = HttpService.getAllPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummy Screen"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.lerp(EdgeInsets.all(20), EdgeInsets.all(10), 0.5),
        child: Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                buildColumn();
              },
              child: Text('InsertData'),
            ),
            Container(
              width: 15.0,
            ),
            ElevatedButton(
              onPressed: () {
                buildFutureBuilder();
              },
              child: Text('InsertData'),
            ),
          ],
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: 'Enter Title'),
        ),
        TextField(
          controller: _bodyController,
          decoration: const InputDecoration(hintText: 'Enter body'),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              HttpService.insertIntoApi(_controller.text, _bodyController.text);
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }

  FutureBuilder<List<ModelPost>> buildFutureBuilder() {
    return FutureBuilder<List<ModelPost>>(
      future: futureBuilder,
      builder: (context, AsyncSnapshot<List<ModelPost>> snapshot) {
        if (snapshot.hasError) {
          print(snapshot.data);
          return Container(
            child: Center(
              child: Text("Sorry error occured"),
            ),
          );
        } else {
          if (snapshot.hasData) {
            if (snapshot.data.length > 0) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: ListTile(
                      leading: Icon(Icons.verified_user),
                      title: Text(
                        snapshot.data[index].title,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.delete),
                    ),
                  );
                },
              );
            } else {
              return Container(
                child: Center(
                  child: Text("Sorry Zero occured"),
                ),
              );
            }
          } else {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        }
      },
    );
  }
}
