import 'package:rearch/rearch.dart';

main() {
  final capsuleContainer = CapsuleContainer();

  final names = [
    ...capsuleContainer.read(namesCapsule),
  ];

  print(names);
}

List<String> namesCapsule(CapsuleHandle use) => [
      ...use(rawNamesCapsule).map(use).nonNulls,
      // ...use(rawNamesCapsule).map(use.call).nonNulls,
    ];

Iterable<Capsule<String?>> rawNamesCapsule(CapsuleHandle use) => [
      name1,
      name2,
      name3,
      name4,
      name5,
      name6,
    ];

String name1(CapsuleHandle use) => 'John';

String name2(CapsuleHandle use) => 'Paul';

String? name3(CapsuleHandle use) => null;

String name4(CapsuleHandle use) => 'Paul';

String? name5(CapsuleHandle use) => null;

String name6(CapsuleHandle use) => 'Paul';
