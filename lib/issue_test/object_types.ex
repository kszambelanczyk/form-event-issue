defmodule IssueTest.ObjectTypes do
  @moduledoc false

  def list_object_types(_opts) do
    [
      %{
        name: "name1",
        description: "description",
        schemable: false,
        photoable: true,
        parametable: false,
        parentable: false,
        mapable: false,
        threatable: false,
      },
      %{
        name: "name2",
        description: "description",
        schemable: false,
        photoable: true,
        parametable: false,
        parentable: false,
        mapable: false,
        threatable: false,
      },
      %{
        name: "name3",
        description: "description",
        schemable: false,
        photoable: true,
        parametable: false,
        parentable: false,
        mapable: false,
        threatable: false,
      }
    ]
  end


end
