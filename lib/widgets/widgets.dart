// ignore_for_file: library_private_types_in_public_api

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salon/screens/cronograma.dart';
import 'package:salon/styles/colors.dart';
import 'package:salon/styles/font_styles.dart';

const Color verde = Color(0xFF25D366);
const Color blanco = Colors.white;

//necesitamos que sea stateful para que cambie de color
class WhatsAppButton extends StatefulWidget {
  const WhatsAppButton({super.key});

  @override
  _WhatsAppButtonState createState() => _WhatsAppButtonState();
}

class _WhatsAppButtonState extends State<WhatsAppButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          color: isHovered ? blanco : verde,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: verde, width: 2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: isHovered ? verde : blanco,
              ),
            ),
            const SizedBox(width: 5),
            Image.asset(
              'images/whatsapp_icon.jpg',
              width: 21,
              height: 21,
            ),
          ],
        ),
      ),
    );
  }
}

class RowHorario extends StatelessWidget {
  const RowHorario({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isMinimum = screenWidth < 600;
    bool isLittle = screenWidth < 800;
    bool isMedium = screenWidth < 1200;
    return Container(
      padding: EdgeInsets.symmetric(vertical: ((!isMinimum && !isLittle) && screenHeight > 1200 ? 80 : 30), horizontal: 10),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [violeta, rosa], // Degradé entre violeta y rosa
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'images/sticker5.png', //acá iría la imagen de "ARCHI DANCE"
                  width: isLittle ? max(100, (screenWidth / 5)) : 240 / (!isMedium ? 1 : 1.5),
                  height: 130 / (!isMedium ? 1 : 1.5),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: !isMinimum ? 15 : 5),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Horarios()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: amarillo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: isLittle
                          ? (screenWidth / 40)
                          : !isMedium
                              ? 30
                              : 25),
                  child: Text(
                    'Mirá los horarios',
                    style: buttonTextStyle(fontSize: isLittle ? max(10, screenWidth / 50) : (!isMedium ? 22 : 14)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: isLittle ? (screenWidth / 30) : 50 / (!isMedium ? 1 : 1.5)),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    'CANTO',
                    style: disciplinasTextStyle(fontSize: !isMedium ? 35 : 22),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'DANZA BABY',
                    style: disciplinasTextStyle(colorete: blanco, fontSize: !isMedium ? 25 : 15),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'YOGA',
                    style: disciplinasTextStyle(colorete: blanco, fontSize: !isMedium ? 25 : 15),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'FOLKLORE',
                    style: disciplinasTextStyle(fontSize: !isMedium ? 35 : 22),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'BACHATA',
                    style: disciplinasTextStyle(fontSize: !isMedium ? 30 : 18),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'SALSA',
                    style: disciplinasTextStyle(colorete: blanco, fontSize: !isMedium ? 35 : 22),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'TANGO',
                    style: disciplinasTextStyle(colorete: blanco, fontSize: !isMedium ? 25 : 15),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'DANZA KIDS',
                    style: disciplinasTextStyle(fontSize: !isMedium ? 35 : 22),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: isLittle ? screenWidth / 30 : 50 / (!isMedium ? 1 : 1.5)),
          if (!isMinimum) ...[
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'images/sticker1.png',
                    width: isLittle ? screenWidth / 5.5 : 230 / (!isMedium ? 1 : 1.5),
                    height: 230 / (!isMedium ? 1 : 1.5),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: isLittle ? screenWidth / 80 : 20 / (!isMedium ? 1 : 1.5)),
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'images/sticker2.png',
                        width: isLittle ? screenWidth / 6.5 : 190 / (!isMedium ? 1 : 1.5),
                        height: 130 / (!isMedium ? 1 : 1.5),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 15),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'images/sticker3.png',
                        width: isLittle ? screenWidth / 6.5 : 190 / (!isMedium ? 1 : 1.5),
                        height: 85 / (!isMedium ? 1 : 1.5),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}

class RowSalon extends StatelessWidget {
  const RowSalon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [],
    );
  }
}
