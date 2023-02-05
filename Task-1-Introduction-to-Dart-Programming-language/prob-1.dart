import 'dart:io';
void main() {
  print('Enter a string');
  String? ss = stdin.readLineSync();
  String s = ss ?? '';
  bool isPalindrome = true;
  for (int i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - i - 1]) {
      isPalindrome = false;
      break;
    }
  }
  if (isPalindrome){
    print('The string is a Palindrome');
  }
  else{
    print('The string is not a Palindrome');
  }
}
