import 'package:flutter/material.dart';
import '../../models/partner.dart';

class PartnerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context).loadString(
        'assets/json/partner.json',
      ),
      builder: (context, snapshot) {
        final List<Partner> partners = getPartners(snapshot.data);

        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'PARTNER EKSLUSIF KAMI',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              width: double.infinity,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: partners.length,
                itemBuilder: (context, index) {
                  return PartnerItem(partners[index]);
                },
              ),
            )
          ],
        );
      },
    );
  }
}

class PartnerItem extends StatelessWidget {
  final Partner partner;

  PartnerItem(this.partner);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      padding: EdgeInsets.all(20),
      width: 100,
      child: Image.network(partner.photoUrl, fit: BoxFit.fitWidth),
    );
  }
}
