import 'package:educationhelper/screens/bagis/bagis.dart';
import 'package:flutter/material.dart';

class MaddiIhtiyac extends StatefulWidget {
  @override
  _MaddiIhtiyacState createState() => _MaddiIhtiyacState();
}

class _MaddiIhtiyacState extends State<MaddiIhtiyac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Maddi Temel İhtiyaç İhbarı',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          ClipPath(
            clipper: YayaCliper(),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 22,
                  left: 15,
                ),
                child: Text(
                  'Temel ihtiyaçlarını gideremeyen ailelerin çocukları açlıkla ve yetersiz maddiyatla mücadele ederken eğitimlerini yarıda bırakmak zorunda kalır veya küçük yaşta bu ihtiyaçları karşılamak mecburiyetiyle okulu bırakıp çalışır,çalıştırılır.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 260,
                  ),
                  child: Container(
                    child: Text(
                      'İsim',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Lütfen isim giriniz';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'isim giriniz',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 250,
                        ),
                        child: Container(
                          child: Text(
                            'Soyadı',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'Lütfen soyad giriniz';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'soyadı giriniz',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 250,
                        ),
                        child: Container(
                          child: Text(
                            'Adres',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Lütfen adres girin';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Kısa adres tarifi',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 250,
                        ),
                        child: Container(
                          child: Text(
                            'Konu',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Lütfen konu girin';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'İhbar konusu',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.blue,
                        disabledColor: Colors.white,
                        splashColor: Colors.blueAccent,
                        onPressed: () {},
                        child: Text(
                          'İhbar Oluştur',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bağış mı yapmak istiyorsunuz ?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Bagis()));
                        },
                        child: Text(
                          'Bağış Yap',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
