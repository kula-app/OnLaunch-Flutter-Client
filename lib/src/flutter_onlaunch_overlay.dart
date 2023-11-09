import 'package:flutter/material.dart';
import 'package:flutter_onlaunch/src/data/ui/onlaunch_message.dart';
import 'package:flutter_onlaunch/src/flutter_onlaunch.dart';

import 'data/model/message.dart';

class OnLaunchOverlay extends StatefulWidget {
  final Widget child;

  const OnLaunchOverlay(
      {Key? key, this.shouldCheckOnInit = true, required this.child})
      : super(key: key);

  final bool shouldCheckOnInit;

  @override
  _OnLaunchOverlayState createState() => _OnLaunchOverlayState();
}

class _OnLaunchOverlayState extends State<OnLaunchOverlay> {
  final dismissedIds = [];
  bool _usedPreview = false;

  @override
  Widget build(BuildContext context) {
    if (widget.shouldCheckOnInit) {
      OnLaunch().check();
    }
    if (!_usedPreview) {
      OnLaunch().preview(blocking: false);
      _usedPreview = true;
    }

    return Stack(
      children: [
        widget.child,
        StreamBuilder<Message>(
          stream: OnLaunch().messageStream.distinct(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              final message = snapshot.data!;
              if (dismissedIds.contains(message.id)) {
                return Container();
              } else {
                return _buildMessages(message, context);
              }
            } else {
              return Container();
            }
          },
        ),
      ],
    );
  }

  Widget _buildMessages(Message message, BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return message.blocking;
      },
      child: Scaffold(
        appBar: _buildAppBar(message),
        bottomNavigationBar: _buildActions(message, context),
        body: OnlaunchMessage(message: message),
      ),
    );
  }

  Widget _buildActions(Message message, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: !message.blocking
          ? message.actions
              .map((action) => ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: const EdgeInsets.all(20.0),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10.0),
                    // ),
                  ),
                  onPressed: () => dismissMessage(message),
                  child: Text(action.title,
                      style: Theme.of(context).textTheme.bodyLarge)))
              .first
          : null,
    );
  }

  AppBar _buildAppBar(Message message) {
    return AppBar(
      actions: [
        if (!message.blocking)
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => dismissMessage(message),
              )),
      ],
    );
  }

  void dismissMessage(Message message) {
    setState(() {
      dismissedIds.add(message.id);
      OnLaunch().markMessageDismissed(message.id.toInt());
    });
  }
}
