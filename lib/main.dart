import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hi. Welcome to my Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF474ae5)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Portfolio Homepages'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey[400]!,
            width: 1,
          ),
        ),
        title: Row(
          children: [
            Text(
              "Hardik Kalasua",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'About',
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Projects',
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Certifications',
                style: TextStyle(
                  color: Theme.of(context).textTheme.titleLarge?.color,
                ),
              ),
            ),
          ],
        ),
        actions: [
          const Text(
            'Follow Me ',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const Icon(
            Icons.remove,
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.facebook),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.instagram),
          ),
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.linkedin),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hold your Horses! This site is currently under development. Check back again in a while. Thank you.',
            ),
            Text(
              'I Work with Python, Django and Flutter.',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'Checkout my projects to see some awesome stuff.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () {},
                  child: const Text('Know More'),
                ),
                const SizedBox(
                  width: 10,
                ),
                FilledButton.icon(
                  style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFFC8E2FF),
                      foregroundColor:
                          Theme.of(context).textTheme.displayLarge?.color),
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.github),
                  label: const Text('GitHub'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Chat',
        child: const FaIcon(FontAwesomeIcons.facebookMessenger),
      ),
    );
  }
}
