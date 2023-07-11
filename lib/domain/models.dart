// ignore_for_file: public_member_api_docs, sort_constructors_first
//OnBoarding Models
class SliderObject {
  String title;
  String subtitle;
  String image;
  SliderObject({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

class SliderViewObject {
  SliderObject sliderObject;
  int numberOfSlides;
  int currentIndex;
  SliderViewObject({
    required this.sliderObject,
    required this.numberOfSlides,
    required this.currentIndex,
  });
}

class Customer {
  String id;
  String name;
  int numberOfNotification;
  Customer({
    required this.id,
    required this.name,
    required this.numberOfNotification,
  });
}

class Contacts {
  String phone;
  String email;
  String link;
  Contacts({
    required this.phone,
    required this.email,
    required this.link,
  });
}

class Authentication {
  Customer? customer;
  Contacts? contacts;
  Authentication({
    required this.customer,
    required this.contacts,
  });
}
