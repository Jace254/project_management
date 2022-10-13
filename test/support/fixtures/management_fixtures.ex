defmodule ProjectManagement.ManagementFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ProjectManagement.Management` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title"
      })
      |> ProjectManagement.Management.create_project()

    project
  end
end
