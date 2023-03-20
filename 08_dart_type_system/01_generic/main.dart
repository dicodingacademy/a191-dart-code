void main() {
  List<Bird> birdList = [Bird(), Dove(), Duck()];
}

class Animal {}

class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}
