import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  bool startDate;
  Calender({@required this.startDate});
  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCC7001),
        title: Center(
          child: Text(
            'Calender',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Icon(
                Icons.home,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
//              calendarStyle: CalendarStyle(
//                todayColor: Colors.orange,
//                selectedColor: Theme.of(context).primaryColor,
//                todayStyle: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontSize: 20.0,
//                  color: Colors.white,
//                ),
//              ),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              onDaySelected: (date, events) {
                print(
                  //TODO: return date to previous component.
                  'Helo'
                );
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                  margin: const EdgeInsets.all(4.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
//                todayDayBuilder: (context, date, events) => Container(
//                  margin: const EdgeInsets.all(4.0),
//                  alignment: Alignment.center,
//                  decoration: BoxDecoration(
//                    color: Colors.orange,
//                    borderRadius: BorderRadius.circular(10.0),
//                  ),
//                  child: Text(
//                    date.day.toString(),
//                    style: TextStyle(color: Colors.white),
//                  ),
//                ),
              ),
              calendarController: _controller,
            )
          ],
        ),
      ),
    );
  }
}
