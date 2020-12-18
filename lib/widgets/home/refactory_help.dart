import 'package:flutter/material.dart';

class RefactoryHelp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
          padding: const EdgeInsets.all(64),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Apa yang Refactory Dapat Bantu?',
                style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 64,
              ),
              Image.asset('assets/images/material_approval.png'),
              const SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Memperkuat Tim ',
                    style: Theme.of(context).textTheme.headline5,
                    children: [
                      TextSpan(
                        text: 'Engineer ',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                      TextSpan(
                        text: 'Anda',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Bisnis di jaman modern membutuhkan keterampilan pengembangan terbaik untuk meningkatkan skala produk. Kami dapat mempersiapkan course dan juga dapat menyediakan tim yang menangani kebutuhan digital Anda.',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              Image.asset('assets/images/material_bolt.png'),
              const SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Wujudkan ',
                    style: Theme.of(context).textTheme.headline5,
                    children: [
                      TextSpan(
                        text: 'Software ',
                        style: Theme.of(context).textTheme.headline5.copyWith(
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                      TextSpan(
                        text: 'Impian Anda',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Kami adalah perusahaan One-Stop IT Solution untuk proyek Anda, membantu di setiap tahap mulai dari menyusun ide, melalui desain dan pengembangan aplikasi seluler, situs web dan aplikasi desktop, hingga peluncuran produk.',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
