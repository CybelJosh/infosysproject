import '/flutter_flow/flutter_flow_util.dart';
import 'add_employees_widget.dart' show AddEmployeesWidget;
import 'package:flutter/material.dart';

class AddEmployeesModel extends FlutterFlowModel<AddEmployeesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for middleName widget.
  FocusNode? middleNameFocusNode;
  TextEditingController? middleNameTextController;
  String? Function(BuildContext, String?)? middleNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for contacts widget.
  FocusNode? contactsFocusNode;
  TextEditingController? contactsTextController;
  String? Function(BuildContext, String?)? contactsTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for jobPosition widget.
  FocusNode? jobPositionFocusNode;
  TextEditingController? jobPositionTextController;
  String? Function(BuildContext, String?)? jobPositionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    middleNameFocusNode?.dispose();
    middleNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    contactsFocusNode?.dispose();
    contactsTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    jobPositionFocusNode?.dispose();
    jobPositionTextController?.dispose();
  }
}
