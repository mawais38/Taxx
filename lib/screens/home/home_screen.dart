import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Material(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 320,
              width: double.maxFinite,
              color: Colors.blue,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        Icon(
                          Icons.ac_unit_outlined,
                          size: 80,
                        ),
                        Text(
                          "K29 Solutions",
                          style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 30),
                    child: Text(
                      "Welcome to",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Text(
                      "Wash my car",
                      style: TextStyle(
                          fontSize: 34,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "Service",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w900,
                    fontSize: 28),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Wash",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.blue),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Interior \nClean",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.blue),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Polishing",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.blue),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Tire \nDressing",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.blue),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Engine \nWash",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.blue),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Car \nSpray",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Colors.blue),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Blower",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff7295C4),
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
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/vectors/car-wash-line-icon-thin-line-for-web-and-mobile-modern-minimalistic-vector-id1184395340?k=20&m=1184395340&s=612x612&w=0&h=XMW0pguoMNjIyBmCheaNzFxllDacZvFV_6C1j-JjFa8="),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(55),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 2,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top:5),
                          child: Text(
                            "Carpet \nClean",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xff7295C4)),
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
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Specialist(),
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
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
