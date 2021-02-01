class Task {
  Task({this.text, this.isChecked});
  String text;
  bool isChecked;

  bool toggleChecked() {
    return this.isChecked = !this.isChecked;
  }
}
