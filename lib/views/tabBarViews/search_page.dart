// /Users/ir/Desktop/unibill_app/unibill/lib/views/tabBarViews/search_page.dart

class SearchPage extends StatefulWidget {
  SearchPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  SearchPageState createState() => SearchPageState();
  appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 0, 30, 1),
            title: null,
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: [// appbar上のタブたち
                const Tab(text: 'BLAC LIST'),
                Tab(icon: Icon(Icons.arrow_upward), text: 'PAY'), 
                Tab(icon: Icon(Icons.sync), text: 'FUN'),
                Tab(icon: Icon(Icons.arrow_downward), text: 'RECE'),
                Tab(icon: Icon(Icons.settings), text: 'SETT',),
              ],
            ),
          ),
  // TODO: appbarに、左から順にblacタブ、payタブ、funタブ、receタブ、settタブを並べる
  // TODO: 
  // TODO: appbarの色は、背景色が緑で、アイコンと文字は白である。
  // TODO: blacをタップすると、blacタブのページに遷移する
  // TODO: PAYで、グリッドビューを動かすことで支払い方法の優先順位を変更できる。
  // TODO: FUNで、グリッドビューを動かすことで交換の優先順位を変更できる。
  // TODO: RECEで、グリッドビューを動かすことで受け取り方法の優先順位を変更できる。
  // TODO: settをタップすると、settingsPageに遷移するのページに遷移する
  //
  // 
  // TODO: PAYで、グリッドビューをタップすると、その支払い方法のページに遷移する
  // TODO: FUNで、グリッドビューをタップすると、その交換のページに遷移する
  // TODO: RECEで、グリッドビューをタップすると、その受け取り方法のページに遷移する

  // TODO: PAYで、支払い方法のページには支払い方法を追加ボタンがあり、WALLETタブのPAYに飛び、支払い方法を追加できる
  // TODO: FUNで、交換のページに遷移するWALLETタブのFUNに飛び、上限金額と下限金額、削除などの設定ができる
  // TODO: サーチページ/RECEでグリッドビューをタップすると、WALLETタブのRECEに飛び、下限金額を変更できる
  // TODO: 変更し設定が完了したら、サーチページに戻る
  // 

  // TODO: PAYには、自分が持っていない支払い方法や通貨のグリッドも全て表示される
  // TODO: FUNには、自分が持っていない支払い方法のグリッドは表示されない
  // TODO: RECEには、自分が持っていない受け取り方法のグリッドは表示されない
  // TODO: 

  // TODO: サーチページで、支払い方法を追加するボタンを押すと、支払い方法の追加ページに遷移するwallet_page.dartに飛ぶ
  // TODO: サーチページで、支払い方法を追加するボタンを押すと、支払い方法の追加ページに遷移するwallet_page.dartに飛ぶ
  // TODO: サーチページで、支払い方法の選択ができる。
  // TODO: サーチページで、受け取り方法を追加するボタンを押すと、受け取り方法の追加ページに遷移するwallet_page.dartに飛ぶ
  // TODO: サーチページで、受け取り方法の選択ができる。
  // TODO: サーチページで、通貨を追加するボタンを押すと、通貨の追加ページに遷移するwallet_page.dartに飛ぶ
  
}