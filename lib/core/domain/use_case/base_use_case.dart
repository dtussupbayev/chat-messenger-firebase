abstract interface class BaseUseCase<Params, Result> {
  Result execute(Params params);
}

class DefaultParams {
  const DefaultParams();
}
