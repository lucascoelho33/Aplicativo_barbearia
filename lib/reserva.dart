import 'package:flutter/material.dart';

class ReservaPage extends StatefulWidget {
  const ReservaPage({super.key});

  @override
  State<ReservaPage> createState() => _ReservaPageState();
}

class _ReservaPageState extends State<ReservaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marque um dia'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'AGOSTO',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const DayChip(
                    dayInitial: 'DOM', dayNumber: '01', isSelected: false),
                const DayChip(
                    dayInitial: 'SEG', dayNumber: '02', isSelected: false),
                const DayChip(
                    dayInitial: 'TER', dayNumber: '03', isSelected: true),
                const DayChip(
                    dayInitial: 'QUA', dayNumber: '04', isSelected: false),
                const DayChip(
                    dayInitial: 'QUI', dayNumber: '05', isSelected: true),
                const DayChip(
                    dayInitial: 'SEX', dayNumber: '06', isSelected: false),
                const DayChip(
                    dayInitial: 'SAB', dayNumber: '07', isSelected: false),
              ],
            ),
            SizedBox(height: 30.0),
            Text(
              'Horários Disponíveis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text('09:00 AM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('09:30 AM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('10:00 AM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('10:30 AM'),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text('11:30 AM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('12:00 AM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('Intervalo'),
                  backgroundColor: Colors.amber,
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('14:00 PM'),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text('14:00 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('14:30 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('15:00 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('15:30 PM'),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text('16:00 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('16:30 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('17:00 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('Reservado'),
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text('18:00 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('18:30 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('Reservado'),
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('19:30 PM'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text('20:00 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('20:30 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('21:00 PM'),
                ),
                SizedBox(width: 8),
                Chip(
                  label: Text('21:30 PM'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DayChip extends StatelessWidget {
  final String dayInitial;
  final String dayNumber;
  final bool isSelected;

  const DayChip({
    required this.dayInitial,
    required this.dayNumber,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Chip(
          label: Text(
            dayInitial,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          backgroundColor: isSelected ? Colors.blue : Colors.grey,
        ),
        SizedBox(height: 8),
        Text(
          dayNumber,
          style: TextStyle(
            color: isSelected ? Colors.blue : Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
