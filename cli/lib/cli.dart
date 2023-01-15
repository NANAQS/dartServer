import 'package:shelf/shelf.dart';
import 'dart:io';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'server_handler.dart';

void main() async {
  var _server = ServeHandler();
  
  final server = await shelf_io.serve(
    _server.handler, 
    InternetAddress.anyIPv6, 8080);

  print("Started Server");
}