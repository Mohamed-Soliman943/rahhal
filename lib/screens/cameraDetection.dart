import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraDetectionScreen extends StatefulWidget {
  const CameraDetectionScreen({Key? key});

  @override
  _CameraDetectionScreenState createState() => _CameraDetectionScreenState();
}

class _CameraDetectionScreenState extends State<CameraDetectionScreen> {
  late CameraController _controller;
  bool _showCamera = true;
  void _initializeCamera() async {
    try {
      final cameras = await availableCameras();
      final backCamera = cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.back,
      );
      _controller = CameraController(
        backCamera,
        ResolutionPreset.medium,

      );
      await _controller.initialize();
    } catch (e) {
      _logError(e, StackTrace.current);
      setState(() {
        _showCamera = false;
      });
    }

    if (mounted) {
      setState(() {});
    }
  }
  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget _cameraPreviewWidget() {
    return CameraPreview(_controller);
  }

  void _logError(Object e, StackTrace stackTrace) {
    print('Error: ${e.toString()}');
  }
  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return Container(color: Colors.black);
    }
    if (!_showCamera) {
      return Scaffold(
        backgroundColor: Colors.black,
      );
    }
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: _cameraPreviewWidget(),
          ),
        ],
      ),
    );
  }
}
