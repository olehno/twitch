import 'package:flutter/material.dart';

class TwitchVideoItem extends StatelessWidget {
  const TwitchVideoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
              width: 2,
              color: const Color(0xFF6641A3),
            )),
            child: Image.network(
              "https://lh3.googleusercontent.com/K1WlJ-E9ilG8dUiBqStpeB0IXREdxZIfmVm8o7peXwQqv2Ww3Wl_IEa8L7C4idralSlJ5TAXkGsCLw_EmasGmzOj=w640-h400-e365-rj-sc0x00ffffff",
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000",
                ),
              ),
              SizedBox(width: 6),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Il GTA Nerd della moltiplicazione dei contatti",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "DarioMocciaTwitch",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
