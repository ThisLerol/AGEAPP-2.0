import 'package:flutter/material.dart';

class RegionPorRegion extends StatelessWidget {
  final int numero;
  const RegionPorRegion ({Key key, this.numero}): super(key:key);
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text(numero.toString()),
      ),
    );
  }
}