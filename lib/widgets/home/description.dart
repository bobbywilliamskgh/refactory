import 'package:flutter/material.dart';
import './partner_list_view.dart';

class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: deviceHeight,
                child: Image.asset(
                  'assets/images/background_home.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: deviceHeight,
                color: Color.fromRGBO(32, 85, 114, 0.6),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
                width: double.infinity,
                height: deviceHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Empowering ',
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'People ',
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      color: Theme.of(context).accentColor,
                                    ),
                          ),
                          TextSpan(
                            text: 'Through Programming',
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            'Refactory adalah perusahaan edukasi dan teknologi yang menyediakan layanan lengkap berupa ',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .copyWith(color: Colors.white),
                        children: [
                          TextSpan(
                            text: 'course ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white),
                          ),
                          TextSpan(
                            text: 'mapupun ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(color: Colors.white),
                          ),
                          TextSpan(
                            text: 'custom training ',
                            style:
                                Theme.of(context).textTheme.bodyText2.copyWith(
                                      fontStyle: FontStyle.italic,
                                      color: Colors.white,
                                    ),
                          ),
                          TextSpan(
                              text:
                                  'yang materinya dapat disesuaikan dengan kebutuhan teknologi dan bisnis perusahaan Anda.',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(
                                    color: Colors.white,
                                  )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text(
                        'Temukan Solusi Anda',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text('Tingkatkan Skill Anda'),
                    ),
                  ],
                ),
              ),
              Container(
                height: deviceHeight,
                child: PartnerListView(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
