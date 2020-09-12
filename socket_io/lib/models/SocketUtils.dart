import 'dart:io';

import 'package:adhara_socket_io/adhara_socket_io.dart';
import 'package:socket_io/models/User.dart';

class SocketUtils {
  static String _serverIp =
      Platform.isAndroid ? 'http://localhost' : 'http://10.0.2.2';
  static const int SERVER_PORT = 6000;
  static String _connectUrl = "$_serverIp:$SERVER_PORT";

  static const String _ON_MESSAGE_RECIEVED = 'receive_message';
  static const String _IS_USER_ONLINE = 'check_online';

  static const int STATUS_MESSAGE_NOT_SENT = 500;
  static const int STATUS_MESSAGE_SENT = 200;

  static const String SINGLE_CHAT = 'single_chat';

  User _fromUser;
  SocketIO _socket;
  SocketIOManager _socketManager;

  initSocket(User fromUser) async {
    this._fromUser = fromUser;
    print('Initializing Connecting...${fromUser.name}');
    await _init();
  }

  _init() async {
    _socketManager = SocketIOManager();
    _socket = await _socketManager.createInstance(_socketOptions());
  }

  _socketOptions() {
    final Map<String, String> userMap = {
      'from': _fromUser.id.toString(),
    };
    return SocketOptions(
      _connectUrl,
      enableLogging: true,
      transports: [
        Transports.WEB_SOCKET,
      ],
      query: userMap,
    );
  }

  connectToSocket() {
    if(_socket == null) {
      return;
    }
    _socket.connect();
  }

  setOnConnectListener(Function onConnect) {
    _socket.onConnect((data) {
      onConnect(data);
    });
  }

  setOnConnectionTimeout(Function onConnectionTimeout) {
    _socket.onConnectTimeout((data) {
      onConnectionTimeout(data);
    });
  }

  setOnConnectionErrorListener(Function onConnectionError) {
    _socket.onConnectError((data) {
      onConnectionError(data);
    });
  }

  setOnErrorListener(Function onError) {
    _socket.onError((data) {
      onError(data);
    });
  }

  setOnDisconnectListener(Function onDisconnect) {
    _socket.onDisconnect((data) {
      onDisconnect(data);
    });
  }

  closeConnection() {
    if(_socket != null) {
      print('Closing Connection');
      _socketManager.clearInstance(_socket);
    }
  }
}
