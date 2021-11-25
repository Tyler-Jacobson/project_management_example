defmodule ProjectManagementExampleWeb.CommentView do
  use ProjectManagementExampleWeb, :view
  alias ProjectManagementExampleWeb.CommentView

  def render("index.json", %{comments: comments}) do
    %{data: render_many(comments, CommentView, "comment.json")}
  end

  def render("show.json", %{comment: comment}) do
    %{data: render_one(comment, CommentView, "comment.json")}
  end

  def render("comment.json", %{comment: comment}) do
    %{
      id: comment.id,
      author_name: comment.author_name,
      content: comment.content
    }
  end
end
