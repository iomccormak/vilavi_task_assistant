import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vilavi_task_assistant/di/locator.dart';
import 'package:vilavi_task_assistant/navigation/app_router.gr.dart';
import 'package:vilavi_task_assistant/screens/add_task/bloc/add_task_bloc.dart';
import 'package:vilavi_task_assistant/widgets/main_button.dart';

@RoutePage()
class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddTaskBloc>(),
      child: BlocBuilder<AddTaskBloc, AddTaskState>(
        builder: (context, state) {
          if (state is Initial && state.isAdded) {
            context.router.replace(const TasksScreen());
          }
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              title: Text(
                'Add new task',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                ),
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: context.router.maybePop,
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Enter task title',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.r),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  if (state is Error) ...[
                    Text(
                      state.errorMessage,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(height: 16.h),
                  ],
                  MainButton(
                    label: 'Add',
                    onTap: () => context.read<AddTaskBloc>().add(
                          AddTask(
                            title: _titleController.text,
                          ),
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
