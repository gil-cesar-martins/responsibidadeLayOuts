import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 1000.ms,
          begin: 0.245,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 1000.ms,
          begin: 0.245,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 1000.ms,
          begin: 0.245,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 450.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 500.0,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 40.0),
                                child: PageView(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/881/600',
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation1']!),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/839/600',
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation2']!),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        'https://picsum.photos/seed/291/600',
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation3']!),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 16.0),
                                  child:
                                      smooth_page_indicator.SmoothPageIndicator(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) async {
                                      await _model.pageViewController!
                                          .animateToPage(
                                        i,
                                        duration: const Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: smooth_page_indicator
                                        .ExpandingDotsEffect(
                                      expansionFactor: 5.0,
                                      spacing: 8.0,
                                      radius: 16.0,
                                      dotWidth: 16.0,
                                      dotHeight: 10.0,
                                      dotColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      activeDotColor:
                                          FlutterFlowTheme.of(context).primary,
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.94, -0.1),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 70.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            await _model.pageViewController?.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.95, -0.11),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).primary,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 70.0,
                          fillColor: FlutterFlowTheme.of(context).secondary,
                          icon: Icon(
                            Icons.chevron_left,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            await _model.pageViewController?.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 10.0),
                                child: Container(
                                  width: 387.0,
                                  height: 177.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).warning,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 10.0),
                                child: Container(
                                  width: 387.0,
                                  height: 177.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).warning,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 10.0),
                                child: Container(
                                  width: 387.0,
                                  height: 177.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).warning,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 10.0),
                                child: Container(
                                  width: 387.0,
                                  height: 177.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).warning,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 10.0),
                                child: Container(
                                  width: 387.0,
                                  height: 177.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).warning,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 20.0, 5.0, 10.0),
                                child: Container(
                                  width: 387.0,
                                  height: 177.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).warning,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  desktop: false,
                ))
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 5.0, 10.0),
                            child: Container(
                              width: 390.0,
                              height: 177.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 20.0, 5.0, 10.0),
                            child: Container(
                              width: 390.0,
                              height: 177.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 5.0, 10.0),
                            child: Container(
                              width: 390.0,
                              height: 177.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 20.0, 5.0, 10.0),
                            child: Container(
                              width: 390.0,
                              height: 177.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 5.0, 10.0),
                            child: Container(
                              width: 390.0,
                              height: 177.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 20.0, 5.0, 10.0),
                            child: Container(
                              width: 390.0,
                              height: 177.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 50.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 10.0),
                                  child: Container(
                                    width: 400.0,
                                    height: 177.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 10.0),
                                  child: Container(
                                    width: 400.0,
                                    height: 177.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 10.0),
                                  child: Container(
                                    width: 400.0,
                                    height: 177.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 10.0),
                                  child: Container(
                                    width: 400.0,
                                    height: 177.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 10.0),
                                  child: Container(
                                    width: 400.0,
                                    height: 177.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 10.0, 10.0),
                                  child: Container(
                                    width: 400.0,
                                    height: 177.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).warning,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
