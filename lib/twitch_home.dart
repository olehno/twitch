import 'package:flutter/material.dart';
import 'package:twitch/twitch_video_item.dart';

class TwitchHome extends StatelessWidget {
  const TwitchHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Color(0xFF6641A3),
                  radius: 32,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://media.gq.com/photos/566ac3fec0f741b430e641e7/1:1/w_1407,h_1407,c_limit/elon-musk-gq-1215-01-sq.jpg",
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "👋Hola, ",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "ElonMask!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(width: 20),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 32,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000",
                        ),
                      ),
                    ),
                    Text(
                      "Live",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 32,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "https://www.w3schools.com/howto/img_avatar.png",
                        ),
                      ),
                    ),
                    Text(
                      "Live",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://www.w3schools.com/howto/img_avatar2.png",
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 23),
            Row(
              children: [
                SizedBox(width: 20),
                Container(
                  height: 25,
                  width: 100,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF6641A3),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                      child: Text(
                        "Just Chatting",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                SizedBox(
                  height: 25,
                  width: 30,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF21261E),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                      child: Text(
                        "IRL",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                SizedBox(
                  height: 25,
                  width: 60,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF21261E),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                      child: Text(
                        "Musica",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                SizedBox(
                  height: 25,
                  width: 65,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFF21261E),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: const Center(
                      child: Text(
                        "Esports",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 37),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => const TwitchVideoItem(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }
}
