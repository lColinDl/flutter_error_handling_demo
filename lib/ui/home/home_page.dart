import 'package:error_handling_demo/di.dart';
import 'package:error_handling_demo/ui/home/home_page_view_model.dart';
import 'package:error_handling_demo/ui/widget/view_state_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageViewModel>(
      create: (_) => DI.get()..onInit(),
      child: _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomePageViewModel viewModel = context.watch();
    return Scaffold(
      key: viewModel.scaffoldKey,
      appBar: AppBar(
        title: Text('Error Handling Example'),
        actions: [
          FlatButton(
            child: Text('Register'),
            onPressed: viewModel.onRegisterClicked,
          )
        ],
      ),
      body: ViewStateBuilder(
        state: viewModel.state,
        loadingBuilder: (_) => Container(),
        builder: buildContent,
        errorMessage: viewModel.errorMessage,
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    final HomePageViewModel viewModel = context.watch();

    return Column(
      children: [
        Text(
          viewModel.userProfile.name,
          style: Theme.of(context).textTheme.headline5,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: viewModel.toDoList.todos.length,
            itemBuilder: (context, pos) {
              final item = viewModel.toDoList.todos[pos];
              return ListTile(
                title: Text(item.todo),
                trailing: Checkbox(
                  value: item.done,
                  onChanged: (value) => viewModel.onToDoValueChanged(item, value),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
