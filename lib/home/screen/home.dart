import 'package:apis40/model/NewsModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home.dart';

class Sports extends StatelessWidget {
  HomeController controller=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('Sports'),),
        body: SafeArea(child: SingleChildScrollView(
            child:  FutureBuilder(
                future: controller.getNews('sports'),
                builder: (context,  AsyncSnapshot snapshot){
                  if(snapshot.hasData){
                    NewsModel data =snapshot.data;
                    return
                      ListView.builder(
                        itemCount: data.articles!.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context,int  index){
                          return Card(
                            elevation: 5,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Container(
                                  height: 200,color: Colors.orange,
                                  width: MediaQuery.of(context).size.width,
                                  child:data.articles![index].urlToImage==null?
                                  Center(child: const Text('no image to display')):
                                  Image.network(
                                    '${data.articles![index].urlToImage}',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:   [
                                      Text('${data.articles![index].title}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                      SizedBox(
                                          width: 350,
                                          height: 70,
                                          child: Text('${data.articles![index].description}',
                                            overflow: TextOverflow.ellipsis,maxLines: 2,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  }
                  else{
                    return Center(child: CircularProgressIndicator(),);

                  }
                  },),),),);
  }
  }







class Science extends StatelessWidget {
    Science({Key? key}) : super(key: key);
  HomeController controller=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Science'),),
      body: SafeArea(child: SingleChildScrollView(
        child:  FutureBuilder(
          future: controller.getNews('science'),
          builder: (context,  AsyncSnapshot snapshot){
            if(snapshot.hasData){
              NewsModel data =snapshot.data;
              return
                ListView.builder(
                    itemCount: data.articles!.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,int  index){
                      return Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              height: 200,color: Colors.orange,
                              width: MediaQuery.of(context).size.width,
                              child:data.articles![index].urlToImage==null?
                              Center(child: const Text('no image to display')):
                              Image.network(
                                '${data.articles![index].urlToImage}',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:   [
                                  Text('${data.articles![index].title}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                  SizedBox(
                                      width: 350,
                                      height: 70,
                                      child: Text('${data.articles![index].description}',
                                        overflow: TextOverflow.ellipsis,maxLines: 2,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
            }
            else{
              return Center(child: CircularProgressIndicator(),);

            }
          },),),),);
  }
}
class Technology extends StatelessWidget {
  Technology({Key? key}) : super(key: key);
  HomeController controller=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Tech'),),
      body: SafeArea(child: SingleChildScrollView(
        child:  FutureBuilder(
          future: controller.getNews('technology'),
          builder: (context,  AsyncSnapshot snapshot){
            if(snapshot.hasData){
              NewsModel data =snapshot.data;
              return
                ListView.builder(
                    itemCount: data.articles!.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,int  index){
                      return Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              height: 200,color: Colors.orange,
                              width: MediaQuery.of(context).size.width,
                              child:data.articles![index].urlToImage==null?
                              Center(child: const Text('no image to display')):
                              Image.network(
                                '${data.articles![index].urlToImage}',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:   [
                                  Text('${data.articles![index].title}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                  SizedBox(
                                      width: 350,
                                      height: 70,
                                      child: Text('${data.articles![index].description}',
                                        overflow: TextOverflow.ellipsis,maxLines: 2,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
            }
            else{
              return Center(child: CircularProgressIndicator(),);

            }
          },),),),);
  }
}
