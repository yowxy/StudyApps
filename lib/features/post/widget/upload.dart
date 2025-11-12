import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skill_loop/shared/theme.dart';

class uploadBox extends StatefulWidget {
  final String? title;
  final double height;
  final double width;
  final Color color;
  const uploadBox({
    this.title,
    required this.height,
    required this.width,
    required this.color,
    super.key});

  @override
  State<uploadBox> createState() => _uploadBoxState();
}

class _uploadBoxState extends State<uploadBox> {
  File? selectFile;
  final ImagePicker picker = ImagePicker();

  Future<void> _pickFile() async {
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      setState(() {
        selectFile= File(file.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
     return GestureDetector(
      onTap: _pickFile,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: selectFile == null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.upload_rounded,
                      color: Colors.white, size: 40),
                  const SizedBox(height: 10),
               Text('upload your image or video here to post',style: whiteTextStyle.copyWith(
                fontSize: 10,
                fontWeight: reguler,
               ),)
                ],
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.file(
                  selectFile!,
                  fit: BoxFit.cover,
                  width: widget.width,
                  height: widget.height,
                ),
              ),
      ),
    );
  }
}