class mathRepository {

  int  topla(String alinansayi1, String alinansayi2) {
    int sayi1 = int.parse(alinansayi1);
    int sayi2 = int.parse(alinansayi2);
    int toplam =  sayi1 + sayi2;
    // arayüze göndermek için ana sayfya gondermek ıcın set state yerıne => emit vardır ?
    return toplam;// bunu anasayfa dıneldıgım yerden algılayıp dınleme yapısını oluşturacaz !
  }

  int carp(String alinansayi1, String alinansayi2) {
    int sayi1 = int.parse(alinansayi1);
    int sayi2 = int.parse(alinansayi2);
    int carpma =  sayi1 * sayi2;
    // arayüze göndermek için ana sayfya gondermek ıcın set state yerıne => emit vardır ?
    return carpma; // bunu anasayfa dıneldıgım yerden algılayıp dınleme yapısını oluşturacaz !
  }

}