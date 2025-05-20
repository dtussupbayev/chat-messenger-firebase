abstract interface class BaseUseCase<Params, Result> {
  Result execute(Params params);
}

class NoParams {
  const NoParams();
}
