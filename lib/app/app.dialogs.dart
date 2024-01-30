// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedDialogGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';
import 'package:wanderlust_expeditions/ui/dialogs/auth_dialog/auth_dialog.dart';
import 'package:wanderlust_expeditions/ui/dialogs/auth_dialog/auth_dialog_mobile.dart';

import '../ui/dialogs/info_alert/info_alert_dialog.dart';
import 'app.locator.dart';

enum DialogType {
  infoAlert,
  authDialog,
  authDialogMobile,
}

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<DialogType, DialogBuilder> builders = {
    DialogType.infoAlert: (context, request, completer) =>
        InfoAlertDialog(request: request, completer: completer),
    DialogType.authDialog: (context, request, completer) =>
        AuthDialog(request: request, completer: completer),
    DialogType.authDialogMobile: (context, request, completer) =>
        AuthDialogMobile(request: request, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}
