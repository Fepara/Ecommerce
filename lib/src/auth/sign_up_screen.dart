import 'package:flutter/material.dart';
import 'package:green_grocer/src/auth/components/custom_text_fields.dart';
import 'package:green_grocer/src/config/custom_colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                child: Center(
                  child: Text(
                   'Cadastro',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 35,
                   ),
                  ),
                ),
              ),

             // FORMULÁRIO
             Container(
               padding: EdgeInsets.symmetric(
                 horizontal: 32,
                 vertical: 40
               ),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.vertical(
                   top: Radius.circular(45),
                 )
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   CustomTextFields(icon: Icons.email, label: 'Email',),
                   CustomTextFields(icon: Icons.lock, label: 'Senha', isSecret: true,),
                   CustomTextFields(icon: Icons.person, label: 'Nome',),
                   CustomTextFields(icon: Icons.phone, label: 'Celular',),
                   CustomTextFields(icon: Icons.file_copy, label: 'CPF',),

                   const SizedBox(height: 20),

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
                         'Cadastrar usuário',
                         style: TextStyle(
                           fontSize: 18,
                           color: Colors.white
                         ),
                       ),
                     ),
                   )

                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
