import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:website/stores/bio/bio.dart';
import 'package:website/widget/menu.dart';
import 'package:website/widget/text.dart';

class BioPage extends StatelessWidget {
  const BioPage({
    Key key,
    @required this.routePath,
  }) : super(key: key);

  final String routePath;

  @override
  Widget build(BuildContext context) {
    final bio = Provider.of<Bio>(context);
    bio.urlImg = "https://firebasestorage.googleapis.com/v0/b/marks-portfolio.appspot.com/o/49857738_2041975485886075_158154731791843328_n.jpg?alt=media&token=3ea4ef6d-3be2-4231-8af2-096f40f1280f";

    return Center(
      child: ListView(
        children: <Widget>[
          Stack(
            children: [
              Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 40.0),
                      height: 200,
                      width: 200,
                      child: CircularProgressIndicator())),
              Observer(
                builder: (_) => Center(
                    child: Container(
                  height: 250,
                  width: 250,
                  margin: EdgeInsets.only(top: 20.0),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: bio.urlImg,
                  ),
                )),
              )
            ],
          ),
          SizedBox(height: 20),
          Hero(tag: "menu", child: Menu(path: routePath)),
          SizedBox(height: 20),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Texxt(
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent maximus egestas varius. In mattis, tortor et consequat tristique, sem leo convallis risus, et facilisis libero odio id urna. Donec consectetur vestibulum nisl eget sodales. Nunc eu orci augue. Vivamus convallis porttitor nunc non laoreet. Vivamus eleifend, quam dictum luctus condimentum, enim ante pulvinar nulla, eget maximus nibh felis sed nunc. Nunc tempus condimentum ornare. Suspendisse potenti. Nulla facilisi. Sed egestas accumsan efficitur."),
              SizedBox(
                height: 20,
              ),
              Texxt(
                  content:
                      "Phasellus sed metus at ligula scelerisque efficitur eget vel quam. Proin et dui et massa hendrerit tincidunt at at odio. Quisque nec faucibus eros, a viverra nibh. Nam eu venenatis lacus. Nulla facilisi. Donec cursus aliquet enim sit amet volutpat. Vestibulum eget auctor mi. Donec pellentesque malesuada purus eu feugiat. Mauris auctor lorem ac sem cursus, quis aliquam sapien vestibulum. Duis ac lacus ac neque maximus congue."),
              SizedBox(
                height: 20,
              ),
              Texxt(
                  content:
                      "Proin ut lacinia libero. Proin rhoncus ultricies sodales. Fusce at tempus nibh, eget sagittis ligula. Integer sed quam enim. Integer sem tortor, iaculis eget mauris id, viverra consectetur sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin interdum faucibus augue sit amet cursus. Donec auctor mi at nisi gravida, vel fermentum nunc gravida. Curabitur nec ex id eros pretium ornare. Donec ullamcorper vulputate est."),
              SizedBox(
                height: 20,
              ),
              Texxt(
                  content:
                      "Vestibulum ut pulvinar tortor. Vivamus magna ipsum, laoreet sed molestie et, venenatis ut tortor. Morbi ut justo et risus pellentesque posuere. Curabitur sodales nulla non est hendrerit tempor. Donec hendrerit, nibh id auctor ornare, tortor nunc tristique ex, eget maximus arcu neque eu dui. Vestibulum quis odio ligula. Fusce rhoncus sapien eget placerat cursus. Duis laoreet, nisl id ullamcorper euismod, velit odio volutpat eros, a rhoncus enim sem sit amet ipsum. Suspendisse venenatis sapien et odio dapibus, quis posuere lacus fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras non dui vel orci dictum vestibulum."),
              SizedBox(
                height: 20,
              ),
              Texxt(
                  content:
                      "Sed mattis, mauris faucibus condimentum euismod, orci lectus dapibus turpis, efficitur molestie dolor felis ac odio. Curabitur id mattis leo, vel lacinia erat. Morbi nec ornare justo, at pretium arcu. In viverra ante sed leo mollis pulvinar. In congue eget nunc at ultrices. In ultrices turpis a orci rhoncus semper. Suspendisse potenti. Praesent eleifend ante nec orci iaculis, porttitor egestas sem ultricies. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras ut rutrum tortor."),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
