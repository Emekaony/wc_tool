import 'util/display_line_count.dart';
import 'util/display_word_count.dart';
import 'util/display_byte_count.dart';

void main(List<String> args) async {
  String flag = args[0];
  String fileName = args[1];

  switch (flag) {
    case "-c":
      displayBytes(fileName);
      break;
    case "-l":
      displayLineCount(fileName);
      break;
    case "-w":
      displayWordCount(fileName);
    default:
      print("flag unsupported");
  }
}
