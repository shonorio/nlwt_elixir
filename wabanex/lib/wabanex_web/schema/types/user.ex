defmodule WabanexWeb.Schema.Types.User do
  use Absinthe.Schema.Notation

  @desc "User Schema for graphql client"
  object :user do
    field :id, non_null(:uuid4)
    field :name, non_null(:string)
    field :email, non_null(:string)
    field :trainings, list_of(:training)
  end

  input_object :create_user_input do
    field :name, non_null(:string), description: "User name"
    field :email, non_null(:string), description: "A valid user email"
    field :password, non_null(:string), description: "A valid user password"
  end
end
