import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_timer/app/entities/project.dart';
import 'package:job_timer/app/entities/project_status.dart';
import '../../core/database/database.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Container(),
          ElevatedButton(
            onPressed: () async {
              final db = Modular.get<Database>();
              final connection = await db.openConnection();
              connection.writeTxn((isar) {
                var project = Project();
                project.name = 'Projeto Teste';
                project.status = ProjectStatus.em_andamento;

                return connection.projects.put(project);
              });
            },
            child: const Text('Cadastrar'),
          )
        ],
      ),
    );
  }
}
