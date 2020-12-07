import 'package:flutter/material.dart';



class SharadhaBhakti extends StatelessWidget {



  List<String> litems = ["Razak","Imtiyaz","Bhakti","Sharddha","Nizam","Razak","Imtiyaz","Bhakti","Sharddha","Nizam","Razak","Imtiyaz","Bhakti","Sharddha","Nizam","Razak","Imtiyaz","Bhakti","Sharddha","Nizam","Razak","Imtiyaz","Bhakti","Sharddha","Nizam"];

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 4,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            //0xff[HEX CODE]
            backgroundColor: Color(0xff4AC959),
            actions:[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(Icons.more_vert),
              ),

            ],

            bottom: TabBar(
              indicatorColor: Colors.white,
              onTap: (index) {
                debugPrint("You tapped on : " + index.toString() + " index");
              },
              tabs: [
                Icon(Icons.camera_alt),
                Text("Chats",style:TextStyle(fontSize: 20)),
                Text("Status",style:TextStyle(fontSize: 20)),
                Text("Calls",style:TextStyle(fontSize: 20))
              ],
            ),
            title: Text('WhatsApp',style:TextStyle(fontSize: 28)),
          ),
          body: TabBarView(

            children: [

              //First Child
              Center(
                  child: Text(
                    "Camera",
                    style: TextStyle(fontSize: 40),
                  )),
              //Second Child

              ListView.builder
                (
                  physics:BouncingScrollPhysics(),
                  itemCount: litems.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return new ListTile(
                        title: Text(litems.elementAt(index)),
                        subtitle: Text(litems.elementAt(index)),
                        leading: Image.network("https://images.newindianexpress.com/uploads/user/ckeditor_images/article/2020/3/23/Katrina_Kaif,_Amitabh_Bachchan.jpg")
                    );
                  }
              ),

              Center(
                  child: Text(
                    "Hey Shardha",
                    style: TextStyle(fontSize: 40),
                  )),

              Center(
                  child: Text(
                    "hey Razak",
                    style: TextStyle(fontSize: 40),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}