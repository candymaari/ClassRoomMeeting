import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/scheduler.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  static const styleSender = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topLeft,
    nip: BubbleNip.leftTop,
    showNip: false,
  );
  static const styleReceiver = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    color: const Color.fromRGBO(225, 255, 199, 1),
    showNip: false,
  );
  ScrollController _myController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    SchedulerBinding.instance.addPostFrameCallback((_) {
      _myController.jumpTo(_myController.position.maxScrollExtent);
    });
    return ListView(
      controller: _myController,
      children: [
        Bubble(
          alignment: Alignment.center,
          color: const Color.fromRGBO(212, 234, 244, 1),
          child: const Text('TODAY',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 11)),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('Hello, World!', textAlign: TextAlign.right),
          showNip: true,
        ),
        Bubble(
          style: styleReceiver,
          child: const Text('How are you?', textAlign: TextAlign.right),
        ),
        Bubble(
          style: styleSender,
          child: const Text('Hi, developer!'),
          showNip: true,
        ),
        Bubble(
          style: styleSender,
          child: const Text('Well, see for yourself'),
        ),
      ],
    );
  }
}