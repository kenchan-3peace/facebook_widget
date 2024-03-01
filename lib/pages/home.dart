import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/gestures.dart';

class Home extends StatelessWidget {
  final Logger logger = Logger(); 
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Column(
      children: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
          children:[
            const Icon(Icons.account_circle, size: 40,),
            Expanded(child: 
            SizedBox(
              height: 30,
              child:  OutlinedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () {
                  logger.i('１が押された');
                }, 
                child: const Text('その気持ち、シェアしよう'),
              ),
            ),
            ),
            const Padding(padding: EdgeInsets.only(left: 15),
               child: Icon(Icons.filter, size: 25, color: Colors.green),
            ),
            ],
          ),
        ),
        const Divider(thickness: 5,),
        SizedBox(
          height: 200,
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 110,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('images/music.jpg'),fit: BoxFit.none,),
                      ),
                    ),  
                    Container(
                      width: 110,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.8), // 下から上に向かって徐々に透明にするための色
                            Colors.black.withOpacity(0.3), // 中間の透明度
                            Colors.black.withOpacity(0.0), // 上部の透明度
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 110,
                      alignment: Alignment.bottomCenter,
                      child: const Padding(padding: EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 80,
                          child: Text('お気に入りの音楽をシェアしよう', style:TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w900),textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: 'お気に入りの音楽をシェアしようを押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.0), // 下から上に向かって徐々に透明にするための色
                              Colors.black.withOpacity(0.0), // 中間の透明度
                              Colors.black.withOpacity(0.0), // 上部の透明度
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 190,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey),
                        color: const Color.fromARGB(255, 233, 233, 233),
                      ),
                    ),  
                    Container(
                      width: 110,
                      height: 120,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
                        image: DecorationImage(image: AssetImage('images/mypic.jpg'),fit: BoxFit.cover,),
                      ),
                    ),  
                    Container(
                      width: 110,
                      alignment: Alignment.bottomCenter,
                      child: const Padding(padding: EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 80,
                          child: Text('ストーリーズを作成', style: TextStyle(fontSize: 10), textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 40,
                      top: 105,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 40,
                      top: 105,
                      child: Icon(Icons.add_circle_rounded, size: 35, color: Colors.blue),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: 'ストーリーズを作成を押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 190,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('images/cream.jpg'),fit: BoxFit.cover,),
                      ),
                    ),
                    const Positioned(
                      left: 15,
                      top: 170,
                      child: SizedBox(
                      width: 110,
                      child: Padding(padding: EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 80,
                          child: Text('Cream', style:TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                    ) , 
                    Positioned(
                      left: 5,
                      top: 5,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 7.5,
                      top: 7.5,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/creamicon.jpg'),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: '1つ目のストーリーズを押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 190,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('images/lous.jpg'),fit: BoxFit.cover,),
                      ),
                    ),
                    const Positioned(
                      left: 15,
                      top: 170,
                      child: SizedBox(
                      width: 110,
                      child: Padding(padding: EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 80,
                          child: Text('lous', style:TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                    ) , 
                    Positioned(
                      left: 5,
                      top: 5,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 7.5,
                      top: 7.5,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/lousicon.jpg'),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: '2つ目のストーリーズを押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 110,
                      height: 190,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(image: AssetImage('images/aisha.jpg'),fit: BoxFit.cover,),
                      ),
                    ),
                    const Positioned(
                      left: 15,
                      top: 170,
                      child: SizedBox(
                      width: 110,
                      child: Padding(padding: EdgeInsets.only(bottom: 10),
                        child: SizedBox(
                          width: 80,
                          child: Text('AISHA', style:TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),
                    ) , 
                    Positioned(
                      left: 5,
                      top: 5,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 7.5,
                      top: 7.5,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/aishaicon.jpg'),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: '3つ目のストーリーズを押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 110,
                      height: 190,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)                      
                      ),
                    ),
                    Positioned(
                      top: 25,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/chan.jpg'),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      child: Text('ちゃんみな', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: '一人目のプロフィールを押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: SizedBox(
                        height: 20,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(fixedSize: const Size(90, 20), 
                            backgroundColor: const Color.fromARGB(255, 206, 230, 250), 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.zero, 
                          ),
                        onPressed: (){
                          Fluttertoast.showToast(
                            msg: '一人目の追加ボタンを押しました！',
                            fontSize: 18,
                          );
                        },
                        icon: const Icon(Icons.person_add_alt_1, size: 18, color: Color.fromARGB(255, 0, 69, 187),),
                        label: const Text('追加', style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 69, 187)),),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 15,
                      child: GestureDetector(
                        onTap:(){
                          Fluttertoast.showToast(
                            msg: '一人目の×を押しました！',
                            fontSize: 18,
                          );
                        },
                        child: const Icon(Icons.close, size: 15,),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 110,
                      height: 190,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)                      
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/卍.jpg'),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      child: Text('卍 Line', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: '二人目のプロフィールを押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: SizedBox(
                        height: 20,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(fixedSize: const Size(90, 20), 
                            backgroundColor: const Color.fromARGB(255, 206, 230, 250), 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.zero, 
                          ),
                        onPressed: (){
                          Fluttertoast.showToast(
                            msg: '二人目の追加ボタンを押しました！',
                            fontSize: 18,
                          );
                        },
                        icon: const Icon(Icons.person_add_alt_1, size: 18, color: Color.fromARGB(255, 0, 69, 187),),
                        label: const Text('追加', style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 69, 187)),),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 15,
                      child: GestureDetector(
                        onTap:(){
                          Fluttertoast.showToast(
                            msg: '二人目の×を押しました！',
                            fontSize: 18,
                          );
                        },
                        child: const Icon(Icons.close, size: 15,),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 110,
                      height: 190,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Colors.grey)                      
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/nicki.jpg'),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 80,
                      child: Text('Nicki Minaj', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                    ),
                    GestureDetector(
                      onTap:(){
                        Fluttertoast.showToast(
                          msg: '三人目のプロフィールを押しました！',
                          fontSize: 18,
                        );
                      },
                      child: Container(
                        width: 110,
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      child: SizedBox(
                        height: 20,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(fixedSize: const Size(90, 20), 
                            backgroundColor: const Color.fromARGB(255, 206, 230, 250), 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.zero, 
                          ),
                        onPressed: (){
                          Fluttertoast.showToast(
                            msg: '三人目の追加ボタンを押しました！',
                            fontSize: 18,
                          );
                        },
                        icon: const Icon(Icons.person_add_alt_1, size: 18, color: Color.fromARGB(255, 0, 69, 187),),
                        label: const Text('追加', style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 69, 187)),),
                      ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 15,
                      child: GestureDetector(
                        onTap:(){
                          Fluttertoast.showToast(
                            msg: '三人目の×を押しました！',
                            fontSize: 18,
                          );
                        },
                        child: const Icon(Icons.close, size: 15,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Divider(thickness: 5,),
      Column(
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://is1-ssl.mzstatic.com/image/thumb/AMCArtistImages126/v4/b8/37/b6/b837b65d-54ba-d815-ae08-6cfaac729036/3b193ebd-5511-4a3d-9f62-47cf35ab9571_ami-identity-472474680bd88a1215cc5b5571e08a16-2023-11-10T14-25-06.547Z_cropped.png/190x190cc.webp'),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('大門 弥生', style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Text('3日前・',style: TextStyle(color: Colors.grey),),
                          Icon(Icons.public,size: 15, color: Colors.grey,)
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(Icons.more_horiz,size: 25,),
                const SizedBox(
                  width: 25,
                ),
                const Icon(Icons.close,size: 25,),
              ],
            ),
          ),
          const Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 5),
            child: FaceBookText('大門弥生YouTubeChannelでスペシャルセッション🎬第一回目の後編🎤HOUSE SESSION CONCERT「ウタダイモン -スナック弥生-」後編９月２５日（金）２１：００〜こんな時代だからもっと音楽を楽しもう！'),
          ),
          Image.network('https://pbs.twimg.com/media/Eiv2L9QUcAAYUsu.jpg:large'),
          Row(
            children: [
              Padding(padding: const EdgeInsets.only(top:5, left: 10),
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/good.png'),
                    ),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.only(top:5, left: 10),
                child: Text('100', style: TextStyle(color:  Color.fromARGB(255, 72, 72, 72)),),
              ),
              const Spacer(),
              const Padding(padding: EdgeInsets.only(top:5, right: 10),
                child: Text('コメント10件・シェア100件', style: TextStyle(color: Color.fromARGB(255, 72, 72, 72)),),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.zero,
            child: const Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 72, 72, 72), 
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                debugPrint('test');
              },
              icon: const Icon(Icons.thumb_up_off_alt_outlined, size: 20,), 
              label: const Text('いいね！', style: TextStyle(fontSize: 12),), 
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 72, 72, 72), 
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                debugPrint('test');
              },
              icon: Image.asset('images/comment.png', width: 25, height: 25,),
              label: const Text('コメント', style: TextStyle(fontSize: 12),), 
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 72, 72, 72), 
                
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                debugPrint('test');
              },
              icon: const Icon(Icons.share, size: 20),
              label: const Text('シェア', style: TextStyle(fontSize: 12),), 
            ),
          ],
        ),
          const Divider(thickness: 5,),
        ],
      ),
      ],
    ),
    );
  }
}
class FaceBookText extends StatefulWidget {
  final String text;
  final int maxCharacters;

  const FaceBookText(
    this.text, {
    super.key,
    this.maxCharacters = 40, 
  });

  @override
  FaceBookTextState createState() => FaceBookTextState();
}

class FaceBookTextState extends State<FaceBookText> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         if (widget.text.length > widget.maxCharacters)
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: _expanded ? widget.text : widget.text.substring(0, widget.maxCharacters),
                  style: const TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: _expanded ? '' : '... ',
                  style: const TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: _expanded ? '' : 'もっと見る ',
                  style: const TextStyle(color:  Color.fromARGB(255, 72, 72, 72)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        _expanded = true;
                      });
                    },
                ),
              ],
            ),
          ),
          if (widget.text.length <= widget.maxCharacters)
            Text(widget.text),
      ],
    );
  }
}