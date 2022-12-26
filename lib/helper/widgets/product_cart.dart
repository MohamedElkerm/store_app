import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/modules/update_product_page.dart';

Widget productCard(ProductModel productModel,context){
  return GestureDetector(
    onTap: (){
      Navigator.pushNamed(context, UpdateProductPage.id);
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(

            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  offset: const Offset(0, 10))
            ]),
            child: Card(
              elevation: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding:const  EdgeInsets.all(8.0),
                    child:  Text(
                      productModel.title.toString(),
                      style:const TextStyle(overflow: TextOverflow.ellipsis,color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Padding(
                        padding:const  EdgeInsets.all(8.0),
                        child:  Text(
                          '\$ ${productModel.price.toString()}',
                          style:
                          const TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 40,
            bottom: 90,
            child: Image.network(
              productModel.image.toString(),
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    ),
  );
}