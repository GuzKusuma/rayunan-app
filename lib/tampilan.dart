import 'package:flutter/material.dart';
import 'package:rayunan_app/carousel_makanan.dart';
import 'package:rayunan_app/bali_food.dart';
import 'package:rayunan_app/detail_screen.dart';

class TampilanUtama extends StatelessWidget {
  const TampilanUtama({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Center(
            child: Text(
              "Rayunan ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0), // Set tinggi Divider
            child: Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey.withOpacity(0.5),
              height: 1.0,
            ),
          ),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const MobileView();
          } else if (constraints.maxWidth <= 1200) {
            return const GridMakanan(
              gridCount: 4,
            );
          } else {
            return const GridMakanan(gridCount: 6);
          }
        }));
  }
}

//tampilan mobile
class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(7),
      child: Column(
        children: [
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Halo, Kusuma",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          ),
                          Text("Eksplorasi makanan khas bali yang kamu sukai"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.brown,
                              child: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.brown,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CarouselMakanan(),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Coba Makanan Ini",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: CardMakanan(),
          ),
        ],
      ),
    );
  }
}

//list card makanan
class CardMakanan extends StatelessWidget {
  const CardMakanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final MakananBali makanan = MakananBali.listMakanan[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DetailScreen(
                  makanan: makanan,
                );
              }),
            );
          },
          child: Card(
            margin: const EdgeInsets.all(8),
            color: Colors.brown,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(padding: EdgeInsets.all(5)),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(.0),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Center(
                      child: Image.asset(
                        makanan.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          makanan.name,
                          style: const TextStyle(
                              fontSize: 16.0, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 20,
                              color: Colors.white.withOpacity(0.8),
                            ),
                            Text(
                              makanan.location,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: MakananBali.listMakanan.length,
    );
  }
}

//Jika Constraint width > 600

class GridMakanan extends StatelessWidget {
  final int gridCount;
  const GridMakanan({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Halo, Kusuma",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
                    ),
                    Text("Eksplorasi makanan khas bali yang kamu sukai"),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.brown,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: CarouselMakanan(),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(bottom: 50)),
          const Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
            height: 5,
            color: Colors.grey,
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: GridView.count(
                crossAxisCount: gridCount,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: MakananBali.listMakanan.map((makanan) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailWebPage(makanan: makanan);
                      }));
                    },
                    child: Card(
                      color: Colors.brown,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.asset(makanan.imageAsset,
                                fit: BoxFit.cover),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              makanan.name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, bottom: 8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    size: 15,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                  Text(
                                    makanan.location,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  );
                }).toList(), // Tambahkan metode .toList() di sini
              ),
            ),
          ),
        ],
      ),
    );
  }
}
