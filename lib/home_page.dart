import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pdf_reading_app/files.dart';
import 'package:pdf_reading_app/pdf_View.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PDF Store',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: pdf.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 15 / 14,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (BuildContext, index) {
            return GestureDetector(
              onTap: (){
                 Get.to(()=>PdfView(index: index));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          child: Image.asset(
                            'assets/PDSH.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height:10,
                        ),
                        Center(
                          child: Text(
                            name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
