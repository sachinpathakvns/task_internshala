import 'package:flutter/material.dart';

class TaskDesign extends StatefulWidget {
  const TaskDesign({Key? key}) : super(key: key);

  @override
  State<TaskDesign> createState() => _TaskDesignState();
}

class _TaskDesignState extends State<TaskDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset('assets/images/Vector.png'),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/icons8-message-100.png',height: 25,color: Colors.black54,),
                      SizedBox(width: 10,),
                      Image.asset('assets/images/Icon@2x.png',height: 25,),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Hello, Priya!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text('What do you wanna learn today',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey)),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            height: 50,
                            width: 170,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [ 
                                Image.asset('assets/images/1.png'),
                                const SizedBox(width: 5,),
                                const Text('Programs',style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold))],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 50,
                            width: 170,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.blue, width: 2)),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/Icon.png'),
                                const SizedBox(width: 5,),
                                const Text('Learn',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold)),
                                ],
                            )),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          height: 50,
                          width: 170,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue, width: 2)),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Icon.png'),
                              const SizedBox(width: 5,),
                              const Text('Get help',style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold)),
                          ])),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 50,
                          width: 170,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blue, width: 2)),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Icon.png'),
                              const SizedBox(width: 5,),
                              const Text('DD tracker',style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold)),
                            ],
                          )),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              textprovider(context, 'Programs for you'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 275,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        // padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                        height: 280,
                        width: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              // color: Colors.blue,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Frame 122@2x.png'))),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Lifestyle',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  'A complete guide for your\n new born baby',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('16 lessons'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              textprovider(context, 'Events and experience'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 275,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        // padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                        height: 280,
                        width: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              // color: Colors.blue,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/yoga.png'))),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Babycare',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  'Understanding of human\n'
                                  'behaviour',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('13 Feb, Sunday'),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        border: Border.all(
                                            color: Colors.blue, width: 2)),
                                    child: const Text(
                                      'book',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              textprovider(context, 'Lessons for you'),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 275,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        // padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                        height: 280,
                        width: 260,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              // color: Colors.blue,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/yoga.png'))),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Babycare',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                  'Understanding of human\n'
                                  'behaviour',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '3 min',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.lock,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget textprovider(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Row(
            children: [
              Text(
                'View all',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.arrow_forward_outlined),
            ],
          )
        ],
      ),
    );
  }
}
