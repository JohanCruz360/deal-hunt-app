import 'package:app_descuento_vistual/data/models/discount.dart';
import 'package:app_descuento_vistual/data/repositories/discount_repository.dart';

class SaveDiscountUseCase {
  final IDiscountRepository _repository;

  SaveDiscountUseCase(this._repository);

  Future<int> call(Discount discount) async {
    if (discount.id == null) {
      return _repository.insert(discount);
    } else {
      return _repository.update(discount);
    }
  }
}