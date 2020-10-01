import 'package:flutter/material.dart';
import 'package:test_design/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Data data = Data();

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

                Row(children: [
                  CircleAvatar(child: Icon(Icons.person, color: Colors.white), backgroundColor: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Nipon Roy', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 17)),
                          Text('Find best doctors easily', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ]),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.event_available, color: Colors.blue),
                  )
                ]),
                SizedBox(height: 20),

                Stack(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: 'Search Doctors...',
                      ),
                      onChanged: (newText){},
                    ),
                    Positioned(
                      right: 5,
                      top: 0,
                      bottom: 0,
                      child: Icon(Icons.search, color: Colors.blue, size: 40,),
                    ),
                  ],
              ),
                SizedBox(height: 20),

                Text('Specialist', style: TextStyle(color: Colors.black, fontSize: 15)),
                SizedBox(height: 10),
                Container(
                  height: 150,
                  child: ListView.builder(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data.specialistModelList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: data.specialistModelList[index].color,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                            Icon(data.specialistModelList[index].icon, color: Colors.white, size: 50),
                            SizedBox(height: 5),
                            Text(data.specialistModelList[index].title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                          ]),
                        );
                      }
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  height: 150,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data.issuesModelList.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: 300,
                            padding: EdgeInsets.all(10),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                              Row(children: [
                                Expanded(child: Text(data.issuesModelList[index].title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                                Container(
                                  height: 20,
                                  width: 50,
                                  decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(50)),
                                  child: Center(child: Text("\$${data.issuesModelList[index].price}", style: TextStyle(color: Colors.white, fontSize: 12))),
                                )
                              ]),
                              SizedBox(height: 5),
                              Row(children: [
                                Container(height: 65, width: 2, color: Colors.blue),
                                SizedBox(width: 10),
                                Expanded(child: Text(data.issuesModelList[index].description, textAlign: TextAlign.justify,)),
                              ]),
                            ]),
                          ),
                        );
                      }
                  ),
                ),

                SizedBox(height: 20),
                Row(children: [
                  Expanded(child: Text('Top Doctors', style: TextStyle(color: Colors.black, fontSize: 15))),
                  Text('View All', style: TextStyle(color: Colors.grey, fontSize: 12))
                ]),
                SizedBox(height: 10),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.doctorModelList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: (1/1.5)
                  ),
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Expanded(
                          flex: 7,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                              child: Image.asset(data.doctorModelList[index].imagePath, fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 5),
                        Expanded(flex: 1, child: Text(data.doctorModelList[index].name, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))),
                        SizedBox(height: 5),
                        Expanded(flex: 2, child: Text(data.doctorModelList[index].designation, style: TextStyle(color: Colors.grey, fontSize: 12), textAlign: TextAlign.center,)),
                      ]),
                    );
                  },
                ),

              ]),
            ),
          ),
        ),
    );
  }
}
