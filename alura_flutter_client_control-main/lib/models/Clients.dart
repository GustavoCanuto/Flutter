import 'package:client_control/models/client.dart';
import 'package:flutter/cupertino.dart';

class Clients extends ChangeNotifier {
  List<Client> clients;

  Clients({required this.clients});
}
