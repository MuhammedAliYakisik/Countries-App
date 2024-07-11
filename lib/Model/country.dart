class Country {
  Flags? flags;
  Name? name;
  int? population;

  Country({this.flags, this.name, this.population});

  Country.fromJson(Map<String, dynamic> json) {
    flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    population = json['population'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flags != null) {
      data['flags'] = this.flags!.toJson();
    }
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['population'] = this.population;
    return data;
  }
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({this.png, this.svg, this.alt});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    data['alt'] = this.alt;
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? new NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['common'] = this.common;
    data['official'] = this.official;
    if (this.nativeName != null) {
      data['nativeName'] = this.nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Eng? eng;

  NativeName({this.eng});

  NativeName.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? new Eng.fromJson(json['eng']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eng != null) {
      data['eng'] = this.eng!.toJson();
    }
    return data;
  }
}

class Eng {
  String? official;
  String? common;

  Eng({this.official, this.common});

  Eng.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['official'] = this.official;
    data['common'] = this.common;
    return data;
  }
}
