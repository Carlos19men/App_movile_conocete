import 'package:conocete/ui/pages/agenda/widgets/event.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../widgets/recordatorioItem.dart';

// ignore: must_be_immutable
class Agenda extends StatefulWidget {
  Agenda({super.key});
  @override
  State<Agenda> createState() => _AgendaState();
}

class _AgendaState extends State<Agenda> {
  List<RecordatorioItem> recordatorios = [
    RecordatorioItem('tarea 1'),
    RecordatorioItem('tarea 2'),
    RecordatorioItem('tarea 3')
  ];

  //lista de eventos
  Map<DateTime, List<Event>> eventos = {};

  //controlador de texto
  TextEditingController _eventController = TextEditingController();

  DateTime today = DateTime.now();
  DateTime? _selectedDay;

  //lista de notificaciones de eventos
  // ignore: unused_field
  late final ValueNotifier<List<Event>> _selectedEvents;

  @override
  void initState() {
    super.initState();
    _selectedDay = today;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onDaySelected(DateTime day, DateTime focusedDaty) {
    setState(() {
      _selectedDay = day;
    });
  }

  //obtener los eventos
  List<Event> _getEventsForDay(DateTime day) {
    //retorna todos los evenetos del dia seleccionado
    return eventos[day] ?? [];
  }

  _AgendaState();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        //calendario
        Container(
            width: MediaQuery.of(context).size.width,
            height: 400.0,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(25.0)),
            child: TableCalendar(
              locale: 'es',
              rowHeight: 50,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              eventLoader: _getEventsForDay,
              focusedDay: today,
              firstDay: DateTime.utc(2000, 10, 16),
              lastDay: DateTime.utc(2500, 12, 20),
              onDaySelected: _onDaySelected,
            )),

        //boton de nuevo recordatorio
        Container(
            width: 70,
            height: 50,
            margin: EdgeInsets.only(left: 25, right: 25),
            child: ElevatedButton(
                child: Text('Nuevo Recordatorio'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          scrollable: true,
                          content: Padding(
                            padding: EdgeInsets.all(8),
                            child: TextField(
                                autocorrect: true,
                                controller: _eventController),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  //agregamos el nuevo evento a la lista
                                  eventos.addAll({
                                    _selectedDay!: [
                                      Event(
                                          'nada', 'nada', _selectedDay!, false)
                                    ]
                                  } as Map<DateTime, List<Event>>);
                                },
                                child: Text('Crear'))
                          ],
                        );
                      });
                })),

        Divider(),

        Positioned(child: Text('Tareas pendientes')),

        Column(
          children: recordatorios,
        ),

        Divider(),

        Positioned(child: Text('Tareas de hoy')),

        Column(
          children: recordatorios,
        ),

        Divider(),

        Positioned(child: Text('Proximas tareas')),

        //procimos eventos
        Column(
          children: recordatorios,
        ),
      ],
    );
  }
}
