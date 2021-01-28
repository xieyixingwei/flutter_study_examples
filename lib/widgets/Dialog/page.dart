import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_AlertDialog.dart';
import './L02_SimpleDialog.dart';
import './L03_ModalBottomSheet.dart';
import './L04_CustomDialog.dart';
import './L05_Fluttertoast.dart';


class DialogPage extends ShowPage {
  final String title = "Dialog";

  final List<ShowPage> items = [
    AlertDialogExampleA(),
    SimpleDialogExampleA(),
    ModalBottomSheetExampleA(),
    CustomDialogExampleA(),
    FluttertoastExampleA(),
  ];

}
