import 'package:meta/meta.dart';

class AppUserModel {
  final String id;
  final String task;
  final String extraNote;
  final bool complete;

  AppUserModel(
      {@required this.id,
      @required this.task,
      this.extraNote,
      @required this.complete});

  factory AppUserModel.fromMap(Map<String, dynamic> data, String documentId) {
    if (data == null) {
      return null;
    }

    String task = data['task'];
    String extraNote = data['extraNote'];
    bool complete = data['complete'];

    return AppUserModel(
        id: documentId, task: task, extraNote: extraNote, complete: complete);
  }

  Map<String, dynamic> toMap() {
    return {
      'task': task,
      'extraNote': extraNote,
      'complete': complete,
    };
  }
}
