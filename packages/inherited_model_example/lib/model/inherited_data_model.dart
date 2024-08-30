import 'package:flutter/material.dart';

class InheritedDataModel extends InheritedModel<String> {
  final String message;

  const InheritedDataModel({
    super.key,
    required this.message,
    required super.child,
  });

  @override
  bool updateShouldNotify(InheritedDataModel oldWidget) {
    return message != oldWidget.message;
  }

  @override
  bool updateShouldNotifyDependent(
      InheritedDataModel oldWidget, Set<String> dependencies) {
    return dependencies.contains('message') && message != oldWidget.message;
  }

  static InheritedDataModel? of(BuildContext context, String aspect) {
    return InheritedModel.inheritFrom<InheritedDataModel>(context,
        aspect: aspect);
  }
}
