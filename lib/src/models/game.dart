import 'package:n_gamepad/n_gamepad.dart';

import '../layouts/menu_layout.dart';

class Controller extends Game {
  Controller(super.code) : super(name: 'Gamepad');

  @override
  Layout build(StatePacket packet) {
    switch (GameState.values[packet.state]) {
      case GameState.settings:
        return MenuLayout(packet.data);
    }
  }

  @override
  int get states => GameState.values.length;

  @override
  int get updates => 0;
}

enum GameState {
  settings,
}
