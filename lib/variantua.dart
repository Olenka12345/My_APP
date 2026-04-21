import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Цей віджет є коренем вашого застосунку.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Демо Flutter',
      theme: ThemeData(
        // Це тема вашого застосунку.
        //
        // СПРОБУЙТЕ ЦЕ: Запустіть застосунок за допомогою "flutter run".
        // Ви побачите фіолетову панель інструментів.
        // Потім, не закриваючи застосунок, змініть seedColor на Colors.green
        // і виконайте "гаряче перезавантаження" (hot reload).
        //
        // Зверніть увагу, що лічильник не скинувся до нуля;
        // стан застосунку зберігається під час перезавантаження.
        // Щоб скинути стан, використовуйте hot restart.
        //
        // Це працює і для коду, не лише для значень:
        // більшість змін можна перевірити через hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Головна сторінка демо Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Це головна сторінка вашого застосунку. Вона є stateful,
  // тобто має об'єкт стану, який впливає на її вигляд.

  // Цей клас є конфігурацією стану. Він містить значення (наприклад, title),
  // які передаються від батьківського віджета (App)
  // і використовуються у методі build.
  // Поля у Widget завжди позначаються як "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Виклик setState повідомляє Flutter,
      // що стан змінився, і потрібно перезапустити build,
      // щоб оновити інтерфейс.
      // Якщо змінити _counter без setState(),
      // build не викличеться і зміни не буде видно.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Цей метод викликається кожного разу при setState,
    // наприклад у _incrementCounter.
    //
    // Flutter оптимізований так, щоб швидко перебудовувати UI,
    // тому можна просто перебудовувати необхідні частини.
    return Scaffold(
      appBar: AppBar(
        // СПРОБУЙТЕ: змініть колір, наприклад на Colors.amber,
        // і виконайте hot reload.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Тут використовується title з MyHomePage
        title: Text(widget.title),
      ),
      body: Center(
        // Center розміщує дочірній віджет по центру
        child: Column(
          // Column розташовує віджети вертикально
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Ви натиснули кнопку стільки разів:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Збільшити',
        child: const Icon(Icons.add),
      ),
    );
  }
}