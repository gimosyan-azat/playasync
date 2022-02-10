import 'package:flutter/material.dart';
import 'package:playasync/global_vars.dart';
import 'package:playasync/components/MainSlider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: 50,
                    child: Material(
                      elevation: 10,
                      shadowColor: Colors.black12,
                      child: TextFormField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(defaultBorderRadius)),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('GO'),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shadowColor: Colors.black12,
                          elevation: 10),
                    ))
              ]),
              const SizedBox(height: 24),
              MainSlider(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Items',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextButton(onPressed: () {}, child: const Text('See All'))
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: <Widget>[
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black12,
      elevation: 10,
      child: Column(
        children: [
          Image.asset('images/mobile.jpg'),
          const SizedBox(height: 10),
          Text(
            'Oneplus 9',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          const Text(
            '39 900р.',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
