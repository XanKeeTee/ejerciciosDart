int mcd(int a, int b) {
  a = a.abs();
  b = b.abs();

  if (b == 0) {
    return a;
  }
  return mcd(b, a % b);
}

void main() {
  print(mcd(48, 18));
}