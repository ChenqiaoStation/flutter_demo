import 'package:encrypt/encrypt.dart';

// http://tool.chacuo.net/cryptaes/
class AesUtils {
  // 加密
  late Key key;
  // 偏移量
  late IV iv;
  // 设置CBC模式
  late Encrypter encrypter;

  AesUtils() {
    key = Key.fromUtf8("1234567890abcdef");
    iv = IV.fromUtf8("1234567890abcdef");
    encrypter = Encrypter(AES(key, mode: AESMode.cbc, padding: 'PKCS7'));
  }

  toBase64(String s) {
    final encrypted = encrypter.encrypt(s, iv: iv);
    String result = encrypted.base64;
    print('加密: ${result}');
    return result;
  }

  fromBase64(String s) {
    String result = encrypter.decrypt(Encrypted.fromBase64(s), iv: iv);
    print('解密: ${result}');
    return result;
  }
}
