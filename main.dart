import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyCardApp());
}

class MyCardApp extends StatelessWidget {
  const MyCardApp({super.key});

  // Funções para abrir links
  void _launchPhone() async {
    final Uri phoneUri = Uri.parse('tel:+5562983020334');
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }

  void _launchEmail() async {
    final Uri emailUri = Uri.parse('mailto:caixeta571@gmail.com');
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  void _launchMaps() async {
    final Uri mapsUri = Uri.parse('https://www.google.com/maps/search/Anápolis+GO');
    if (await canLaunchUrl(mapsUri)) {
      await launchUrl(mapsUri);
    }
  }

  void _launchGitHub() async {
    final Uri githubUri = Uri.parse('https://github.com/ArthurCaixet0');
    if (await canLaunchUrl(githubUri)) {
      await launchUrl(githubUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal, // fundo estático
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 105.0, // zoom maior na foto
                    backgroundImage: AssetImage('assets/images/image.png'),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Arthur Caixeta de Souza',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Profissional de Operações Digitais e Tecnologia da Informação',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.tealAccent,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.tealAccent,
                      thickness: 1.0,
                    ),
                  ),
                  // Telefone
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    child: InkWell(
                      onTap: _launchPhone,
                      child: const ListTile(
                        leading: Icon(Icons.phone, color: Colors.teal),
                        title: Text(
                          '(62) 98302-0334',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // E-mail
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    child: InkWell(
                      onTap: _launchEmail,
                      child: const ListTile(
                        leading: Icon(Icons.email, color: Colors.teal),
                        title: Text(
                          'caixeta571@gmail.com',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Localização
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    child: InkWell(
                      onTap: _launchMaps,
                      child: const ListTile(
                        leading: Icon(Icons.location_on, color: Colors.teal),
                        title: Text(
                          'Anápolis - GO',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // GitHub
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                    child: InkWell(
                      onTap: _launchGitHub,
                      child: const ListTile(
                        leading: Icon(Icons.code, color: Colors.teal),
                        title: Text(
                          'github.com/ArthurCaixet0',
                          style: TextStyle(
                            color: Colors.teal,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
