import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProviewWidget extends StatefulWidget {
  const ProviewWidget({Key? key}) : super(key: key);

  @override
  _ProviewWidgetState createState() => _ProviewWidgetState();
}

class _ProviewWidgetState extends State<ProviewWidget> {
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
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            '',
                            width: double.infinity,
                            height: 230,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Product Name',
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '\$9.00',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 20,
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                        color: Color(0xFFE0E3E7),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Description',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Add To Cart',
                  options: FFButtonOptions(
                    width: 270,
                    height: 50,
                    color: Color(0xFF0F1113),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
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
