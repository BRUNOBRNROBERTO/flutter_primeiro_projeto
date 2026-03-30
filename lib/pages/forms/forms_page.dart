import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({super.key});

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  //String texto = '';
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  String categotia = 'Categoria1';

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forms')),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //TextField(
                //onChanged: (String value) {
                //setState(() {
                //texto = value;
                //});
                //},
                //),
                //SizedBox(height: 10),
                //Text('Texto digitado $texto'),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null,
                  decoration: InputDecoration(
                    labelText: 'Nome completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                    isDense: true,
                  ),

                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,

                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    labelStyle: TextStyle(fontSize: 20, color: Colors.green),
                    isDense: true,
                  ),
                  obscureText: true,

                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  initialValue: categotia,
                  elevation: 16,
                  icon: Icon(Icons.arrow_back_ios),
                  isDense: true,
                  decoration: InputDecoration(
                    labelText: 'Categoria',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não preenchida';
                    }
                    return null;
                  },
                  onChanged: (String? newvalue) {
                    if (newvalue != null) {
                      setState(() {
                        categotia = newvalue;
                      });
                    }
                  },
                  items: [
                    DropdownMenuItem(
                      value: 'Categoria1',
                      child: Text('Categoria 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria2',
                      child: Text('Categoria 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Categoria3',
                      child: Text('Categoria 3'),
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var messege = 'Formulario Invalido';

                    if (formValid) {
                      messege = ' Formulario valido (Name: ${nameEC.text})';
                    }
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(messege)));
                  },
                  child: Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
