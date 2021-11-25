defmodule ProjectManagementExample.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :author_name, :string
      add :content, :text

      timestamps()
    end
  end
end
