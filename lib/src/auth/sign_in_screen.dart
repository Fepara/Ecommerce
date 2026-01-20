import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:green_grocer/src/auth/components/custom_text_fields.dart';
import 'package:green_grocer/src/auth/sign_up_screen.dart';
import 'package:green_grocer/src/config/custom_colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
     body: SingleChildScrollView(
       child: SizedBox(
         height: size.height,
         width: size.width,
         child: Column(
           children: [
             Expanded(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [

             // NOME DO APP
                   Text.rich(
                     TextSpan(
                       style: TextStyle(
                         fontSize: 40,
                       ),
                       children: [
                         TextSpan(
                           text: 'Green',
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         TextSpan(
                           text: 'grocer',
                           style: TextStyle(
                             color: CustomColors.customContrastColor,
                           ),
                         ),
                       ],
                     ),
                   ),

             // CATEGORIAS
                   SizedBox(
                     height: 30,
                     child: DefaultTextStyle(
                       style: TextStyle(
                         fontSize: 25,
                       ),
                       child: AnimatedTextKit(
                         pause: Duration.zero,
                         repeatForever: true,
                         animatedTexts: [
                          FadeAnimatedText('Frutas'),
                          FadeAnimatedText('Verduras'),
                          FadeAnimatedText('Legumes'),
                          FadeAnimatedText('Carnes'),
                          FadeAnimatedText('Cereais'),
                          FadeAnimatedText('Laticineos'),

                       ],
                       ),
                     ),
                   ),
                 ],
               ),
             ),

             // FORMULÁRIO
             Container(
               padding: const EdgeInsets.symmetric(
                 horizontal: 32,
                 vertical: 40,
               ),
               decoration: const BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.vertical(
                   top: Radius.circular(45),
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children:  [

             // EMAIL
                   CustomTextFields(
                     icon: Icons.email,
                     label: 'Email',
                   ),

             // SENHA
                   CustomTextFields(
                     icon: Icons.lock,
                     label: 'Senha',
                     isSecret: true,
                   ),

             // BOTÃO DE ENTRAR
                   SizedBox(
                     height: 50,
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.green,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(18)
                         )
                       ),

                       onPressed: (){},
                       child: const Text(
                         'Entrar',
                         style: TextStyle(
                           fontSize: 18,
                           color: Colors.white
                         ),
                       ),
                     ),
                   ),

             // ESQUECEU A SENHA
                   Align(
                     alignment: Alignment.centerRight,
                     child: TextButton(
                       onPressed: (){},
                       child: Text(
                           'Esqueceu a senha?',
                         style: TextStyle(
                           color: CustomColors.customContrastColor,
                         ),
                       ),
                     ),
                   ),

             // DIVISOR
                   Padding(
                     padding: const EdgeInsets.only(bottom: 10),
                     child: Row(
                       children: [
                         Expanded(
                           child: Divider(
                             color: Colors.grey.withAlpha(90),
                             thickness: 2,
                           ),
                         ),
                         const Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 15),
                           child:  Text('ou'),
                         ),
                         Expanded(
                           child: Divider(
                             color: Colors.grey.withAlpha(90),
                             thickness: 2,
                           ),
                         ),
                       ],
                     ),
                   ),



             // BOTÃO NOVO USER
                 SizedBox(
                   height: 50,
                   child: OutlinedButton(
                     style: OutlinedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18)
                       ),
                       side: const BorderSide(
                         width: 2,
                         color: Colors.green,
                       ),
                     ),
                     onPressed: (){
                       Navigator.of(context).push(
                         MaterialPageRoute(builder: (c) {
                           return SignUpScreen();
                             }
                         ),
                       );
                     },
                     child: const Text(
                         'Criar conta',
                       style: TextStyle(
                       fontSize: 18,
                         color: Colors.green
                     ),
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
    );
  }
}
