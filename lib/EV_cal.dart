import 'package:flutter/material.dart';

class EvCal extends StatefulWidget {
  const EvCal({super.key});

  @override
  State<EvCal> createState() => _Calculate();
}

class _Calculate extends State<EvCal> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  double _result = 0.0;

  void _calculateCharge() {
    setState(() {
      double Target = double.tryParse(_controller1.text) ?? 0.0;
      double Bat_cap = double.tryParse(_controller2.text) ?? 0.0;
      double Charge_Pow = double.tryParse(_controller3.text) ?? 0.0;
      double Eff = double.tryParse(_controller4.text) ?? 0.0;
      _result = (Target * (Bat_cap/100)) / (Charge_Pow * Eff);
    });
  }

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
            SizedBox(
              width: 1000,
              height: 150,
              child: Image.asset('assets/images/EvCar2.png'),
            ),
            const Text(
              "Tesla Model EX",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                Card(
                  child: SizedBox(
                    width: 370,
                    height: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Current Soc(%)",style: TextStyle(fontSize: 18),),
                        Text("36%",style: TextStyle(fontSize: 18),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [Text("          ")],
            ),
            Row(
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Target Soc(%)"),
                        TextField(
                          controller: _controller1,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Enter Target SOC",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Card(
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Bat_Capacity (kWh)"),
                        TextField(
                          controller: _controller2,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Enter BatteryCap",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [Text("          ")],
            ),
            Row(
              children: [
                Card(
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Charging Power(kWh)"),
                        TextField(
                          controller: _controller3,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Enter ChargePower",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Card(
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Efficiency (%)"),
                        TextField(
                          controller: _controller4,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "Enter Efficiency",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [Text("          ")],
            ),
            ElevatedButton(
              onPressed: _calculateCharge,
              child: Text('Calculate'),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: 370,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Charging Time: ${_result.toStringAsFixed(3)} hrs',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
