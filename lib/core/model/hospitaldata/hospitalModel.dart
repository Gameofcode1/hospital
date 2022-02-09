class HospitalData {
  List<Datas> datas;

  HospitalData({this.datas});

  HospitalData.fromJson(Map<String, dynamic> json) {
    if (json['datas'] != null) {
      datas = <Datas>[];
      json['datas'].forEach((v) {
        datas.add(new Datas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.datas != null) {
      data['datas'] = this.datas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Datas {
  String id;
  String name;
  String location;
  String phone;
  String website;
  String hours;
  String image;

  Datas(
      {this.id,
      this.name,
      this.location,
      this.phone,
      this.website,
      this.hours,
      this.image});

  Datas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    phone = json['phone'];
    website = json['website'];
    hours = json['hours'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['location'] = this.location;
    data['phone'] = this.phone;
    data['website'] = this.website;
    data['hours'] = this.hours;
    data['image'] = this.image;
    return data;
  }
}