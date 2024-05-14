import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class ScanController extends GetxController{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initCamera();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    cameraController.dispose();
  }
  late CameraController cameraController;
  late List<CameraController> cameras;

  var isCameraInitialized =false.obs;
  initCamera() async{
      if( await Permission.camera.request().isGranted){
        cameras= (await availableCameras()).cast<CameraController>();
        cameraController= CameraController(
          cameras[0] as CameraDescription,
          ResolutionPreset.max,
        );
        await cameraController.initialize();
        isCameraInitialized(true);
        update();
      }else {
          print('Permission denied');
      }
  }
}

