int main(){
  int j = 10;
  int i = 2;
  int z = 4;
  i = ((i + j) << 9)*20;
  i = ((i + j) >> 3)/7;
  i = (((i + j) >> 3)/7) - 201;
  i = (i % 7) *4;
  i = ((i*i) + i)^4;
  return (i % 4) | 23;
}
