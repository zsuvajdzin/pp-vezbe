//OPIS: switch iskaz
//RETURN: 5

int main() {
  int state;
  state = 2;

  switch(state) {
    case 1: x = 1; break;
    case 2: { x = 5;} break;
    default: x = 10;
  }
  return x;
}
