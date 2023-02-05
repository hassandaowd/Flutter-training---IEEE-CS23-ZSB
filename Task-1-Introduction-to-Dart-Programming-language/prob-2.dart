import 'dart:io';
void main() {
  List<int> num =[];
  print('Enter the elements of the list , if you finish type stop');
  while(true){
    String? input = stdin.readLineSync();
    String s = input ?? '';
    if(s == 'stop')
      break;
    int n = int.parse(s);
    num.add(n);
  }
  print('Elements that are less than 5');
  for(int n in num)
    if(n < 5)
      print(n);
}
