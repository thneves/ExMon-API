defmodule ExMonApi do
  alias ExMonApi.Trainer

  defdelegate create_trainer(params), to: Trainer.Create, as: :call #facade to call create_trainer
  defdelegate delete_trainer(id), to: Trainer.Delete, as: :call
end
