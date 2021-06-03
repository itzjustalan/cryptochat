import 'package:flutter/material.dart';
import 'package:openpgp/model/bridge.pb.dart';
import 'package:openpgp/openpgp.dart';

class LockScreen extends StatelessWidget {

  testFn() async {
    //https://kaptein.me/blog/using-gpg-tutorial/
    print('test ${DateTime.now()}');
    KeyOptions keyOptions = KeyOptions()..rsaBits = 1024;
    KeyPair keyPair = await OpenPGP.generate(
            options: Options()
              ..name = 'test'
              ..email = 'test@test.com'
              ..passphrase = 'passphrase'
              ..keyOptions = keyOptions);
    print('${keyPair.publicKey}');
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MaterialButton(
              onPressed: () => testFn(),
              color: Theme.of(context).accentColor,
            ),
          ],
        ),
      ),
    );
  }
}