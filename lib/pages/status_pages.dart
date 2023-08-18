import 'dart:io';

import 'package:band_name_sockets/services/socket_service.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

// It´s only for practice
class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    final socketService = Provider.of<SocketService>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Text('Server status: ${socketService.serverStatus}'),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
        onPressed: () {
          socketService.socket.emit('event', 'Hola desde Flutter');
        },
      ),
    );
  }
}
