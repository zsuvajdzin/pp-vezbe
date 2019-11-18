//OPIS: dva ugnjezdena bloka
//RETURN: 26

int main() {
  int x;
  int y;

  x = 2;
  y = 3;
  {
    int x;
    int a;
    x = 5;
    a = 11;
    y = -42;
    {
      int x;
      int a;
      x = 42;
      a = 15;
      x = x + a + y;
      y = x + a;
    }
    y = x + y - a;
  }
  return x + y;
}

