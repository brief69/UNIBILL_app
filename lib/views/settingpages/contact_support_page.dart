

// contact_support_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unibill/viewmodels/settingviewmodels/contact_viewmodel.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  ContactPageState createState() => ContactPageState();
}

class ContactPageState extends State<ContactPage> {
  final contactController = TextEditingController();

  @override
  void dispose() {
    contactController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider<ContactViewModel>(context as Create<ContactViewModel, ProviderRef<ContactViewModel>>);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CONTACT', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 0, 19, 3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('あなたのフィードバック:', style: TextStyle(color: Colors.black, fontSize: 16)),
            const SizedBox(height: 8.0),
            Expanded(
              child: TextField(
                controller: contactController,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: 'こちらにフィードバックを入力してください...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await viewModel.sendFeedback(contactController.text);
                  contactController.clear();
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);

                },
                child: const Text('送信'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: viewModel.contactViaTwitter,
                child: const Text('Twitterで問い合わせる'),
              ),
            )
          ],
        )
      ),
    );
  }
}
