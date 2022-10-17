import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const String text =
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod'
        'tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,';
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Air-Max-270',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                Text(
                  '\$150.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5.0,
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          SizedBox(
            height: size.height * 0.035,
          ),
          InkWell(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'more details'.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                Container(
                  width: size.width * 0.27,
                  height: 1.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Size',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 30.0,
                          padding: const EdgeInsets.symmetric(horizontal: 5.0,),
                          alignment: Alignment.center,
                          child: const Text('Uk'),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 30.0,
                          padding: const EdgeInsets.symmetric(horizontal: 5.0,),
                          alignment: Alignment.center,
                          child: const Text('Uk'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: (size.width * 0.8) / 4,
                  height: 40.0,
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(width: 0.5, color: Colors.grey,),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const[
                      Text('Try it'),
                      Icon(Icons.accessibility_new_rounded),
                    ],
                  ),
              ),
              Container(
                width: (size.width * 0.8) / 4,
                height: 40.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 0.5, color: Colors.grey,),
                ),
                child: const Text('7,5'),
              ),
              Container(
                width: (size.width * 0.8) / 4,
                height: 40.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 0.5, color: Colors.grey,),
                ),
                  child: const Text('8'),
              ),
              Container(
                width: (size.width * 0.8) / 4,
                height: 40.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(width: 0.5, color: Colors.grey,),
                ),
                  child: const Text('9,5'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
