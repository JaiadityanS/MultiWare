import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerWidget extends StatefulWidget {
  const CustomerWidget({Key? key}) : super(key: key);

  @override
  _CustomerWidgetState createState() => _CustomerWidgetState();
}

class _CustomerWidgetState extends State<CustomerWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 820.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'wrapOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CategoryRecord>>(
      stream: queryCategoryRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitChasingDots(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<CategoryRecord> customerCategoryRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final customerCategoryRecord = customerCategoryRecordList.isNotEmpty
            ? customerCategoryRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF1F4F8),
          appBar: AppBar(
            backgroundColor: Color(0xFF4B39EF),
            automaticallyImplyLeading: false,
            title: Text(
              'Hello',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                  ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFF4B39EF),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x27000000),
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                    child: TextFormField(
                      controller: textController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'textController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search products...',
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF57636C),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Color(0xFF57636C),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF14181B),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 110,
                  decoration: BoxDecoration(),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
                        child: Container(
                          width: 120,
                          height: 190,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 4),
                                  child: FaIcon(
                                    FontAwesomeIcons.wallet,
                                    color: Color(0xFF57636C),
                                    size: 44,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 4, 0, 0),
                                  child: Text(
                                    'Order Details',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF57636C),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 8),
                        child: Container(
                          width: 120,
                          height: 190,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'About',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 4),
                                    child: Icon(
                                      Icons.account_circle_sharp,
                                      color: Color(0xFF57636C),
                                      size: 44,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'Accout Details',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 8),
                        child: Container(
                          width: 120,
                          height: 190,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: InkWell(
                              onTap: () async {
                                context.pushNamed(
                                  'Settings',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 4),
                                    child: Icon(
                                      Icons.settings,
                                      color: Color(0xFF57636C),
                                      size: 44,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Text(
                                      'Settings',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['listViewOnPageLoadAnimation']!),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                        child: Text(
                          'Suggested',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          context.pushNamed('all_product');
                        },
                        child: Text(
                          'View all',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          StreamBuilder<List<CategoryRecord>>(
                            stream: queryCategoryRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: SpinKitChasingDots(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 50,
                                    ),
                                  ),
                                );
                              }
                              List<CategoryRecord> listViewCategoryRecordList =
                                  snapshot.data!;
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewCategoryRecordList.length,
                                itemBuilder: (context, listViewIndex) {
                                  final listViewCategoryRecord =
                                      listViewCategoryRecordList[listViewIndex];
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3,
                                          color: Color(0x411D2429),
                                          offset: Offset(0, 1),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 1, 1, 1),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              child: Image.network(
                                                listViewCategoryRecord.image!,
                                                width: 70,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 4, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: StreamBuilder<
                                                        List<CategoryRecord>>(
                                                      stream:
                                                          queryCategoryRecord(
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50,
                                                              height: 50,
                                                              child:
                                                                  SpinKitChasingDots(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                size: 50,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<CategoryRecord>
                                                            textCategoryRecordList =
                                                            snapshot.data!;
                                                        // Return an empty Container when the document does not exist.
                                                        if (snapshot
                                                            .data!.isEmpty) {
                                                          return Container();
                                                        }
                                                        final textCategoryRecord =
                                                            textCategoryRecordList
                                                                    .isNotEmpty
                                                                ? textCategoryRecordList
                                                                    .first
                                                                : null;
                                                        return Text(
                                                          textCategoryRecord!
                                                              .name!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .subtitle1
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF090F13),
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.15, 0.85),
                                            child: Text(
                                              'Rs. ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: Icon(
                                                  Icons.chevron_right_rounded,
                                                  color: Color(0xFF57636C),
                                                  size: 24,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 4, 8),
                                                child: Text(
                                                  listViewCategoryRecord.price!
                                                      .toString(),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF4B39EF),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['wrapOnPageLoadAnimation']!),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
