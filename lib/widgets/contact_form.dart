import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/custom_styles.dart';
import 'package:portfolio/widgets/custom_form_field.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  String? _email;
  String? _message;
  late FocusNode formFocus;

  @override
  void initState() {
    super.initState();
    formFocus = FocusNode();
  }

  @override
  void dispose() {
    formFocus.dispose();
    super.dispose();
  }

  void resetForm() {
    setState(() {
      _name = null;
      _email = null;
      _message = null;
    });
    _formKey.currentState?.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: FocusTraversalGroup(
        policy: OrderedTraversalPolicy(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomStyles.getText('Contact me', style: CustomStyles.h3),
            const SizedBox(height: 16),
            FocusTraversalOrder(
              order: const NumericFocusOrder(1.0),
              child: CustomFormField(
                autoFocus: true,
                label: 'Full name:',
                hint: 'How shall I call you?',
                onSaved: (value) => setState(() => _name = value),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 4),
            FocusTraversalOrder(
              order: const NumericFocusOrder(2.0),
              child: CustomFormField(
                label: 'Email:',
                hint: 'What is your email?',
                onSaved: (value) => setState(() => _email = value),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter your email';
                  } else {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                      return 'Please enter a valid email';
                    }
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 8),
            FocusTraversalOrder(
              order: const NumericFocusOrder(3.0),
              child: CustomFormField(
                label: 'Message:',
                hint: 'How may I help you?',
                multiline: true,
                onSaved: (value) => setState(() => _message = value),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Please enter a message';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.bottomRight,
              child: FocusTraversalOrder(
                order: const NumericFocusOrder(4.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.blueGrey),
                  child: const Text('Send'),
                  onPressed: () async {
                    formFocus.requestFocus();
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      final success = await _submitForm();
                      _informUser(success);
                      if (success) {
                        resetForm();
                      }
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _informUser(bool success) {
    final snackbar = SnackBar(
      content: Text(success ? 'Your message was sent!' : 'Try again'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  Future<bool> _submitForm() async {
    bool sucess = false;
    final newForm = <String, dynamic>{
      "name": _name,
      "email": _email,
      "message": _message,
      "date": DateTime.now()
    };
    try {
      final db = FirebaseFirestore.instance;
      await db.collection("feedback_form").add(newForm);
      sucess = true;
    } catch (e) {
      sucess = false;
      rethrow;
    }
    return sucess;
  }
}
