defmodule IssueTestWeb.TestLive.Index do
  @moduledoc false
  use IssueTestWeb, :live_view

  alias IssueTest.ObjectTypes

  @impl true
  def mount(_params, _session, socket) do
    # socket = assign_defaults(session, socket)

    {:ok,
     assign(socket,
       object_types: list_object_types(),
       search_list: ""
     )}
  end

  # @impl true
  # def handle_params(params, _url, socket) do
  #   {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  # end

  # @impl true
  # def handle_event("delete", %{"id" => id}, socket) do
  #   object_type = ObjectTypes.get_object_type!(id)
  #   {:ok, _} = ObjectTypes.delete_object_type(object_type)

  #   {:noreply, assign(socket, :object_types, list_object_types())}
  # end

  @impl true
  def handle_event("search-change", _, socket) do
    IO.inspect("Searching...")
    {:noreply, socket}
  end

  @impl true
  def handle_event("search-change", %{"search" => search}, socket) do
    {:noreply, assign(socket, object_types: list_object_types(search), search_list: search)}
  end

  defp list_object_types(search \\ nil) do
    ObjectTypes.list_object_types(no_user_types: true, search: search)
  end
end
