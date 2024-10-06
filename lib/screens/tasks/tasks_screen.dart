import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vilavi_task_assistant/di/locator.dart';
import 'package:vilavi_task_assistant/navigation/app_router.gr.dart';
import 'package:vilavi_task_assistant/screens/tasks/bloc/tasks_bloc.dart';
import 'package:vilavi_task_assistant/utils/app_strings.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          '${AppStrings.vilavi} ${AppStrings.taskAssistant}',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => context.router.push(const AddTaskScreen()),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<TasksBloc>()..add(const TasksEvent.started()),
        child: BlocBuilder<TasksBloc, TasksState>(
          builder: (context, state) {
            return state.tasks == null
                ? const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9.w),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.tasks!.length,
                      itemBuilder: (context, index) {
                        final task = state.tasks![index];
                        final color =
                            index.isEven ? Colors.white : Colors.grey[300];

                        return Container(
                          color: color,
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  task.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                  ),
                                  maxLines: null,
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              SizedBox(width: 16.w),
                              Checkbox(
                                value: task.status,
                                onChanged: (bool? value) => context
                                    .read<TasksBloc>()
                                    .add(ChangeStatus(id: task.id)),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
          },
        ),
      ),
    );
  }
}
