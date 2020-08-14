import 'package:flutter/cupertino.dart';

class Profile {
  String username;
  String email;
  String pictureURI;
  String discordID;
  String discordToken;
  String discordRefreshToken;
  String avatarURL;

  Profile.fromJson(Map json) {
    this.username = json['username'];
    this.email = json['email'];
    this.pictureURI = json['pictureURI'];
    this.discordID = json['discordID'];
    this.discordToken = json['discordToken'];
    this.discordRefreshToken = json['discordRefreshToken'];
    this.avatarURL = json['avatarURL'];
  }
}
