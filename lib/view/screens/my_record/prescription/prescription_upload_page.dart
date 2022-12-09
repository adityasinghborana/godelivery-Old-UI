import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sixam_mart/view/screens/my_record/patient_detail_page.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';

class PrescriptionUploadPage extends StatefulWidget {
  const PrescriptionUploadPage({Key key}) : super(key: key);

  @override
  State<PrescriptionUploadPage> createState() => _PrescriptionUploadPageState();
}

class _PrescriptionUploadPageState extends State<PrescriptionUploadPage> {
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_new)),
                      SizedBox(width: 20),
                      Text(
                        'upload_prescription'.tr,
                        style: robotoRegular.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff000000)),
                      ),
                    ],
                  ),
                  SizedBox(height: 26),
                  Text(
                    'upload'.tr.toUpperCase(),
                    style: robotoRegular.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'please_upload'.tr.toUpperCase(),
                    style: robotoRegular.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff979797)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          _getFromCamera();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(Images.icCamera),
                            SizedBox(height: 10),
                            Text(
                              'camera'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff09323e)),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _getFromGallery();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(Images.icGallery),
                            SizedBox(height: 10),
                            Text(
                              'Gallery'.tr,
                              style: robotoRegular.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff09323e)),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(Images.icPdf),
                          SizedBox(height: 10),
                          Text(
                            'pdf'.tr.toUpperCase(),
                            style: robotoRegular.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff09323e)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
          Image.asset(Images.imgUploadPrescription)
        ],
      ),
    );
  }

  /// Get from gallery
  _getFromGallery() async {
    XFile pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      // print("picked file" + pickedFile.path);
      _cropImage(pickedFile.path);
      // print("crop function called");

      setState(() {
        imageFile = File(pickedFile.path);
        // print('img gallery-->' + imageFile!.path.toString());

        Get.to(PatientDetailsPage(
          image: imageFile,
        ));
      });
    }
  }

  //crop image
  _cropImage(filePath) async {
    // print("1 i n crop");
    CroppedFile croppedImage = await ImageCropper.platform.cropImage(
      sourcePath: filePath,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      maxWidth: 500,
      maxHeight: 500,
    );
    if (croppedImage != null) {
      // print("cropimagepath" + croppedImage.path);
      imageFile = File(croppedImage.path);
      setState(() {});
      // imageFile = croppedImage as File?;
      // print("cropped image file" + imageFile!.path);
    }
  }

  //get from camera
  _getFromCamera() async {
    XFile pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        print('img camera-->' + imageFile.path.toString());
      });
      // imageFileListRestroom!.add(pickedFile);
      setState(() {
        imageFile = File(pickedFile.path);

        Get.to(PatientDetailsPage(
          image: imageFile,
        ));
      });
      // print(
      //     'restroom image list-->' + imageFileListRestroom!.length.toString());
    }
  }
}
