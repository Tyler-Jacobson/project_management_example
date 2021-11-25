defmodule ProjectManagementExample.Management.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :author_name, :string
    field :content, :string

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:author_name, :content])
    |> validate_required([:author_name, :content])
  end
end
