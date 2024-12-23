import 'package:flutter/material.dart';

class EvCal extends StatelessWidget {
  const EvCal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EV Charging"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Row(
              children: [
                Text("   "),
              ],
            ),
            Image.asset('assets/images/EvCar.png'),
            const Text(
              "Tesla Model EX",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                Card(
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Current Soc(%)"),
                        Text("36%"),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Card(
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Target Soc(%)"),
                        Text("100%"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [Text("          ")],
            ),
            const Row(
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    width: 380,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Charging Time (hrs)"),
                        Text("7.03"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [Text("          ")],
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Charging Rate (A)"),
                        Text("18.4"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Voltage (V)"),
                        Text("225"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Charging Power (kWh)"),
                        Text("4.140"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bat Capacity (kWh)"),
                        Text("38.5"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Efficiency %"),
                        Text("0.84"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
