//gerekli kütüphaneler import edilir
import 'dart:io';
import 'dart:convert';

void main() {
  //giris mesajı
  print("Hesap makinesine hos geldiniz");

  //dongu olusturulur ve istenilen veri girilene kadar dongu devam eder
  String islemLowerCase = '';
  while (islemLowerCase != 'toplama' ||
      islemLowerCase != 'cikarma' ||
      islemLowerCase != 'carpma' ||
      islemLowerCase != 'bolme') {
    //istenilen verinin ne olacagi yazdirilir
    print(
        'Lutfen yazilan islemlerden birini seciniz!\n Toplama-Cikarma-Carpma-Bolme');

    //ekrandan veri alınır
    String? islem = stdin.readLineSync();
    String islemLowerCase = islem!.toLowerCase();

    //istenilen veri alınırsa islemlere gecilir
    if (islem == 'toplama' ||
        islem == 'cikarma' ||
        islem == 'carpma' ||
        islem == 'bolme') {
      //ilk veri alınır
      print('Lutfen ilk islem yapilacak sayiyi giriniz');
      String? ilkEleman = stdin.readLineSync();
      int ilkElemanInt = int.parse(ilkEleman!);

      //ikinci veri alınır
      print('Lutfen ikinci islem yapilacak sayiyi giriniz');
      String? ikinciEleman = stdin.readLineSync();
      int ikinciElemanInt = int.parse(ikinciEleman!);

// secilen isleme göre islemler yapılır
      switch (islem) {
        case 'toplama':
          int toplam = ilkElemanInt + ikinciElemanInt;
          print('Isleminizin sonucu: $toplam');
          break;
        case 'cikarma':
          int toplam = ilkElemanInt - ikinciElemanInt;
          print('Isleminizin sonucu: $toplam');
          break;
        case 'carpma':
          int toplam = ilkElemanInt * ikinciElemanInt;
          print('Isleminizin sonucu: $toplam');
          break;
        case 'bolme':
          int toplam = ilkElemanInt ~/ ikinciElemanInt;
          print('Isleminizin sonucu: $toplam');
          break;
      }

      break;
    }
  }
}
