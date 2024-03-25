// import 'package:flutter/material.dart';
// import 'package:meta/meta.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';
// import 'package:web_socket_channel/io.dart';
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       home: new MyHomePage(
//         channel: WebSocketChannel.connect(Uri.parse("ws://echo.websocket.org")),
//       ),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   final WebSocketChannel channel;
//   MyHomePage({required this.channel});
//
//   @override
//   MyHomePageState createState() {
//     return new MyHomePageState();
//   }
// }
//
// class MyHomePageState extends State<MyHomePage> {
//   TextEditingController editingController = new TextEditingController();
//   final _messageList = <String>[];
//   final _messages = <String>[];
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("Web Socket"),
//       ),
//       body: new Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           new Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: new Text("Messages:"),
//           ),
//           new Expanded(
//             child: new ListView.builder(
//               itemCount: _messages.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Text(_messages[index]),
//                 );
//               },
//             ),
//           ),
//           new Form(
//             child: new TextFormField(
//               decoration: new InputDecoration(labelText: "Send any message"),
//               controller: editingController,
//             ),
//           ),
//           new StreamBuilder(
//             stream: widget.channel.stream,
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 _messageList.add(snapshot.data);
//                 return new Container();
//               } else {
//                 return new Center(child: Text(""));
//               }
//             },
//           ),
//         ],
//       ),
//       floatingActionButton: new FloatingActionButton(
//         child: new Icon(Icons.send),
//         onPressed: _sendMyMessage,
//       ),
//     );
//   }
//
//   void _sendMyMessage() {
//     if (editingController.text.isNotEmpty) {
//       String message = editingController.text + "\n";
//       setState(() {
//         _messages.add(message);
//         editingController.clear();
//       });
//       widget.channel.sink.add(message);
//     }
//   }
//
//   @override
//   void dispose() {
//     widget.channel.sink.close();
//     editingController.dispose();
//     super.dispose();
//   }
// }