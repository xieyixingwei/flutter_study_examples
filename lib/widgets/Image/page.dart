import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_Image.dart';
import './L02_ClipOval.dart';


class ImagePage extends ShowPage {
  final String image = "lib/widgets/Image/images/Image.PNG";
  final String title = "Image";
  final List<ShowPage> items = [
    NetworkImageExample(),
    LocalImageExample(),
    ClipOvalExampleA(),
    ImageRadiusExample(),
  ];
}
