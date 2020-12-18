import 'package:flutter/material.dart';
import '../../models/as_seen_on.dart';

class AsSeenOnTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Container(
            padding: EdgeInsets.all(32),
            height: 100,
            width: double.infinity,
            child: Text(
              'AS SEEN ON',
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class AsSeenOnGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: DefaultAssetBundle.of(context)
          .loadString('assets/json/as_seen_on.json'),
      builder: (context, snapshot) {
        final asSeenOns = getAsSeenOns(snapshot.data);
        return SliverPadding(
          padding: EdgeInsets.all(36),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 40,
              crossAxisSpacing: 40,
              childAspectRatio: 2.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return AsSeenOnItem(asSeenOns[index]);
              },
              childCount: asSeenOns.length,
            ),
          ),
        );
      },
    );
  }
}

class AsSeenOnItem extends StatelessWidget {
  final AsSeenOn asSeenOn;

  AsSeenOnItem(this.asSeenOn);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        asSeenOn.photoUrl,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
