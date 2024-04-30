
import 'package:flutter/material.dart';



import 'package:flutter_riverpod/flutter_riverpod.dart';

showAlert(BuildContext context) {
  return showModalBottomSheet(
      useSafeArea: true,
      scrollControlDisabledMaxHeightRatio: 1,
      context: context,
      builder: (context) {
        return Consumer(
          builder: (context, ref, child) {
            final control = TextEditingController();
            final numControl = TextEditingController();
            final formkey = GlobalKey<FormState>();
            return Form(
                key: formkey,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          ListTile(
                            leading: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.close)),
                            title: Text('Add to a contact'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                              
                              ],
                            ),
                          )
                        ],
                      ),
                    
                 
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'empty contacts';
                            }
                            return null;
                          },
                          controller: control,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Name'),
                            hintText: 'enter a name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          maxLength: 10,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter valid mobile number";
                            }
                            if (value.length < 10 || value.length > 10) {
                              return "Mobile number must have  10 digits";
                            }
                            return null;
                          },
                          controller: numControl,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Number',
                              label: Text('Number')),
                        ),
                      ),
                    ],
                  ),
                ));
          },
        );
      });
}
