import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 970.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };
  TextEditingController? confirmpassController;

  late bool confirmpassVisibility;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    confirmpassController = TextEditingController();
    confirmpassVisibility = false;
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    confirmpassController?.dispose();
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/AgriC_logo-removebg-preview.png',
                    width: 90,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                        child: InkWell(
                          onTap: () async {
                            context.pushNamed('Signin');
                          },
                          child: Text(
                            'Sign In',
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                        child: Text(
                          'Sign Up',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Create New Account',
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: TextFormField(
                      controller: emailController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Your email address',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0x3416202A),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: TextFormField(
                      controller: confirmpassController,
                      obscureText: !confirmpassVisibility,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 20, 24),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () =>
                                confirmpassVisibility = !confirmpassVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            confirmpassVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        // Create_acc
                        GoRouter.of(context).prepareAuthEvent();
                        if (passwordController?.text !=
                            confirmpassController?.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Passwords don\'t match!',
                              ),
                            ),
                          );
                          return;
                        }

                        final user = await createAccountWithEmail(
                          context,
                          emailController!.text,
                          passwordController!.text,
                        );
                        if (user == null) {
                          return;
                        }

                        context.goNamedAuth('logged', mounted);
                      },
                      text: 'Sign up',
                      options: FFButtonOptions(
                        width: 150,
                        height: 50,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                        elevation: 3,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
        ),
      ),
    );
  }
}
