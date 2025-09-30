import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantForm extends StatefulWidget {
  final String? docId;
  final Map<String, dynamic>? existingData;

  const RestaurantForm({super.key, this.docId, this.existingData});

  @override
  State<RestaurantForm> createState() => _RestaurantFormState();
}

class _RestaurantFormState extends State<RestaurantForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _locationController;

  @override
  void initState() {
    super.initState();
    _nameController =
        TextEditingController(text: widget.existingData?['name'] ?? '');
    _locationController =
        TextEditingController(text: widget.existingData?['location'] ?? '');
  }

  @override
  Widget build(BuildContext context) {
    final restaurants = FirebaseFirestore.instance.collection('restaurants');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.docId == null ? "Nuevo Restaurante" : "Editar Restaurante"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: "Nombre"),
                validator: (value) =>
                value == null || value.isEmpty ? "Ingresa un nombre" : null,
              ),
              TextFormField(
                controller: _locationController,
                decoration: const InputDecoration(labelText: "Ubicación"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    if (widget.docId == null) {
                      await restaurants.add({
                        'name': _nameController.text,
                        'location': _locationController.text,
                      });
                    } else {
                      await restaurants.doc(widget.docId).update({
                        'name': _nameController.text,
                        'location': _locationController.text,
                      });
                    }
                    Navigator.pop(context);
                  }
                },
                child: Text(widget.docId == null ? "Guardar" : "Actualizar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
