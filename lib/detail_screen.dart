import 'package:flutter/material.dart';
import 'package:rayunan_app/bali_food.dart';

class DetailScreen extends StatelessWidget {
  final MakananBali makanan;
  const DetailScreen({Key? key, required this.makanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 800) {
          return DetailWebPage(makanan: makanan);
        } else if (constraints.maxWidth < 800) {
          return MobileDetailScreen(makanan: makanan);
        } else {
          return MobileDetailScreen(makanan: makanan);
        }
      },
    ));
  }
}

//Menampilkan Informasi Makanan yang dipilih
class MobileDetailScreen extends StatefulWidget {
  final MakananBali makanan;
  const MobileDetailScreen({
    super.key,
    required this.makanan,
  });

  @override
  State<MobileDetailScreen> createState() => _MobileDetailScreenState();
}

class _MobileDetailScreenState extends State<MobileDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          widget.makanan.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.4),
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back_ios_new),
                                iconSize: 25,
                                color: Colors.black,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0.4),
                                child: const FavoriteState()),
                          ],
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.makanan.name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                        const StarButtonState(),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(widget.makanan.rating)
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                        Expanded(child: Text(widget.makanan.location)),
                        Text(widget.makanan.openDays),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(widget.makanan.openTime)
                      ],
                    ),
                    Divider(
                      height: 20,
                      thickness: 2,
                      indent: 5,
                      endIndent: 5,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Column(
                      children: [
                        Text(
                          widget.makanan.deskripsi,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
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

//State untuk Star Icon

class StarButtonState extends StatefulWidget {
  const StarButtonState({super.key});

  @override
  State<StarButtonState> createState() => _StarButtonState();
}

class _StarButtonState extends State<StarButtonState> {
  bool isStarState = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isStarState ? Icons.star_rate : Icons.star_rate_outlined,
          color: isStarState ? Colors.yellow : null),
      iconSize: 30,
      onPressed: () {
        setState(() {
          isStarState = !isStarState;
        });
      },
    );
  }
}

//State Icon favorie
class FavoriteState extends StatefulWidget {
  const FavoriteState({super.key});

  @override
  State<FavoriteState> createState() => _FavoriteState();
}

class _FavoriteState extends State<FavoriteState> {
  bool isFavoriteState = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
          isFavoriteState ? Icons.favorite : Icons.favorite_outline_outlined,
          color: isFavoriteState ? Colors.red : Colors.black),
      iconSize: 25,
      onPressed: () {
        setState(() {
          isFavoriteState = !isFavoriteState;
        });
      },
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final MakananBali makanan;

  const DetailWebPage({super.key, required this.makanan});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 64,
      ),
      child: Center(
        child: SizedBox(
          width: 1000,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.8),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Rayunan",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ]),
              const SizedBox(
                height: 32,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(widget.makanan.imageAsset),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Expanded(
                      child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            widget.makanan.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(Icons.calendar_today),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      widget.makanan.openDays,
                                    )
                                  ],
                                ),
                              ),
                              const FavoriteState(),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.access_time),
                              const SizedBox(width: 8.0),
                              Text(
                                widget.makanan.openTime,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              const StarButtonState(),
                              Text(
                                widget.makanan.rating,
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              widget.makanan.deskripsi,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
