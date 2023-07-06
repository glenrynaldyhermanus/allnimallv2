import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'friends_model.dart';
export 'friends_model.dart';

class FriendsWidget extends StatefulWidget {
  const FriendsWidget({Key? key}) : super(key: key);

  @override
  _FriendsWidgetState createState() => _FriendsWidgetState();
}

class _FriendsWidgetState extends State<FriendsWidget> {
  late FriendsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FriendsModel());

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
            'Pet Friends',
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
            child: StreamBuilder<List<PetPostsRecord>>(
              stream: queryPetPostsRecord(
                queryBuilder: (petPostsRecord) =>
                    petPostsRecord.orderBy('created_at', descending: true),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  );
                }
                List<PetPostsRecord> columnPetPostsRecordList = snapshot.data!;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnPetPostsRecordList.length,
                        (columnIndex) {
                      final columnPetPostsRecord =
                          columnPetPostsRecordList[columnIndex];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18.0),
                                  child: Image.network(
                                    columnPetPostsRecord.petPictureUrl,
                                    width: 36.0,
                                    height: 36.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        columnPetPostsRecord.petName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        dateTimeFormat(
                                          'relative',
                                          columnPetPostsRecord.createdAt!,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          if (columnPetPostsRecord.text != '')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 0.0),
                              child: Text(
                                columnPetPostsRecord.text,
                                style: FlutterFlowTheme.of(context).bodyLarge,
                              ),
                            ),
                          if (columnPetPostsRecord.image != '')
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: Image.network(
                                columnPetPostsRecord.image,
                                width: double.infinity,
                                height: 240.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ToggleIcon(
                                      onPressed: () async {
                                        final favedByElement =
                                            currentUserReference;
                                        final favedByUpdate =
                                            columnPetPostsRecord.favedBy
                                                    .contains(favedByElement)
                                                ? FieldValue.arrayRemove(
                                                    [favedByElement])
                                                : FieldValue.arrayUnion(
                                                    [favedByElement]);
                                        await columnPetPostsRecord.reference
                                            .update({
                                          'faved_by': favedByUpdate,
                                        });
                                      },
                                      value: columnPetPostsRecord.favedBy
                                          .contains(currentUserReference),
                                      onIcon: Icon(
                                        Icons.favorite,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 26.0,
                                      ),
                                      offIcon: Icon(
                                        Icons.favorite_border,
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        size: 26.0,
                                      ),
                                    ),
                                    if (functions.countFavs(columnPetPostsRecord
                                            .favedBy
                                            .toList()) >
                                        0)
                                      Text(
                                        functions
                                            .countFavs(columnPetPostsRecord
                                                .favedBy
                                                .toList())
                                            .toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    Text(
                                      ' loves',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Builder(
                                builder: (context) => FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.share_sharp,
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    await Share.share(
                                      'www.allnimall.com',
                                      sharePositionOrigin:
                                          getWidgetBoundingBox(context),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
