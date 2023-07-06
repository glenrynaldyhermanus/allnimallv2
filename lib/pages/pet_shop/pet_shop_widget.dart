import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'pet_shop_model.dart';
export 'pet_shop_model.dart';

class PetShopWidget extends StatefulWidget {
  const PetShopWidget({Key? key}) : super(key: key);

  @override
  _PetShopWidgetState createState() => _PetShopWidgetState();
}

class _PetShopWidgetState extends State<PetShopWidget> {
  late PetShopModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PetShopModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          automaticallyImplyLeading: false,
          title: Text(
            'Pet Shop',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'RockoUltra',
                  color: FlutterFlowTheme.of(context).primary,
                  useGoogleFonts: false,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Lottie.asset(
                    'assets/lottie_animations/coming_soon.json',
                    width: MediaQuery.sizeOf(context).width * 0.9,
                    height: 200.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 0.0),
                  child: Text(
                    'Coming Soon',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'RockoUltra',
                          color: FlutterFlowTheme.of(context).primary,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                  child: Text(
                    'Hang on! We\'re on our way...',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'RockoUltra',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
