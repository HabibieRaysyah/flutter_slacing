import 'package:flutter/material.dart';
import 'package:hariinii/thritpage.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  bool warna = false;
  double text = 40;
  Color warnaFont = Colors.green;
  String inputanWarna = "";
  Color bgStatis = Colors.white;

  TextEditingController teksWarna = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warna ? Colors.white : Colors.red,
      appBar: AppBar(title: Text("SecondPage"), backgroundColor: Colors.green),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (!warna) {
                      warna = true;
                    } else {
                      warna = false;
                    }
                  });
                },
                child: Text("MeraH"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    text = text + 2;
                    warnaFont = Colors.orange;
                  });
                },
                child: Text("Besar / Kecil"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Thritpage(
                        ukuran: text,
                        warnaFont: warnaFont,
                        inputanColor: inputanWarna,
                        bgStatis : bgStatis,
                      ),
                    ),
                  );
                },
                child: Text("data"),
              ),
              ElevatedButton(onPressed: () {
                setState(() {
                  bgStatis = Colors.black; 
                });
              }, child: Text("Ubah Warna NextPage"))
            ],
          ),
          Text(
            "Testing",
            style: TextStyle(fontSize: text, color: warnaFont),
          ),
          TextField(controller: teksWarna),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (teksWarna.text.toLowerCase() == 'merah') {
                  warnaFont = Colors.red;
                } else if (teksWarna.text.toLowerCase() == 'biru') {
                  warnaFont = Colors.blue;
                }
              });
            },
            child: Text("ganti Warna"),
          ),
        ],
      ),
    );
  }
}
