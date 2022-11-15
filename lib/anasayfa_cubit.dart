import 'package:blocapp1/mathRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit  extends Cubit<int> {
  // consttuctornu yazıyoruz!
  AnasayfaCubit() :super(
      0); // int olarak varsayılan degerdir.default deger  => 0 string => hangi turde ise ona göre göndereceksin
// math repo
  var mrepo = mathRepository();


  void toplamayap(String alinansayi1, String alinansayi2) {
    // arayüze göndermek için ana sayfya gondermek ıcın set state yerıne => emit vardır ?
    emit(mrepo.topla(alinansayi1,
        alinansayi2)); // bunu anasayfa dıneldıgım yerden algılayıp dınleme yapısını oluşturacaz !
  }

  void carpmayap(String alinansayi1, String alinansayi2) {
    // arayüze göndermek için ana sayfya gondermek ıcın set state yerıne => emit vardır ?
    emit(mrepo.carp(alinansayi1,
        alinansayi2)); // bunu anasayfa dıneldıgım yerden algılayıp dınleme yapısını oluşturacaz !
    
  }
}