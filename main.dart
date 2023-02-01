void main() {
  int outerFunction(int x) {
    int innerFunction(int y) {
      return x + y;
    }
    return innerFunction(x);
  }

  print(outerFunction(2));
}
