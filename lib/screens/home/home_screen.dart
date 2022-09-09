
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
                  padding: const EdgeInsets.only(top:50),
                  child: Row(
                    children: [
                      Icon(Icons.ac_unit_outlined, size: 80,),
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
                  padding: const EdgeInsets.only(right:210, top: 30),
                  child: Text(
                    "Welcome to",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:150),
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
            padding: EdgeInsets.only(left:15),
            child: Text("Service", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w900, fontSize: 28),),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 14),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 14),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
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
                Text("Specialist",style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 20), ),
                Text("View all", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 20),),
              ],
            ),
          )

        ],
      ),
    );
  }
}
