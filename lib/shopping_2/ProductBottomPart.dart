import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductBottomPart extends StatefulWidget {
  @override
  _ProductBottomPartState createState() => _ProductBottomPartState();
}

class _ProductBottomPartState extends State<ProductBottomPart> {
  bool isExpanded = false;
  bool isSelected = false;
  int currentItemSelected = 0;
  int currentColorItemSelected = 0;
  int qyt = 0;
  void incriment() {
    setState(() {
      qyt++;
    });
  }

  void decriment() {
    setState(() {
      qyt--;
    });
  }

  void _expand() {
    setState(() {
      isExpanded = isExpanded ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Product Description',
                style: TextStyle(
                    color: Colors.grey.withOpacity(.5),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              AnimatedCrossFade(
                firstChild: Text(
                    "Streamlined and modern, these NMD shoes combine '80s racing heritage with style cues taken from outdoor trail gear. The foot-hugging knit upper rides on a responsive cushioned midsole",
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                secondChild: Text(
                    "Streamlined and modern, these NMD shoes combine '80s racing heritage with style cues taken from outdoor trail gear. The foot-hugging knit upper rides on a responsive cushioned midsole Streamlined and modern, these NMD shoes combine '80s racing heritage with style cues taken from outdoor trail gear. The foot-hugging knit upper rides on a responsive cushioned midsole",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.7),
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                crossFadeState: isExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                duration: kThemeAnimationDuration,
              ),
              GestureDetector(
                onTap: () => _expand(),
                child: Text(
                  isExpanded ? 'less' : ' more',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Text(
                      'Size',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(.5),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Quantity',
                      style: TextStyle(
                          color: Colors.grey.withOpacity(.5),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 38,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        size(1, 1),
                        size(2, 2),
                        size(3, 12),
                        size(4, 24),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 38,
                    decoration: BoxDecoration(
                        color: Color(0xFF525663),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () => decriment(),
                            child: Container(
                              width: double.infinity,
                              child: Center(
                                child: Text("-",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            child: Center(
                              child: Text(qyt.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: GestureDetector(
                            onTap: () => incriment(),
                            child: Container(
                              width: double.infinity,
                              child: Center(
                                child: Text("+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Select Color',
                style: TextStyle(
                    color: Colors.grey.withOpacity(.5),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: <Widget>[
                  color(1, Colors.blue),
                  color(2, Colors.yellow),
                  color(3, Colors.green),
                  color(4, Colors.black),
                  color(5, Colors.white),
                  color(6, Colors.pink),
                  color(7, Colors.purple),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Price',
                style: TextStyle(
                    color: Colors.grey.withOpacity(.5),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  '\$80',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: -10,
        bottom: -10,
        child: Image.asset(
          'assets/giftcard.png',
          width: 150,
          height: 80,
          fit: BoxFit.cover,
        ),
      )
    ]);
  }

  Widget size(int index, int size) {
    bool isSelected = false;
    isSelected = currentItemSelected == index ? true : false;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentItemSelected = index;
          });
        },
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: isSelected ? Colors.red : Color(0xFF525663),
              boxShadow: [
                BoxShadow(
                    color: isSelected
                        ? Colors.black.withOpacity(.6)
                        : Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
          child: Center(
            child: Text(
              "$size",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  Widget color(int index, Color color) {
    bool isSelected = false;
    isSelected = currentColorItemSelected == index ? true : false;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentColorItemSelected = index;
          });
        },
        child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: isSelected ? color : color.withOpacity(.9),
              boxShadow: [
                BoxShadow(
                    color: isSelected
                        ? Colors.black.withOpacity(.6)
                        : Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
          child: Center(
            child: Text(
              "",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
