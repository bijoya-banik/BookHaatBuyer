import 'package:Easy_Shopping/NavigationAnimation/routeTransition/routeAnimation.dart';
import 'package:Easy_Shopping/PdfViewScreen.dart';
import 'package:Easy_Shopping/main.dart';
import 'package:flutter/material.dart';

class AllPdfList extends StatefulWidget {

  @override
  _AllPdfListState createState() => _AllPdfListState();
}

class _AllPdfListState extends State<AllPdfList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: AppBar(
        backgroundColor: appColor,
        title: Text("PDF List"),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(child: Container(child:  Container(
        margin: EdgeInsets.only(top:10),
                    height: 250,
                    child: ListView.builder(
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: store.state.pdfBookList.length > 5 ? 5 : store.state.pdfBookList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                                Navigator.push(context, SlideLeftRoute(page: PdfViewScreen(store.state.pdfBookList[index])));
                              
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:7),
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                child: ListTile(
                                  tileColor: Colors.grey[200],
                                  leading: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.asset('assets/images/pdf.png', height: 30.0, width: 30.0, fit: BoxFit.fill)),
                                  title: Text(
                                    store.state.pdfBookList[index]['pdfName'],
                                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),),),
      
    );
  }
}