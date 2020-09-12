import 'package:flutter/material.dart';
import 'package:socket_io/Global.dart';
import 'package:socket_io/models/SocketService.dart';
import 'package:socket_io/models/User.dart';
import 'package:socket_io/screens/ChatScreen.dart';
import 'package:socket_io/screens/LoginScreen.dart';

class ChatUsersScreen extends StatefulWidget {
  //
  ChatUsersScreen() : super();

  static const String ROUTE_ID = 'chat_users_list_screen';

  @override
  _ChatUsersScreenState createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen> {
  //
  List<User> _chatUsers;
  bool _connectedToSocket;
  String _errorConnectMessage;

  @override
  void initState() {
    super.initState();
    _chatUsers = G.getUsersFor(G.loggedInUser);
    _connectedToSocket = false;
    _errorConnectMessage = 'Connecting...';
    _connectSocket();
  }

  _connectSocket() async {
    print(
        "Connecting Logged In User: ${G.loggedInUser.name}, ID: ${G.loggedInUser.id}");
//    G.initSocket();
//    G.socketUtils.initSocket(G.loggedInUser);
//    await G.socketUtils.connectToSocket();
//    G.socketUtils.setOnConnectListener(onConnect);
//    G.socketUtils.setOnConnectionErrorListener(onConnectionError);
//    G.socketUtils.setOnConnectionTimeout(onConnectionTimeout);
//    G.socketUtils.setOnDisconnectListener(onDisconnect);
//    G.socketUtils.setOnErrorListener(onError);
    SocketService.socket.on('connect', (data) {
      setState(() {
        _connectedToSocket = true;
        _errorConnectMessage = "Connected";
      });
    });
  }

  onConnect(data) {
    print('Connected $data');
    setState(() {
      _connectedToSocket = true;
      _errorConnectMessage = "Connected";
    });
  }

  onConnectionError(data) {
    print('Connected $data');
    setState(() {
      _connectedToSocket = true;
      _errorConnectMessage = "Connection Error";
    });
  }

  onConnectionTimeout(data) {
    print('Connected $data');
    setState(() {
      _connectedToSocket = true;
      _errorConnectMessage = "Connection Timeout";
    });
  }

  onDisconnect(data) {
    print('Connected $data');
    setState(() {
      _connectedToSocket = true;
      _errorConnectMessage = "Connection Disconnected";
    });
  }

  onError(data) {
    print('Connected $data');
    setState(() {
      _connectedToSocket = true;
      _errorConnectMessage = "Connection Error";
    });
  }

  static openLoginScreen(BuildContext context) async {
    await Navigator.pushReplacementNamed(
      context,
      LoginScreen.ROUTE_ID,
    );
  }

  @override
  void dispose() {
    G.socketUtils.closeConnection();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Users'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              openLoginScreen(context);
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(_connectedToSocket ? 'Connected' : _errorConnectMessage),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _chatUsers.length,
                itemBuilder: (_, index) {
                  User user = _chatUsers[index];
                  return GestureDetector(
                    onTap: () {
                      G.toChatUser = user;
                      openChatScreen(context);
                    },
                    child: ListTile(
                      title: Text(user.name),
                      subtitle: Text('ID: ${user.id}, ${user.email}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  static openChatScreen(BuildContext context) async {
    await Navigator.pushNamed(
      context,
      ChatScreen.ROUTE_ID,
    );
  }
}
