import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoggedWidget extends StatefulWidget {
  const LoggedWidget({Key? key}) : super(key: key);

  @override
  _LoggedWidgetState createState() => _LoggedWidgetState();
}

class _LoggedWidgetState extends State<LoggedWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: 1,
          end: 1,
        ),
      ],
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B39EF), Color(0xFFEE8B60)],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -1),
            end: AlignmentDirectional(-1, 1),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/AgriC_logo-removebg-preview.png',
              width: 140,
              height: 140,
              fit: BoxFit.fitHeight,
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: Text(
                'Welcome to AGRI CONNECT',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 120),
              child: Text(
                'Connect Directly',
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Farmer',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0x9D000000),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'Customer',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.scale,
                          alignment: Alignment.bottomCenter,
                        ),
                      },
                    );
                  },
                  text: 'Customer',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0x9D000000),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
