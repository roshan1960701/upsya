import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Upsya is Personal, More of Listner & Little Advice.");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("asset/onImg3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel
      .setDesc("Upsya is no therapist or a Doctor. Simply selflessly caring.");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("asset/onImg2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc(
      "Upsya is a friend. Who keeps secrets, Expects nothing in return.");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("asset/onImg1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}
