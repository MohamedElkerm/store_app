import 'package:flutter/material.dart';
import 'package:store_app/helper/widgets/text_form_field.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_prodct.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});

  static String id = 'update';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ProductModel productModel = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          defaultFormField(
            controller: _titleController,
            label: 'title',
            type: TextInputType.text,
          ),
          defaultFormField(
            controller: _priceController,
            label: 'price',
            type: TextInputType.number,
          ),
          defaultFormField(
            controller: _descriptionController,
            label: 'description',
            type: TextInputType.text,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          UpdateProductService().updateProduct(
            id: productModel.id,
            title: _titleController.text,
            price: _priceController.text,
            description: _descriptionController.text,
            image: productModel.image,
            category: productModel.category,
          ).then((value){
            showDialog(context: context, builder: (context){
              return Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child:const Center(
                  child: Text('Done !'),
                ),
              );
            });
          });
        },
        child: const Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
