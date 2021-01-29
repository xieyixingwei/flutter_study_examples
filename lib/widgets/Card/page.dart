import 'package:helloworld/components/ShowPage.dart';
import './L01_Card.dart';
import './L02_CircleAvatar.dart';


class CardPage extends ShowPage {
  final String title = "Card";
  final List<ShowPage> items = [
    CardExampleA(),
    CircleAvatarExampleA(),
  ];
}
