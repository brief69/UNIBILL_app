// /Users/ir/Desktop/unibill_app/unibill/lib/views/tabBarViews/wallet_page.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unibill/models/wallet_model.dart';


class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WalletViewModel()..fetchWalletDetails(),
      child: Consumer<WalletViewModel>(
        builder: (_, viewModel, __) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: kToolbarHeight),  // AppBarのデフォルトの高さだけ余白をとります。
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // ユーザー名と公開キーの間に少しスペースをとる
                        const SizedBox(width: 15.0),
                        // ユーザー名表示部分
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const EditProfilePage()),
                            );
                          },
                          style: TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 0, 26, 1)),
                          child: Text(viewModel.profile?.username ?? 'default', style: const TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 3.0 * kToolbarHeight),  // 3行分の高さだけ余白をとる
                  // TODO:横に3個ならぶグリッドビューを実装する
                  // TODO:グリッドビューは隙間なし、各グリッドビューが行うデータはそれぞれ違う可能性も考慮しなければならない。
                  // TODO:グリッドビューは、支払い方法や通貨などである。例えば、一つのグリッドはpaypay, 一つのグリッドはLINE Pay, 一つのグリッドはクレカ、一つのグリッドは暗号通貨など。
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
