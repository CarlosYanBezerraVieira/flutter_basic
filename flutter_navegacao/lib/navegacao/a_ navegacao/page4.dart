import 'package:flutter/material.dart';
import 'package:flutter_navegacao/navegacao/a_%20navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      settings: const RouteSettings(name: "page1"),
                      builder: (context) => const Page1(),
                    ),
                    ModalRoute.withName("page2"),
                  );
                  //removendo todas as paginas
                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute(
                  //     settings: const RouteSettings(name: "page4"),
                  //     builder: (context) => const Page1(),
                  //   ),
                  //   (route) => route.isFirst,
                  // );
                },
                child: const Text(" navegat por page para tela : 1"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
