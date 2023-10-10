

import 'package:flutter/foundation.dart';
import 'package:unibill/models/pay_page_model.dart';

// ViewModel部分。UIとModelの橋渡し役を果たします。
class PortfolioViewModel extends ChangeNotifier {
  final Portfolio _portfolio = Portfolio(totalValue: 0);

  double get totalValue => _portfolio.totalValue;

  void setTotalValue(double value) {
    _portfolio.totalValue = value;
    notifyListeners();
  }

  // TODO:他にもAPIからデータを取得したり、データの更新を行うメソッドを追加する
}
