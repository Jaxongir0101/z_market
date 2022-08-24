import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScaner extends StatefulWidget {
  const QrCodeScaner({Key? key}) : super(key: key);

  @override
  State<QrCodeScaner> createState() => _QrCodeScanerState();
}

class _QrCodeScanerState extends State<QrCodeScaner> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(color: Color(0xff33409E),)),
       Expanded(
        flex: 12,
         child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                   topRight: Radius.circular(10),
                )
              ),
          child: Stack(
            children: [
                 Container(
          
                
               child: _buildQrView(context)),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 30),
                      Text("Оплата по QR",style: TextStyle(color: Colors.white,fontSize: 16),),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.cancel_outlined),color: Colors.white,)
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 65,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: InkWell(
                      onTap: () async {
                        await controller?.toggleFlash();
                        setState(() {});
                      },
                      child: Container(
                        height: 65,
                        width: 54,
                        child: FutureBuilder(
                          future: controller?.getFlashStatus(),
                          builder: (context, snapshot) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                snapshot.data == true
                                    ? Icon(
                                        Icons.flash_on,
                                        color: Color(0xffFFB21E),
                                        size: 20,
                                      )
                                    : Icon(Icons.flash_off,   size: 20,color: Color(0xff878B9A),),
                                snapshot.data == true
                                    ? Text(
                                        "Вкл",
                                        style: TextStyle(
                                            color: Color(0xff32B179),
                                            fontSize: 14),
                                      )
                                    : Text(
                                        "Выкл",
                                        style: TextStyle(
                                            color: Color(0xff878B9A),
                                            fontSize: 14),
                                      )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
         
            ],
          ),
         ),
       ) ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    
    var scanArea = (MediaQuery.of(context).size.width < 300 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 250.0;

    return QRView(
      key: qrKey,
      
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.white,
          borderRadius: 10,
          borderLength: 38,
          borderWidth: 14,
          
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
      
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
