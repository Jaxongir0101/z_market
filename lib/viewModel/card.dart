class PlasticCard {
  int? id;
  String? title;
  String? cardNumber;
  String? cardDate;
  

  PlasticCard(this.title, this.cardNumber, this.cardDate,);

  PlasticCard.withId(this.id, this.title, this.cardNumber, this.cardDate);

  Map<String, Object?> toMap() {
    var map = <String, Object?>{
      "title": title,
      "cardNumber": cardNumber,
      "cardDate": cardDate
    };
    if (id != null) {
      map["id"] = id;
    }
    return map;
  }

  PlasticCard.fromMap(Map<String, Object?> map) {
    id = (map["id"] as int?)!;
    title = (map["title"] as String?)!;
    cardNumber = (map["cardNumber"] as String?)!;
    cardDate = (map["cardDate"] as String?)!;
  }
}
