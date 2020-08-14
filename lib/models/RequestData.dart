import 'package:zischify/models/DiscordUserInformation.dart';

abstract class RequestData {
  String comment;
  DateTime date;
  String userid;
  Iterable<String> usersAccepted;
}
