import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:widgets_flutter/base_widget/Draggable.dart';
import 'package:widgets_flutter/base_widget/SliverToBoxAdapter.dart';
import 'package:widgets_flutter/base_widget/barcode.dart';
import 'package:widgets_flutter/base_widget/blur.dart';
import 'package:widgets_flutter/base_widget/circle_avatar.dart';
import 'package:widgets_flutter/base_widget/clipreact.dart';
import 'package:widgets_flutter/base_widget/constraints.dart';
import 'package:widgets_flutter/base_widget/hero.dart';
import 'package:widgets_flutter/base_widget/list_tile.dart';
import 'package:widgets_flutter/base_widget/listview.dart';
import 'package:widgets_flutter/base_widget/progress_bar.dart';
import 'package:widgets_flutter/base_widget/stack.dart';
import 'package:widgets_flutter/base_widget/text.dart';
import 'package:widgets_flutter/base_widget/transform.dart';

void main() {
  runApp(MyApp());
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // Initialize the Mobile Ads SDK
//   await MobileAds.instance.initialize();
//   runApp(MyAdApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack Widget Demo',
      home:DraggableDemoScreen()
      //BarcodeApp()
      //ProgressBarDemo()
      //TransformDemoScreen()
      //BlurScreen()
      //ListTileScreen()
      //CircleImageScreen()
      //TextExampleScreen()
      //RecommendedFoodDetails()
      //Constraintswidgets()
      
    //   HeroWidgets(
    //   imageUrl: "https://tse1.mm.bing.net/th?id=OIP.WZN0zQDAY2qLuN4o4zyxUQHaHE&pid=Api&P=0&h=180",
    // ),
    );
  }
}

 