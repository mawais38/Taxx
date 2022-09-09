import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 260,
              width: double.maxFinite,
              color: const Color(0xff0e47a1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 80,
                            width: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/moving.gif"),
                                fit: BoxFit.cover,
                                // colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Texx Solutions",
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 210, top: 10),
                    child: Text(
                      "Welcome to",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 150),
                    child: Text(
                      "Wash my car",
                      style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: Color(0xff325aa3),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search for services',
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Service",
                style: TextStyle(
                    color: Color(0xff0e47a1),
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: const Icon(
                            Icons.car_rental,
                            size: 45,
                            color: Color(0xff1E1953),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Wash",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff0e47a1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: const Icon(
                            Icons.car_crash,
                            size: 45,
                            color: Color(0xff1E1953),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Interior \nClean",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff0e47a1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: const Icon(
                            Icons.car_repair,
                            size: 45,
                            color: Color(0xff1E1953),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Polishing",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff0e47a1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: const Icon(
                            Icons.car_crash,
                            size: 45,
                            color: Color(0xff1E1953),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Tire \nDressing",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff0e47a1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: const Icon(
                            Icons.car_repair,
                            size: 45,
                            color: const Color(0xff1E1953),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Engine \nWash",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff0e47a1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: const Icon(Icons.car_repair,size: 45,color:Color(0xff1E1953) ,),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Car \nSpray",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff0e47a1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: Icon(Icons.car_crash_rounded,size: 45,color:Color(0xff1E1953) ,),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Blower",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff0e47a1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  SizedBox(
                    height: 122,
                    width: 77,
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          width: 75,
                          child: Icon(Icons.car_rental,size: 45,color:Color(0xff1E1953) ,),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Carpet \nClean",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff0e47a1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Specialist",
                    style: TextStyle(
                        color: Color(0xff0e47a1),
                        fontWeight: FontWeight.w900,
                        fontSize: 20),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: Color(0xff0e47a1),
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15),
              child: const Specialist(),
            ),
          ],
        ),
      ),
    );
  }
}

class Specialist extends StatelessWidget {
  const Specialist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.grey,
                width: 3,
              )
            ),
            child: Column(
              children: [
                Image.asset("assets/engine-block.jpg"),
                Text("7CF - All in One", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),),
                Text("Rs 12800", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),)
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                )
            ),
            child: Column(
              children: [
                Image.asset("assets/part-2.png"),
                Text("7CF - Tyre Foam", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),),
                Text("Rs 19200", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),)
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                )
            ),
            child: Column(
              children: [
                Image.asset("assets/part-3.png"),
                Text("7CF - Tyre Wax", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),),
                Text("Rs 8500", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),)
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                )
            ),
            child: Column(
              children: [
                Image.asset("assets/engine-block.jpg"),
                Text("7CF - All in One", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),),
                Text("Rs 12800", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),)
              ],
            ),
          ),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 3,
                )
            ),
            child: Column(
              children: [
                Image.asset("assets/engine-block.jpg"),
                Text("7CF - All in One", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),),
                Text("Rs 12800", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff0e47a1)),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
