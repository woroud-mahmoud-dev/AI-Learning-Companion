import 'package:crypto/crypto.dart';
import 'dart:convert';

String hashPassword(String password) {
  // Convert the password into bytes
  var bytes = utf8.encode(password);

  // Hash the bytes using SHA-256
  var digest = sha256.convert(bytes);

  // Return the hashed password as a string
  return digest.toString();
}
