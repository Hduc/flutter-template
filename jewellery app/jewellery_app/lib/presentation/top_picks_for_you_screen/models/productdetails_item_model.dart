/// This class is used in the [productdetails_item_widget] screen.

class ProductdetailsItemModel {
  String? image;
  String? title;
  String? rate;
  String? sellprice;
  String? regulerPrice;
  String? discount;
  String? noOfReview;
  bool? isDiscount;
  bool? isFavourite;
  bool? isRecommended;
  bool? isOnSale;

  ProductdetailsItemModel(
      this.image,
      this.title,
      this.rate,
      this.sellprice,
      this.regulerPrice,
      this.discount,
      this.noOfReview,
      this.isFavourite,
      this.isDiscount,
      this.isRecommended,
      this.isOnSale);
}
