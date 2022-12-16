
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  String _img = 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg';
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Merhaba Flutter 2.Bölüm'),
        ),
        body:containerDersleri(), 
        
        //Container(
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: flexiblecontainer,
        //     //expandedcontainer
        //     ),
        // ),
        //kasimyazisiveartisembolleri(),burda çağırısak alttaki kodları buraya çekiyoruz
        // body: containerDersleri(), bu harika resim oalyını istersek çağarabiliriz
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Tıklandı');
          },
          child: Icon(Icons.add,
            color: Colors.white,),
          backgroundColor: Colors.red,
        ),

      ),
      
    );
  }
 List<Widget> get flexiblecontainer {
    return [
            
            
            Flexible(
              flex: 1,
              child: Container(
                width: 200,
                height: 75,
                color: Colors.black,
              ),
            ),
            Flexible( //flexible ile containerları ayarlayabiliriz max verdiğim with kadar genişler eğer küçülmen gerekiyorsa küçül demek
              flex: 1,
              child: Container(
                width: 200,
                height: 75,
                color: Colors.purple,
              ),
            ),

        ];
  }
  List<Widget> get sorunlucontainer {
    return [
            
            Container(
                width: 75,
                height: 75,
                color: Colors.red,
            ),
            
            Container(
              width: 75,
              height: 75,
              color: Colors.black,
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.green,
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.blue,
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.yellow,
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.purple,
            ),

        ];
  }
List<Widget> get expandedcontainer {
    return [
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.red,
              ),
            ),
           Expanded(
            flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.cyan,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.purple,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 75,
                height: 75,
                color: Colors.black,
              ),
            ),

        ];
  }
  Container kasimyazisiveartisembolleri() {
    return Container(
        color: Colors.black,
        
        
        child: Column( //Row( 
          mainAxisSize: MainAxisSize.max ,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly, //boşluklar eşit olacak şekilde ayarlar
          // mainAxisAlignment: MainAxisAlignment.spaceBetween, //boşluklar ilki başa sonu sona olacak şekilde ayarlar
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // crossAxisAlignment: CrossAxisAlignment.center, //dikeyde ortalar yatay düzlem olarak düzeninin bozmadan
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
            Text("K",
            style: TextStyle(
              fontSize: 64,
              color: Colors.red,
            ),),
            Text("A",
            style: TextStyle(
              fontSize: 64,
              color: Colors.red,
            ),),
            Text("S",
            style: TextStyle(
              fontSize: 64,
              color: Colors.red,
            ),),
            Text("I",
            style: TextStyle(
              fontSize: 64,
              color: Colors.red,
            ),),
            Text("M",
            style: TextStyle(
              fontSize: 64,
              color: Colors.red,
            ),),
          ],),
          Icon(Icons.add_circle,
          size: 64,
          color: Colors.red,
          ),
          Icon(Icons.add_circle,
          size: 64,
          color: Colors.purple,
          ),
          Icon(Icons.add_circle,
          size: 64,
          color: Colors.green,
          ),
          Icon(Icons.add_circle,
          size: 64,
          color: Colors.blue,
          ),
        ],),
      );
  }

  Widget containerDersleri() {
    return Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 350,
          height: 250,
          
          child: FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 100,
            textColor: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150),
              topRight: Radius.circular(150),
            ),
            image: DecorationImage(
              image: NetworkImage(_img), //arka plana resim getirdik _img ile resmi gizledik yukarda ve burda sunduk
              fit: BoxFit.cover, // Resmi Bütün boxa yayar
              repeat: ImageRepeat.repeat, // resmi tekrarlar bizim resim sığdığı için tekrarlamadı küçük boyutlu resimlerde genelde kullanılır
              
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 10),
                blurRadius: 10,
              ),
            ],
          ),

        ),
      );
  }
}






// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: Scaffold(
//         // backgroundColor: Colors.yellow,
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text('Merhaba Flutter'),
//         ),
//         body: Center(
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.red,
//             child: Container(
//               child: Container(
//                 alignment: Alignment.center,
//                 color: Colors.blue,
//                 width: 100,
//                 height: 100,
//                 margin:EdgeInsets.all(20), 
//                 child:Text('Merhaba Flutter',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),),
//               ),
//             ),
//           ),
//         ),
//         // body: Container(
//         //   //margin bir widgetin  diğer widgetlerden ne kadar boşluk bırakacağını belirtir
//         //   //padding bir widgetin içindeki elemanlarla ne kadar boşluk bırakacağını belirtir
//         //   margin: EdgeInsets.all(10), //her taraftan 10 boşluk bırakır
//         //   // margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10), // boşlukların her tarafını sen belirliyorsun
//         //   // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // yatay ve dikey boşlukları ayarlıyoruz
//         //   alignment: Alignment.center,
//         //   padding: EdgeInsets.all(20),
//         //   width: 200,
//         //   height: 200,
//         //   color: Colors.blue,
//         //   child: Center(
            
//         //     child: Text('Merhaba Flutter',
//         //     ), //BİR ELEMAN ALIR child
            
//         //   ),
//         //   // constraints: BoxConstraints(minHeight: 100, minWidth: 100, maxHeight: 300, maxWidth: 200),
//         // ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             print('Tıklandı');
//           }, // butona tıklandığında ne olacağını belirtiyoruz FloatingActionButton varsa mutlaka koymak zorundasın
//           child: Icon(Icons.add),
//         ),
//       ), // home zorunlu parametre
//     );
//   }
// }