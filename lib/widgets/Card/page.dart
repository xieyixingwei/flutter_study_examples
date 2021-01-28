import 'package:helloworld/components/ShowWidgetComponent.dart';
import './L01_Card.dart';
import './L02_CircleAvatar.dart';


class CardPage extends ShowPage {
  final String title = "Card";
  final List<ShowPage> items = [
    CardExampleA(),
    CircleAvatarExampleA(),
  ];
}
