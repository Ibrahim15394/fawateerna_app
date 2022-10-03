class BoardingModel{
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}
List<BoardingModel> boarding =
[
  BoardingModel(
    image:'assets/images/onboard.png',
    title: 'فاتورة الكترونية',
    body: 'مع تعليمات هيئةالزكاةوالضريبة والجمارك واصدار فواتيرك الالكترونية,واربط مع النظام المحاسبي لمزامنة.فواتير المبيعات والمشتريات',
  ),
  BoardingModel(
    image:'assets/images/onboard2.png',
    title: 'ادارة العملاء',
    body: 'جدولة العملاء حسب المعلومات حسب المعلومات المتاحة علي البرنامج بالاضافة الي توقع طلبات العملاء المستقبلية تبعا لحركة المخزون الشهرية',
  ),
  BoardingModel(
    image:'assets/images/onboard3.png',
    title: 'اشعارات الفواتير',
    body: 'اصدار الفواتير والاشعارات الورقية الي عملية الكترونية تسمح بتبادل الفواتير والاشعارات المدنية والدائنة',
  ),
];