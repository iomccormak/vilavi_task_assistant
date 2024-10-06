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
    return BlocProvider(
      create: (context) => getIt<TasksBloc>()..add(const TasksEvent.started()),
      child: BlocBuilder<TasksBloc, TasksState>(
        builder: (context, state) {
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
                  color: Colors.white,
                  icon: Icon(
                    state.sort == true
                        ? Icons.check_circle
                        : state.sort == false
                            ? Icons.remove_circle
                            : Icons.sort,
                  ),
                  onPressed: () => context
                      .read<TasksBloc>()
                      .add(ChangeSort(sort: state.sort)),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () => context.router.push(const AddTaskScreen()),
                ),
              ],
            ),
            body: state.tasks == null
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Colors.black,
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
                          padding: EdgeInsets.only(
                              left: 16.w, top: 10.h, bottom: 10.h, right: 10.w),
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
                              Row(
                                children: [
                                  Checkbox(
                                    value: task.status,
                                    onChanged: (bool? value) => context
                                        .read<TasksBloc>()
                                        .add(ChangeTaskStatus(id: task.id)),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.black,
                                    ),
                                    onPressed: () => context
                                        .read<TasksBloc>()
                                        .add(DeleteTask(id: task.id)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
          );
        },
      ),
    );
  }
}
