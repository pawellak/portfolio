import 'package:components_library/components_library_export.dart';
import 'package:components_library/controllers/snackbar_controller.dart';
import 'package:flutter/material.dart';

extension ContextLibraryExtensions on BuildContext {
  void showErrorToast(String errorMessage) {
    SnackBarController.showErrorSnackBar(this, errorMessage);
  }

  void showWarningToast(String errorMessage) {
    SnackBarController.showWarningSnackBar(this, errorMessage);
  }

  void showSuccessToast(String infoMessage) {
    SnackBarController.showSuccessSnackBar(this, infoMessage);
  }

  void loaderManager({required bool isLoading}) {
    if (isLoading) {
      showLoader();
    } else {
      hideLoader();
    }
  }

  void showLoader() {
    LoadingOverlay.of(this)?.show();
  }

  void hideLoader() {
    LoadingOverlay.of(this)?.hide();
  }
}
