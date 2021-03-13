import 'soru.dart';

class TestVeri {
  int _soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir',
        soruYaniti: false,
        dogrusu:
            "Dünyanın en büyük ve en pahalı yolcu gemisi Oasis of the Seas (Denizdeki Vaha)"),
    Soru(
        soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true,
        dogrusu:
            "Dünya üzerindeki tavuk nüfusu insan nüfusunun tam üç katıdır. Dünyada 22.5 milyar tavuk vardır."),
    Soru(
        soruMetni: 'Kelebeklerin ömrü bir gündür',
        soruYaniti: false,
        dogrusu:
            "Dünya üzerinde bugüne kadar normal ömrü 1 gün olan tek bir kelebek türü bile tespit edilememiştir. Yetişkin kelebeklerin ömrü, türüne bağlı olmak üzere 1 hafta ile 1 yıl arasında değişebilir. Üstelik bu süreye yaşam döngüsündeki yumurta, tırtıl ve koza dönemleri dahil değildir."),
    Soru(
        soruMetni: 'Dünya düzdür',
        soruYaniti: false,
        dogrusu:
            "Dünyanın şekli ekvatordan şişik kutuplardan basıktır. Bu şeklin ismi ise Geoit'tir. Dünyanın şeklinin böyle olmasının sebebi Dünyanın ekseni etrafında dönmesindendir. Dünya düz değildir."),
    Soru(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır',
        soruYaniti: true,
        dogrusu:
            "Bildiğimiz Kaju, bakıldığında Kaju elma ağacının sapıdır. Sap gibi görünen ve aslında Kaju elmasının çekirdeği olan Kaju fıstığı dediğimiz ürün elmanın tamamen dışında gelişen bir üründür. Yani Kaju elması içerisinde çekirdek yoktur. Kaju elma ağacında bulunan her bir elmada bir adet çekirdek bulunur."),
    Soru(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true,
        dogrusu:
            "O dönemlerde henüz yeni dünyadan patates eski dünyaya ihraç edilmemişti."),
    Soru(
        soruMetni: 'Fransızlar 80 demek için, 4 - 20 der',
        soruYaniti: true,
        dogrusu:
            "Vigesimal sayılardır. Fransizlarin Keltler'den günümüze kadar taşıdığı sayma sistemidir. 20 ve katları şeklinde sayılır ancak latinleşme sonucu bu tamamiyle korunmuş değildir.")
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  String getDogrusu() {
    return _soruBankasi[_soruIndex - 1].dogrusu;
  }

  void sonrakiSoru() {
    if (_soruIndex + 1 < _soruBankasi.length) {
      _soruIndex++;
    } else {
      _soruIndex = 0;
    }
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
  }
}
