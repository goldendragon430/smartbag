import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_stock_component_model.dart';
export 'add_stock_component_model.dart';

class AddStockComponentWidget extends StatefulWidget {
  const AddStockComponentWidget({
    Key? key,
    this.max,
  }) : super(key: key);

  final double? max;

  @override
  _AddStockComponentWidgetState createState() =>
      _AddStockComponentWidgetState();
}

class _AddStockComponentWidgetState extends State<AddStockComponentWidget> {
  late AddStockComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddStockComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 120.0,
        height: 55.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(30.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryBackground,
            width: 1.0,
          ),
        ),
        child: FlutterFlowCountController(
          decrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.minus,
            color: enabled
                ? FlutterFlowTheme.of(context).tertiary
                : Color(0xFFEEEEEE),
            size: 15.0,
          ),
          incrementIconBuilder: (enabled) => FaIcon(
            FontAwesomeIcons.plus,
            color: enabled
                ? FlutterFlowTheme.of(context).secondary
                : Color(0xFFEEEEEE),
            size: 15.0,
          ),
          countBuilder: (count) => Text(
            count.toString(),
            style: FlutterFlowTheme.of(context).titleSmall,
          ),
          count: _model.countControllerValue ??= 1,
          updateCount: (count) async {
            setState(() => _model.countControllerValue = count);
            if (_model.countControllerValue! > widget.max!) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Not enough.',
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  duration: Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
              setState(() {
                _model.countControllerValue = 0;
              });
            }
          },
          stepSize: 1,
          minimum: 1,
        ),
      ),
    );
  }
}
