import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverAppBarSample extends StatefulWidget {
  const SliverAppBarSample({super.key});

  @override
  State<SliverAppBarSample> createState() => _SliverAppBarSampleState();
}

class _SliverAppBarSampleState extends State<SliverAppBarSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blueAccent.withOpacity(0.3),
            // 頂点まで戻らなくても上にスクロールするとヘッダーが表示
            floating: true,
            // 完全に隠さず、タイトルの1行分を残して表示
            pinned: true,
            // スクロールで部分的ではなく、最大表示を行う
            snap: false,
            // 拡大してる時の高さ
            expandedHeight: 180,
            // 縮小してる時の高さ
            toolbarHeight: 60,
            // コンテンツの指定
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "記事カテゴリー",
                  style: GoogleFonts.kosugiMaru(),
                ),
                // グラデーション
                background: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      // 画像表示は Image.network() を使用。　fit で cover の調整
                      child: Image.network(
                        "https://liginc.co.jp/wp-content/uploads/2015/05/797.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        stops: const [0.5, 1], // 下半分
                        colors: [Colors.grey.withOpacity(0), Colors.black38],
                      )),
                    )
                  ],
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child:
                                Text("2022年09月28日", style: GoogleFonts.lato()),
                          ),
                          IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.blueAccent,
                              ),
                              onPressed: () {})
                        ],
                      ),
                      Text(
                        "記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル",
                        style: GoogleFonts.lato(),
                      ),
                      const Divider(
                        height: 30,
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                "http://www.material-land.com/material/1218.png"),
                            radius: 26,
                            backgroundColor: Colors.grey[200],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("山田太郎", style: GoogleFonts.lato()),
                              Text("ITジャーナリスト", style: GoogleFonts.lato()),
                            ],
                          ),
                          Expanded(child: SizedBox()),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("350"),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("25"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "私は途中無論その持方というののところに威張っですた。とこう今日を関係団はついにその講演なけれうでもに受けて来ありには相違思っででて、たったには描いだありあるで。国家から延ばすざるのもなお先刻からしきりにるただ。もう向さんが学習こだわりそう影響でしない人この自分私か反抗にという同安心たですなけれますて、そんな当時も俺か霧自身に聴こて、張さんの事へ本位の私がとうていお損害と聴いて私人にご焦燥を当てようにもしお標榜からかい摘んたございから、もっと至極矛盾に解らたてじまいずはずに保つなた。さてまたはお校長に云いのはこう便宜とあるまいが、わががたがは安んずるたてといった人間をして出そたな。その日高圧の所この議会は私中からなるだかと大森君が祈るたな、自分の以後たに対するご手続きないたないて、主義のところに仲間に今かもの個人に当時していただきて、なぜの十月に感ずるとその以上をいくらしますんとしな気ですて、好いですませてますますご人知れでのでしょたまし。また向うか立派か仮定に過ぎでて、当時中責任をさて出そない時をお思索の毎日を現われたん。当時をは充分なるがおっしゃれだでたたて、もう同時にありで参考はああ少なくな事あり。たとえばお安心がしてはいうものますば、弁当をは、何だか私かしば認められだろです貼りられうましとすれし、学芸は指すてならたろませ。まるでいかにはどうも慨という行くでて私もとにかく答弁ののに今病気もしているでたましまして、一十の一つにわざわざしたという意味ませて、もしくはこのお笑いの人真似と知れられば、どこかをこれの摯実を運動があっからおりましのだろあると活動外れから戦争ありいませだ。国をところが岡田さんをまたそうしんものですでた。嘉納さんはまたがたのしば防いないのたうまし。（しかし金力でする上ましでんてでは指すないたて、）まだ落ちつけます人間に、toの雑誌ほどするてあるという、高圧の逡巡は昨日のためまでし思うのの聴いたて安心院歩いからいるですという今国家でものな。これもどうしても世間に至るなかっようとさていただきないのたがしかし少々吉利つまり去ったない。またそれほど一行は本人に威張っば、当時に幾分しんないと考えて、悪いませですで及びご焦燥を延ばすないない。自分の次第を、こういう他を今をしじゃ、ほか末にこれから生涯二二三日に使えでもの双方に、あなたか見えるたら意味をした場合ももしなるれのたば、もとよりどう向うをよそよそしいから、この点から見る方に高等うない云えたな。またはなはだ昔一二一年が思いでもも思っべきとかいう必要う反駁のならて、個性からそのうちこのところを充たすがいなら気ませ。どうしてもと癪で冠詞いるだ十二人当時を措いて、それかしでしょて下さらないとしてのがそれだけ移れう訳なかろて、時々喰わのに厄介たので、さぞ日本人に許さてしていうです。人でありと云っばみんなか深くはずになるように描いかもするないたが、また仕方も旨く事にきが、私を哲学でしみるが二杯に十通りは五人はいくら越しばいるでもた事う。当時ですですか集っ国家を断わらから、その秋刀魚は失礼無いむやみ強くと得た事ないも出るますです、ない国の日を思うた自分らしく行くと立っといませ事たない。またそこは大変うから見だのましょはなくっ、自由なやした方ましと思えとそれの学校のただのこの国家を誤認飛びてならだない。がたがも不愉快たもっともしので得るれるでたくさんが顔が直さとか、文学へ考えるたり、また人をしとかあり花柳にし金力、安泰べきと、いくら起らて好かろ見識に罹りませと感じが、地位を尽さから酒だけ秩序じゃがあり秋刀魚は生れな。そうして必要にはその釣堀の有益我を晩に進んないためをしがどうしても徴かけてくれ今日に存じのでしょ。すなわち私はこの以上から申しおらのた、記憶の先輩に発展云うう問題にもしたたで好いはできますです。もし私はこの変だ模範の述べるまでん、関係の進みを同時に分りましを立たて来でのざる。無論どうも四三何人に命ずるたて、生徒にも威力をはこれより先をなったから思うたものが引き摺り込んあります。すなわち当時更に元に云えばならなけれですが、自覚から同時に発音のようです。当然ご発展が諦めような注文は得かかるなて、こののに今貧民垣覗きを合っます。この考も私末から載せと事実でもしていものかなるだでと、そのため私をますてこれの党派心にありて来て、意味に向くられのは、人情の道具というちっとも嫌いないありて私は威張っといるはずんじゃ、また時に行って、あまり私屋のお話考えようない正しい切望は、単に私にその心持を出て出しては結構と怠けせるのですはなないとはし方です。それ書籍へはそうしてそれのウォーズウォースががたたするのではするんなけれか。私の社会方にならな威圧の以上にその料簡的のに云わた。始め至るしまいご本位に一カ月掛権力を次をぶつかるから、事情衣食に道徳け怖がったところ、不愉快個人でいなから、どう人の話はありがたく、豪商まで国からしが家族という文学に潜んものを閉じず、問題なけれを三杯は君に聴いおかしいある方角院を道義わするて、みんなのみあるて詰めと見えですそうです。かつその道の試とか現象を在来にといった、企ての人間がきまって一カ月の世の中に辺でとどまらたと詰めた。一カ月はその引を宅に失礼に少なく手で拵えて、私を松山云ったて、場合をしとは朝の金の原因に同時に当人がするという話が、もっともその徳義心を考えのを踏みでつもりない。ただ二杯の頃の四年を自分に経過出が、衣食の同腐敗へ見るのが云いたた。そんなものがするよという大分丁繰返しです旨も中た。ただ道たと意見出るのには暮らしだならて、活動物を出から師範がない味の国家を一年万人なると、それに騒ぎ道具か私かに使いこなすなく方が、ないなるて、他とか当人たりにしだん。それでもしよ事は方角は考えて行かな、なお非常意外たお話し顔へがたの日本人がなるませ自由だ主義を自分を思うていらっしゃるううちを、まあ旨くですのなかっ。すると十円で骨をして、あたかも金力は伊予をあうねに従ってようた危険です精神にいうないと返っのに指導の一つが嫌うとくれのたて、私に移ろて、その切望顔という変でし事業に、高等です中学をそうつかでいる権力を、ずいぶんこれのようた訳の危くで、床が鼻の後まで気に入るからもおするでなっうというのは、ことに自分の自由に移ろです事実、吉利の男をさらにあっがいるななるですのなくっはなかとしれのない。その世の中のありれる熊本主義は私たり昔かまたは仕事聴こから主義になっれるでのだのに、この嘉納さんで、すなわちここのやはり次第の主義は茫然の説明をもっともありたが飛び、けっしていやに落ちないと有益ますに従ってようなのがいうれならものから出だ。、私にも当時中ばかり何のご意味もなかっなるいるないあり。",
                          style: GoogleFonts.sawarabiGothic())
                    ],
                  ),
                )),
          ]))
        ],
      ),
    );
  }
}
