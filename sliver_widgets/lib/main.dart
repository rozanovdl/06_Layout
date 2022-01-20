import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: IconButton(
            icon: Icon(Icons.view_headline, color: Colors.white),
            onPressed: () {},
          ),
          expandedHeight: 300.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            title: Text(
              'Page title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            background: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.color),
              child: Image.network(
                'https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
              "Пробуждение завершилось диким воплем, и первая мысль, пришедшая ему в голову, была: Началось. Кто-то решился..."
              "Корпус корабля был взломан. Заряд распорол металл по сварным швам, на рваных краях уже намерз лес сосулек. А над ними клубились снежные вихри, как поверхность перевернутого океана, Где-то недалеко сверкнула молния, на миг осветив разрушенные коридоры судна."
              "Охотник выскочил из развалин мгновенно, всеми чувствами стараясь обнаружить постороннее присутствие. Его видящие во тьме глаза осматривали огромный корабль как заброшенный город — разрушенные башни и занесенные снегом плато, заключенные в ледяной кокон."
              "Обнаружить воров не составило большого труда. Их осторожный путь по умирающему кораблю, каждый грубый шаг эхом отдавался у охотника в ушах. Фигуры в косматых шубах неуклюже переваливались, глаза из-под защитных очков поблескивали черными бусинками, делая своих обладателей похожими на древних волосатых приматов, изучающих непонятную громаду, упавшую с небес. А сам охотник сейчас был полубогом, охотящимся на обезьян."
              "Глупцы. Воры..."
              "Они решились..."
              "Воры спешили, он видел. Может, услышали крик при его пробуждении, возможно, подозревали, что они не одни находятся в корпусе разграбленного судна. Ужас преследуемых был приятным; охотник взвыл еще раз, гнев и возбуждение переполняли его. Он взобрался по шатающимся фермам разрушенных палуб с презрительной непринужденностью, разминая затекшие ноги, и припал в тени сломанной опоры. Отсюда он мог наблюдать за добычей, скользящей и спотыкающейся, со смешной паникой реагирующей на принесенный ветром вой."),
        )
      ],
    ));
  }
}
