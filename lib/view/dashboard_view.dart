import 'package:class_assignment_2/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            final items = [
              {
                'icon': Icons.circle,
                'label': 'Area of Circle',
                'onTap': () =>
                    context.read<DashboardBloc>().openAreaOfCircleView(context),
              },
              {
                'icon': Icons.trending_up,
                'label': 'Simple Interest',
                'onTap': () => context
                    .read<DashboardBloc>()
                    .openSimpleInterestView(context),
              },
              {
                'icon': Icons.person,
                'label': 'Student List',
                'onTap': () =>
                    context.read<DashboardBloc>().openStudentListView(context),
              },
            ];

            return InkWell(
              onTap: items[index]['onTap'] as VoidCallback?,
              splashColor: Colors.blue[50],
              borderRadius: BorderRadius.circular(15),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        items[index]['icon'] as IconData,
                        size: 50,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        items[index]['label'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
