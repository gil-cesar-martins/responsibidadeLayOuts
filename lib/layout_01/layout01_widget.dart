import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'layout01_model.dart';
export 'layout01_model.dart';

class Layout01Widget extends StatefulWidget {
  const Layout01Widget({super.key});

  @override
  State<Layout01Widget> createState() => _Layout01WidgetState();
}

class _Layout01WidgetState extends State<Layout01Widget> {
  late Layout01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Layout01Model());

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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 97.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary,
                    const Color(0xFF673AB7)
                  ],
                  stops: const [0.0, 1.0, 1.0],
                  begin: const AlignmentDirectional(0.0, 1.0),
                  end: const AlignmentDirectional(0, -1.0),
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.63),
                    child: GradientText(
                      'MENU PRINCIPAL',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 20.0,
                          ),
                      colors: [
                        FlutterFlowTheme.of(context).primaryBackground,
                        FlutterFlowTheme.of(context).secondaryBackground
                      ],
                      gradientDirection: GradientDirection.ttb,
                      gradientType: GradientType.linear,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryText,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).secondary,
                          const Color(0xFF673AB7)
                        ],
                        stops: const [0.0, 1.0, 1.0],
                        begin: const AlignmentDirectional(0.0, 1.0),
                        end: const AlignmentDirectional(0, -1.0),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.05),
                    child: Container(
                      width: double.infinity,
                      height: 38.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryText,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.02, -0.9),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).primaryText,
                      borderRadius: 20.0,
                      borderWidth: 2.0,
                      buttonSize: 50.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      hoverColor: const Color(0xD58376EE),
                      hoverIconColor: FlutterFlowTheme.of(context).primaryText,
                      icon: Icon(
                        Icons.add,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.56),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).accent1,
                          hoverColor: FlutterFlowTheme.of(context).primary,
                          hoverIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: FaIcon(
                            FontAwesomeIcons.gamepad,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: FlutterFlowTheme.of(context).accent1,
                          hoverColor: FlutterFlowTheme.of(context).primary,
                          hoverIconColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          icon: FaIcon(
                            FontAwesomeIcons.video,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
