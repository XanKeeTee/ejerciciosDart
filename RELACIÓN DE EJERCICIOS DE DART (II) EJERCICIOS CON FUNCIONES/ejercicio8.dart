void main() {
  print(mcd(48, 18));
}

int mcd(int a, int b) {
  if (b == 0) {
    return a.abs();
  }
  return mcd(b, a % b);
}