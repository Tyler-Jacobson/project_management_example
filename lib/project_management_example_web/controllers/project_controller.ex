defmodule ProjectManagementExampleWeb.ProjectController do
  use ProjectManagementExampleWeb, :controller

  alias ProjectManagementExample.Management
  alias ProjectManagementExample.Management.Project

  action_fallback ProjectManagementExampleWeb.FallbackController

  def index(conn, _params) do
    projects = Management.list_projects()
    render(conn, "index.json", data: projects)
  end

  def show(conn, %{"id" => id}) do
    project = Management.get_project!(id)
    render(conn, "show.json", data: project)
  end

  def update(conn, %{"id" => id, "project" => project_params}) do
    project = Management.get_project!(id)

    with {:ok, %Project{} = project} <- Management.update_project(project, project_params) do
      render(conn, "show.json", data: project)
    end
  end

  def delete(conn, %{"id" => id}) do
    project = Management.get_project!(id)

    with {:ok, %Project{}} <- Management.delete_project(project) do
      send_resp(conn, :no_content, "")
    end
  end
end
