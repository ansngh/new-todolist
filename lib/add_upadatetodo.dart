import 'package:flutter/material.dart';
import 'package:newtodo/todo.dart';

class AddUpadateTodo extends StatelessWidget {
  final bool isAdded;
  Todo? todo;
  AddUpadateTodo(this.isAdded, {this.todo});

  TextEditingController cTitle = TextEditingController();
  TextEditingController cId = TextEditingController();
  TextEditingController cDecerpition = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    if (!isAdded) {
      cTitle.text = todo!.title;
      cDecerpition.text = todo!.description;
      cId.text = todo!.id.toString();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Or Update Todo"),
      ),
      body: Form(
        key: _formKey,
        child: Column(children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter title';
              }
              return null;
            },
            decoration: InputDecoration(labelText: "Enter Title"),
            controller: cTitle,
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter description';
              }
              return null;
            },
            decoration: InputDecoration(labelText: "Enter Description"),
            controller: cDecerpition,
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pop(context);
                }
              },
              child: Text("Save"))
        ]),
      ),
    );
  }
}
