import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'sign_in_model.dart';
export 'sign_in_model.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({Key? key}) : super(key: key);

  @override
  _SignInWidgetState createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  late SignInModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignInModel());

    _model.textController ??= TextEditingController();
    authManager.handlePhoneAuthStateChanges(context);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xCDE6E7F9), Color(0xCBFDEAEF)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 64.0, 32.0, 0.0),
                    child: Image.asset(
                      'assets/images/Artboard1_4.png',
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 64.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/magicpattern-blob-1649523227547.png',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/cathero.png',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        '+62',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: '8XX - XXXX - XXXX',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            filled: true,
                                            fillColor: Colors.transparent,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontWeight: FontWeight.w500,
                                              ),
                                          keyboardType: TextInputType.phone,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model.textFieldMask
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                final phoneNumberVal =
                                    _model.textController.text;
                                if (phoneNumberVal == null ||
                                    phoneNumberVal.isEmpty ||
                                    !phoneNumberVal.startsWith('+')) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Phone Number is required and has to start with +.'),
                                    ),
                                  );
                                  return;
                                }
                                await authManager.beginPhoneAuth(
                                  context: context,
                                  phoneNumber: phoneNumberVal,
                                  onCodeSent: (context) async {
                                    context.goNamedAuth(
                                      'OtpVerification',
                                      context.mounted,
                                      queryParameters: {
                                        'phone': serializeParam(
                                          _model.textController.text,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                      ignoreRedirect: true,
                                    );
                                  },
                                );
                              },
                              text: 'Go!',
                              options: FFButtonOptions(
                                width: 64.0,
                                height: 48.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle:
                                    FlutterFlowTheme.of(context).titleSmall,
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
