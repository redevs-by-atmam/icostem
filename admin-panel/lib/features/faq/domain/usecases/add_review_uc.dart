import 'package:conference_admin/core/datastate/data_state.dart';
import 'package:conference_admin/core/usecase/usecase.dart';
import 'package:conference_admin/features/faq/data/models/faq_model.dart';
import 'package:conference_admin/features/faq/domain/repositories/faq_repo.dart';

class AddReviewUseCase extends UseCase<DataState<void>, FaqModel> {
  final FaqRepo repo;

  AddReviewUseCase(this.repo);

  @override
  Future<DataState<void>> call(FaqModel params) async =>
      repo.addReviewProcess(params);
}
