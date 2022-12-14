import 'package:flutter/material.dart';
import 'dart:math' as math;

class GridViewSample extends StatefulWidget {
  const GridViewSample({super.key});

  @override
  State<GridViewSample> createState() => _GridViewSampleState();
}

class _GridViewSampleState extends State<GridViewSample> {
  // デフォルトのグリッドの列数
  int _columnsCount = 3;
  // スクロールアニメーションの定義 & 初期化
  final ScrollController _scrollController = ScrollController();

  // スクロールアニメーションの後処理
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // スクロール位置を取得する
  @override
  void initState() {
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(// スクロールビューとアタッチされていれば位置表記,アタッチしてなかったら例外処理として「0」を表記
            "グリッドレイアウト　${_scrollController.hasClients ? _scrollController.position.pixels.toInt().toString() : 0} Pixels"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // グリッドを増やすボタン
          FloatingActionButton(
            // 複数のFloatingActionButtonを利用するときは heroTag で認識する
            heroTag: "grid_on",
            // 5列までは増やす
            onPressed: () {
              if (_columnsCount < 5) {
                setState(() {
                  _columnsCount++;
                });
              }
            },
            child: const Icon(
              Icons.grid_on,
              color: Colors.white,
            ),
          ),
          // スペース
          const SizedBox(
            height: 16,
          ),
          // グリッドを減らすボタン
          FloatingActionButton(
            heroTag: "grid_off",
            // 1列までは減らす
            onPressed: () {
              if (_columnsCount > 1) {
                setState(() {
                  _columnsCount--;
                });
              }
            },
            child: const Icon(
              Icons.grid_off,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          // トップに戻るボタン
          FloatingActionButton(
            heroTag: "arrow_upward",
            onPressed: () {
              // アニメーション処理
              // 第一引数：どこまで移動するか（今回は最上部の為、０）
              // 第二引数： duration -> アニメーションの期間を指定
              // 第三引数： curve -> アニメーションの推移の指定
              _scrollController.animateTo(0,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeInOutQuint);
            },
            child: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _columnsCount,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4),
        itemBuilder: (context, index) {
          // ランダムで色を作成する
          final Color colorGenerator =
              Color((math.Random(index).nextDouble() * 0x00FFFFFF).toInt())
                  .withOpacity(1);
          // 色を輝度で返す (0.0 ~ 1)
          final double colorBrightness = colorGenerator.computeLuminance();
          return Stack(
            children: [
              Container(
                color: colorGenerator,
                child: Center(
                  child: Text(index.toString(),
                      style: TextStyle(
                        fontSize: 42,
                        color:
                            colorBrightness > 0.5 ? Colors.black : Colors.white,
                      )),
                ),
              ),
              Positioned(
                  right: 10,
                  bottom: 7.5,
                  // カラーコードを表示
                  child: Text(
                      colorGenerator
                          .toString()
                          .toUpperCase()
                          // 文字列切り出し
                          .substring(6, 16)
                          // 文字列置換
                          .replaceAll("0X", "#"),
                      style: TextStyle(
                        fontSize: 11,
                        color:
                            colorBrightness > 0.5 ? Colors.black : Colors.white,
                        //  Colors.white,
                      ))),
            ],
          );
        },
      ),
    );
  }
}
