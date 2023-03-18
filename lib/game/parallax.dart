import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';

class ComponentParallaxBG extends FlameGame {
  @override
  Future<void> onLoad() async {
    add(MyParallaxComponent());
  }
}

class MyParallaxComponent extends ParallaxComponent<ComponentParallaxBG> {
  @override
  Future<void> onLoad() async {
    parallax = await gameRef.loadParallax(
      [
        ParallaxImageData('parallax/layer1.png'),
        ParallaxImageData('parallax/layer2.png'),
        ParallaxImageData('parallax/layer3.png'),
        ParallaxImageData('parallax/layer4.png'),
        ParallaxImageData('parallax/layer5.png'),
      ],
      baseVelocity: Vector2(20, 0),
      velocityMultiplierDelta: Vector2(1.8, 1.0),
    );
  }
}
