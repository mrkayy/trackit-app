class Order {
  final String? image;
  final String? postFee;
  final String? lastMile;
  final double? weight;
  final String? receiptNum;
  final String? postFrom;
  final DateTime? eta;

  Order(
      {this.eta,
      this.image,
      this.lastMile,
      this.postFee,
      this.postFrom,
      this.receiptNum,
      this.weight}); 
}
