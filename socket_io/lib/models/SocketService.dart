import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_common/socket_io_common.dart';

class SocketService {
  static IO.Socket socket;

  createSocketConnection() {
    socket = IO.io('http://192.168.0.105:7000/', <String, dynamic>{
      'transports': ['websocket'],
    });

    socket.on("connect", (_) => print('Connected'));
    socket.on("disconnect", (_) => print('Disconnected'));
    socket.on("connect_error", (data) => print(data));
  }

  setOnConnectListener(Function onConnect) {
    socket.on('connect',(data) {
      onConnect(data);
    });
  }
}
