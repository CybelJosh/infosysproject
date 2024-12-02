import '/flutter_flow/flutter_flow_util.dart';
import 'uploading_widget.dart' show UploadingWidget;
import 'package:flutter/material.dart';

class UploadingModel extends FlutterFlowModel<UploadingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
