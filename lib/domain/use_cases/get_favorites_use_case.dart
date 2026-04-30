import 'package:app_descuento_vistual/data/models/discount.dart';
import 'package:app_descuento_vistual/data/repositories/discount_repository.dart';

class GetFavoritesUseCase {
  final IDiscountRepository _repository;

  GetFavoritesUseCase(this._repository);

  Future<List<Discount>> call() async {
    return _repository.getFavorites();
  }
}