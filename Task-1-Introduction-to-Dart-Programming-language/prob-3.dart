import 'dart:io';
void main() {
  Map birthday = new Map() ;
  birthday['Albert Einstein']   = '14-3-1879';
  birthday['Benjamin Franklin'] = '17-1-17-6';
  birthday['Ada Lovelace']      = '10-12-1815';
  print('Welcome to the birthday dictionary. We know the birthday of: '
        '\nAlbert Einstein'
        '\nBenjamin Franklin'
        '\nAda Lovelace');
  print('Who\'s birthday do you want to look up ?');
  String? a = stdin.readLineSync();
  String name = a ?? '';
  if(birthday.containsKey(name))
    print(name+'\'s birthday is on '+birthday[name]);
  else
    print('No birthday information found for '+name);
}
