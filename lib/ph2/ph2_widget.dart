import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'ph2_model.dart';
export 'ph2_model.dart';

class Ph2Widget extends StatefulWidget {
  const Ph2Widget({super.key});

  @override
  State<Ph2Widget> createState() => _Ph2WidgetState();
}

class _Ph2WidgetState extends State<Ph2Widget> with TickerProviderStateMixin {
  late Ph2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Ph2Model());

    animationsMap.addAll({
      'textOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 0.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'iconButtonOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 0.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'iconButtonOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 0.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
      'textOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 0.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.2, 1.2),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFCDCDD5),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Start_Page');
                  },
                  child: Text(
                    'DocuKept',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.white,
                          fontSize: 28.0,
                          letterSpacing: 1.4,
                          shadows: [
                            Shadow(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              offset: const Offset(0.5, 0.5),
                              blurRadius: 2.0,
                            )
                          ],
                          lineHeight: 1.25,
                        ),
                  ),
                ),
              ],
            ),
            actions: [
              FFButtonWidget(
                onPressed: () async {
                  context.safePop();
                },
                text: '',
                icon: const Icon(
                  Icons.chevron_left_outlined,
                  size: 30.0,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 1.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'Start_Page',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                text: '',
                icon: const Icon(
                  Icons.person,
                  size: 30.0,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 1.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter Tight',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 50.0),
                    child: Text(
                      'Hello.',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 80.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 715.0,
                    height: 643.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered1 = true);
                        if (animationsMap[
                                'iconButtonOnActionTriggerAnimation1'] !=
                            null) {
                          animationsMap['iconButtonOnActionTriggerAnimation1']!
                              .controller
                            ..reset()
                            ..repeat();
                        }
                        if (animationsMap['textOnActionTriggerAnimation1'] !=
                            null) {
                          animationsMap['textOnActionTriggerAnimation1']!
                              .controller
                            ..reset()
                            ..repeat();
                        }
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered1 = false);
                        if (animationsMap[
                                'iconButtonOnActionTriggerAnimation1'] !=
                            null) {
                          animationsMap['iconButtonOnActionTriggerAnimation1']!
                              .controller
                              .reverse();
                        }
                        if (animationsMap['textOnActionTriggerAnimation1'] !=
                            null) {
                          await animationsMap['textOnActionTriggerAnimation1']!
                              .controller
                              .reverse();
                        }
                      }),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.6,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1450101499163-c8848c66ca85?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyM3x8d3JpdGluZ3xlbnwwfHx8fDE3MzY2MDkzNzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                width: 715.0,
                                height: 643.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('auth_2_Create');
                                  },
                                  child: Text(
                                    'Add New Profile',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: const Color(0xFF040000),
                                          fontSize: 40.0,
                                          letterSpacing: 1.5,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              offset: const Offset(1.0, 1.0),
                                              blurRadius: 1.0,
                                            )
                                          ],
                                          lineHeight: 1.0,
                                        ),
                                  ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation1']!,
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 100.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 100.0,
                                  fillColor: const Color(0x00FFFFFF),
                                  icon: const Icon(
                                    Icons.add_box,
                                    color: Colors.black,
                                    size: 80.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('auth_2_Create');
                                  },
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'iconButtonOnActionTriggerAnimation1']!,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 715.0,
                    height: 643.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      onEnter: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered2 = true);
                        if (animationsMap[
                                'iconButtonOnActionTriggerAnimation2'] !=
                            null) {
                          animationsMap['iconButtonOnActionTriggerAnimation2']!
                              .controller
                            ..reset()
                            ..repeat();
                        }
                        if (animationsMap['textOnActionTriggerAnimation2'] !=
                            null) {
                          animationsMap['textOnActionTriggerAnimation2']!
                              .controller
                            ..reset()
                            ..repeat();
                        }
                      }),
                      onExit: ((event) async {
                        safeSetState(() => _model.mouseRegionHovered2 = false);
                        if (animationsMap[
                                'iconButtonOnActionTriggerAnimation2'] !=
                            null) {
                          animationsMap['iconButtonOnActionTriggerAnimation2']!
                              .controller
                              .reverse();
                        }
                        if (animationsMap['textOnActionTriggerAnimation2'] !=
                            null) {
                          await animationsMap['textOnActionTriggerAnimation2']!
                              .controller
                              .reverse();
                        }
                      }),
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.6,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1522407183863-c0bf2256188c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw5fHxib29rc3xlbnwwfHx8fDE3MzY0OTg4NTN8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                width: 715.0,
                                height: 643.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 100.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 8.0,
                                  buttonSize: 100.0,
                                  fillColor: const Color(0x00FFFFFF),
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.black,
                                    size: 80.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('placeholder');
                                  },
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'iconButtonOnActionTriggerAnimation2']!,
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('placeholder');
                                  },
                                  child: Text(
                                    'Access Existing Profile',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.black,
                                          fontSize: 40.0,
                                          letterSpacing: 1.5,
                                          shadows: [
                                            Shadow(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              offset: const Offset(1.0, 1.0),
                                              blurRadius: 1.0,
                                            )
                                          ],
                                          lineHeight: 1.0,
                                        ),
                                  ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation2']!,
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
            ],
          ),
        ),
      ),
    );
  }
}
