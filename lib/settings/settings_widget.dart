import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({
    Key? key,
    this.number,
  }) : super(key: key);

  final List<int>? number;

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.close_rounded,
                color: Color(0xFF57636C),
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/images/AgriC_logo-removebg-preview.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: GradientText(
                  'HOLA!',
                  style: FlutterFlowTheme.of(context).title1,
                  colors: [
                    FlutterFlowTheme.of(context).primaryColor,
                    FlutterFlowTheme.of(context).secondaryColor
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Text(
                  currentUserEmail,
                  style: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF39D2C0),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Divider(
                height: 44,
                thickness: 1,
                indent: 24,
                endIndent: 24,
                color: Color(0xFFE0E3E7),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (Theme.of(context).brightness == Brightness.light)
                      InkWell(
                        onTap: () async {
                          setDarkModeSetting(context, ThemeMode.dark);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Icon(
                                    Icons.nights_stay_outlined,
                                    color: Color(0xFF101213),
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'Switch to Dark Mode',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F4F8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      setDarkModeSetting(
                                          context, ThemeMode.dark);
                                    },
                                    child: Stack(
                                      alignment: AlignmentDirectional(0, 0),
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.95, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 8, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setDarkModeSetting(
                                                    context, ThemeMode.system);
                                              },
                                              child: Icon(
                                                Icons.nights_stay,
                                                color: Color(0xFF57636C),
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.85, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              setDarkModeSetting(
                                                  context, ThemeMode.dark);
                                            },
                                            child: Container(
                                              width: 36,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x430B0D0F),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                shape: BoxShape.rectangle,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (Theme.of(context).brightness == Brightness.dark)
                      InkWell(
                        onTap: () async {
                          setDarkModeSetting(context, ThemeMode.light);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                color: Color(0xFF1A1F24),
                                offset: Offset(0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0xFFE0E3E7),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 0, 0),
                                  child: Icon(
                                    Icons.wb_sunny_outlined,
                                    color: Color(0xFF101213),
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Text(
                                      'Switch to Light Mode',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF57636C),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 80,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE0E3E7),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Stack(
                                    alignment: AlignmentDirectional(0, 0),
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-0.9, 0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 2, 0, 0),
                                          child: Icon(
                                            Icons.wb_sunny_rounded,
                                            color: Color(0xFF95A1AC),
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0.9, 0),
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF14181B),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4,
                                                color: Color(0x430B0D0F),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('Edit');
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xFFE0E3E7),
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 12, 8, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Icon(
                              Icons.settings_outlined,
                              color: Color(0xFF101213),
                              size: 24,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: Text(
                              'Account Settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    GoRouter.of(context).prepareAuthEvent();
                    await signOut();

                    context.goNamedAuth('Signup', mounted);
                  },
                  text: 'Log Out',
                  options: FFButtonOptions(
                    width: 150,
                    height: 44,
                    color: Color(0xFFF1F4F8),
                    textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 0,
                    borderSide: BorderSide(
                      color: Color(0xFFE0E3E7),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(38),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
