/// id : 1048
/// brand : "colourpop"
/// name : "Lippie Pencil"
/// price : "5.0"
/// price_sign : "$"
/// currency : "CAD"
/// image_link : "https://cdn.shopify.com/s/files/1/1338/0845/collections/lippie-pencil_grande.jpg?v=1512588769"
/// product_link : "https://colourpop.com/collections/lippie-pencil"
/// website_link : "https://colourpop.com"
/// description : "Lippie Pencil A long-wearing and high-intensity lip pencil that glides on easily and prevents feathering. Many of our Lippie Stix have a coordinating Lippie Pencil designed to compliment it perfectly, but feel free to mix and match!"
/// rating : null
/// category : "pencil"
/// product_type : "lip_liner"
/// tag_list : ["cruelty free","Vegan"]
/// created_at : "2018-07-08T23:45:08.056Z"
/// updated_at : "2018-07-09T00:53:23.301Z"
/// product_api_url : "https://makeup-api.herokuapp.com/api/v1/products/1048.json"
/// api_featured_image : "//s3.amazonaws.com/donovanbailey/products/api_featured_images/000/001/048/original/open-uri20180708-4-13okqci?1531093614"
/// product_colors : [{"hex_value":"#B28378","colour_name":"BFF Pencil"},{"hex_value":"#A36B5E","colour_name":"951 Pencil"},{"hex_value":"#966A60","colour_name":"Beeper Pencil"},{"hex_value":"#8F5954","colour_name":"Oh Snap Pencil"},{"hex_value":"#975348","colour_name":"Curvii Pencil"},{"hex_value":"#865B69","colour_name":"Lumiere Pencil"},{"hex_value":"#8E474D","colour_name":"Bumble Pencil"},{"hex_value":"#5F2820","colour_name":"BFF Pencil 3"},{"hex_value":"#C095BC","colour_name":"Brills Pencil"},{"hex_value":"#743A6A","colour_name":"Are N Be Pencil"},{"hex_value":"#965564","colour_name":"Contempo Pencil"},{"hex_value":"#BF2C7E","colour_name":"Heart On Pencil"},{"hex_value":"#CE435D","colour_name":"Trixie Pencil"},{"hex_value":"#DA6952","colour_name":"Chi Chi Pencil"},{"hex_value":"#A33C37","colour_name":"Clique Pencil"},{"hex_value":"#C23D3C","colour_name":"Frenchie Pencil"},{"hex_value":"#AF4051","colour_name":"Bossy Pencil"},{"hex_value":"#914B4C","colour_name":"Wild Nothing Pencil"},{"hex_value":"#6D414B","colour_name":"Dopey Pencil"},{"hex_value":"#4D2D28","colour_name":"Toolips Pencil"},{"hex_value":"#361927","colour_name":"Mamacita Pencil"},{"hex_value":"#714B41","colour_name":"Pitch Pencil"},{"hex_value":"#762F50","colour_name":"LBB Pencil"},{"hex_value":"#8C4A47","colour_name":"Love Bug Pencil"},{"hex_value":"#702E2D","colour_name":"Poison Pencil"},{"hex_value":"#93283C","colour_name":"Bichette Pencil"},{"hex_value":"#653E44","colour_name":"Dukes Pencil"},{"hex_value":"#5C3357","colour_name":"Leather Pencil"},{"hex_value":"#242225","colour_name":"Bull Chic Pencil"},{"hex_value":"#B5716A","colour_name":"Brink Pencil"},{"hex_value":"#B0516F","colour_name":"I Heart This Pencil"},{"hex_value":"#542328","colour_name":"Ellarie Pencil"},{"hex_value":"#DFAC9B","colour_name":"Toy Pencil"},{"hex_value":"#AB7164","colour_name":"BFF Pencil 2"}]

class ActModel {
  ActModel({
      this.id, 
      this.brand, 
      this.name, 
      this.price, 
      this.priceSign, 
      this.currency, 
      this.imageLink, 
      this.productLink, 
      this.websiteLink, 
      this.description, 
      this.rating, 
      this.category, 
      this.productType, 
      this.tagList, 
      this.createdAt, 
      this.updatedAt, 
      this.productApiUrl, 
      this.apiFeaturedImage, 
      this.productColors,});

  ActModel.fromJson(dynamic json) {
    id = json['id'];
    brand = json['brand'];
    name = json['name'];
    price = json['price'];
    priceSign = json['price_sign'];
    currency = json['currency'];
    imageLink = json['image_link'];
    productLink = json['product_link'];
    websiteLink = json['website_link'];
    description = json['description'];
    rating = json['rating'];
    category = json['category'];
    productType = json['product_type'];
    tagList = json['tag_list'] != null ? json['tag_list'].cast<String>() : [];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    productApiUrl = json['product_api_url'];
    apiFeaturedImage = json['api_featured_image'];
    if (json['product_colors'] != null) {
      productColors = [];
      json['product_colors'].forEach((v) {
        productColors?.add(ProductColors.fromJson(v));
      });
    }
  }
  num? id;
  String? brand;
  String? name;
  String? price;
  String? priceSign;
  String? currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  dynamic rating;
  String? category;
  String? productType;
  List<String>? tagList;
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<ProductColors>? productColors;
ActModel copyWith({  num? id,
  String? brand,
  String? name,
  String? price,
  String? priceSign,
  String? currency,
  String? imageLink,
  String? productLink,
  String? websiteLink,
  String? description,
  dynamic rating,
  String? category,
  String? productType,
  List<String>? tagList,
  String? createdAt,
  String? updatedAt,
  String? productApiUrl,
  String? apiFeaturedImage,
  List<ProductColors>? productColors,
}) => ActModel(  id: id ?? this.id,
  brand: brand ?? this.brand,
  name: name ?? this.name,
  price: price ?? this.price,
  priceSign: priceSign ?? this.priceSign,
  currency: currency ?? this.currency,
  imageLink: imageLink ?? this.imageLink,
  productLink: productLink ?? this.productLink,
  websiteLink: websiteLink ?? this.websiteLink,
  description: description ?? this.description,
  rating: rating ?? this.rating,
  category: category ?? this.category,
  productType: productType ?? this.productType,
  tagList: tagList ?? this.tagList,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  productApiUrl: productApiUrl ?? this.productApiUrl,
  apiFeaturedImage: apiFeaturedImage ?? this.apiFeaturedImage,
  productColors: productColors ?? this.productColors,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['brand'] = brand;
    map['name'] = name;
    map['price'] = price;
    map['price_sign'] = priceSign;
    map['currency'] = currency;
    map['image_link'] = imageLink;
    map['product_link'] = productLink;
    map['website_link'] = websiteLink;
    map['description'] = description;
    map['rating'] = rating;
    map['category'] = category;
    map['product_type'] = productType;
    map['tag_list'] = tagList;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['product_api_url'] = productApiUrl;
    map['api_featured_image'] = apiFeaturedImage;
    if (productColors != null) {
      map['product_colors'] = productColors?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// hex_value : "#B28378"
/// colour_name : "BFF Pencil"

class ProductColors {
  ProductColors({
      this.hexValue, 
      this.colourName,});

  ProductColors.fromJson(dynamic json) {
    hexValue = json['hex_value'];
    colourName = json['colour_name'];
  }
  String? hexValue;
  String? colourName;
ProductColors copyWith({  String? hexValue,
  String? colourName,
}) => ProductColors(  hexValue: hexValue ?? this.hexValue,
  colourName: colourName ?? this.colourName,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hex_value'] = hexValue;
    map['colour_name'] = colourName;
    return map;
  }

}