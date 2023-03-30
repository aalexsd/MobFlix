import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController categoryController = TextEditingController();
  TextEditingController videoController = TextEditingController();
  TextEditingController thumbController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text(
            'Cadastre um vídeo',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black12,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'URL: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return 'Insira uma URL';
                      }
                      return null;
                    },
                    controller: videoController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ex: N3h5A0Azsk',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 8),
                  child: Text(
                    'Categoria: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return 'Insira uma categoria';
                      }
                      return null;
                    },
                    controller: categoryController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Mobile, Frontend...',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 8),
                  child: Text(
                    'Thumbnail: ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (text) {
                      setState(() {});
                    },
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return 'Insira uma thumbnail';
                      }
                      return null;
                    },
                    controller: thumbController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Ex.: https://i.ytimg.com.jpg...',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 12),
                  child: Text(
                    'Preview',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(thumbController.text,
                              fit: BoxFit.cover, errorBuilder:
                                  (BuildContext context, Object exception,
                                      StackTrace? stacktrace) {
                            return Image.asset('assets/images/Rectangle2.png');
                          }))),
                ),
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Novo vídeo Cadastrado'),
                                      ),
                                    );
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                child: const Text(
                                  'Cadastrar',
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
