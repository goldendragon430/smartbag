import '/backend/api_requests/api_calls.dart';
import '/components/add_stock_component_widget.dart';
import '/create_pie/create_pie_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/web_view_connect/web_view_connect_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddStocksModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<dynamic> assets = [];
  void addToAssets(dynamic item) => assets.add(item);
  void removeFromAssets(dynamic item) => assets.remove(item);
  void removeAtIndexFromAssets(int index) => assets.removeAt(index);

  List<dynamic> addedAssets = [];
  void addToAddedAssets(dynamic item) => addedAssets.add(item);
  void removeFromAddedAssets(dynamic item) => addedAssets.remove(item);
  void removeAtIndexFromAddedAssets(int index) => addedAssets.removeAt(index);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAccount)] action in addStocks widget.
  ApiCallResponse? account;
  // Models for AddStockComponent dynamic component.
  late FlutterFlowDynamicModels<AddStockComponentModel> addStockComponentModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    addStockComponentModels =
        FlutterFlowDynamicModels(() => AddStockComponentModel());
  }

  void dispose() {
    addStockComponentModels.dispose();
  }

  /// Additional helper methods are added here.

}
