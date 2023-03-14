import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class RightPage extends StatefulWidget {
  const RightPage({super.key});

  @override
  State<RightPage> createState() => _RightPageState();
}

class _RightPageState extends State<RightPage> {
  bool isswitch = false;

  bool? isCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EVERY IY IS RIGHT'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_sharp),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('ACTIONS');
            },
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/green.jpg', height: 400, scale: 5.2),
            const SizedBox(
              height: 10.0,
            ),
            const Divider(color: Colors.blueGrey),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.white10,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'LETS DO IT',
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: isswitch ? Colors.redAccent : Colors.blue,
                ),
                onPressed: () {
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text('row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            Switch(
              value: isswitch,
              onChanged: (bool newBool) {
                setState(() {
                  isswitch = newBool;
                });
              },
            ),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            Image(
                image: CachedNetworkImageProvider(
                    'https://scaffoldtecnologia.com.br/wp-content/uploads/2021/10/app-2.png'))
          ],
        ),
      ),
    );
  }
}
