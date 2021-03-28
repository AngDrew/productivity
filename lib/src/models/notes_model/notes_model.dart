import 'selectable_notes_model.dart';

class NotesModel {
  NotesModel({
    this.title,
    this.body,
    this.createdAt,
    this.multiSelect,
  });

  String title;
  String body;
  List<SelectableNotesModel> multiSelect;
  DateTime createdAt;
}
