import '/flutter_flow/flutter_flow_util.dart';
import 'employee_list_widget.dart' show EmployeeListWidget;
import 'package:flutter/material.dart';

class EmployeeListModel extends FlutterFlowModel<EmployeeListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchEmployee widget.
  FocusNode? searchEmployeeFocusNode;
  TextEditingController? searchEmployeeTextController;
  String? Function(BuildContext, String?)?
      searchEmployeeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchEmployeeFocusNode?.dispose();
    searchEmployeeTextController?.dispose();
  }
}
