//#   PROVA PRÁTICA (29/09/2026) — `prova_cracha_app`

//### Estrutura do Código da Avaliação (`lib/main.dart`)

//    *(Você aluno deve copiar a pasta `prova_cracha_app` e completar os desafios abaixo)*

import 'package:flutter/material.dart';

void main() {
  runApp(const MeuCrachaApp());
}

class MeuCrachaApp extends StatelessWidget {
  const MeuCrachaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crachá do Desenvolvedor'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black26, blurRadius: 8),
              ],
              
              // ===============================================================
              // DESAFIO 5 (3 PONTOS) - DECORAÇÃO E GRADIENTE
              // Configure o fundo com LinearGradient aplicando
              // Colors.indigo e Colors.blueAccent.
              // ===============================================================
              gradient: const LinearGradient(
                colors: [
                  // TODO: Primeira cor do gradiente,
				Colors.indigo, Colors.blueAccent
                  // TODO: Segunda cor do gradiente,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                // ===============================================================
                // DESAFIO 1 (3 PONTOS) - FOTO DE PERFIL
                // Adicione a imagem via NetworkImage no CircleAvatar.
                // ===============================================================
                const CircleAvatar(
                  radius: 50,
	          backgroundImage: NetworkImage(data:image/jpeg;base64,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)
                  // TODO: Adicionar propriedade backgroundImage com NetworkImage
                ),
                
                const SizedBox(height: 15),
                
                const Text(
                  'Seu Nome Completo',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                
                // ===============================================================
                // DESAFIO 2 (3 PONTOS) - ESTILIZAÇÃO E BIOGRAFIA
                // Adicione a propriedade para fonte em itálico (fontStyle).
                // ===============================================================
                const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',
                  style: TextStyle(
                    color: Colors.white70,
		    fontStyle: Fontstyle.italic
                    // TODO: Inserir fontStyle: FontStyle.italic
                  ),
                ),
                
                const Divider(color: Colors.white38, height: 30),
                
                // ===============================================================
                // DESAFIO 3 (3 PONTOS) - ALINHAMENTO DE SKILLS (ROW)
                // Alinhe ao centro e crie os 3 Chips: 'Dart', 'Flutter', 'Git'.
                // ===============================================================
                const Row(
                  // TODO: Adicionar mainAxisAlignment: MainAxisAlignment.center

                  children: [
                    Chip(label: Text('Dart')),
                    SizedBox(width: 5),
                    // TODO: Adicionar o Chip 'Flutter',

                    SizedBox(width: 5),

                    // TODO: Adicionar o Chip 'Git',
                  ],
                ),
                
                const SizedBox(height: 15),
                
                // ===============================================================
                // DESAFIO 4 (3 PONTOS) - COMPILAÇÃO E ESTRUTURA
                // Garanta que o projeto prova_cracha_app compila sem erros no Debian.
                // ===============================================================
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ### Formulário de Coleta (Google Forms - 29/09)

// No formulário de entrega, você aluno deve enviar:

// 1. **Seu Nome Completo**

// 2. **Link do Repositório GitHub:** `[https://github.com/USUARIO/prova_cracha_app](https://github.com/USUARIO/prova_cracha_app)`

// 3. **Upload do arquivo `main.dart**`

// 4. **Upload do Captura de Tela (Print)** do app rodando no servidor Debian (`http://<IP_DEBIAN>:8080`). Obs. Importante ! Caso NÃO funcione na porta 8080, troque a porta por outra, por exemplo, 8081....

