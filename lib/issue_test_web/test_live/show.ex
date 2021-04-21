defmodule IssueTestWeb.TestLive.Show do
  @moduledoc false
  use IssueTestWeb, :live_view


  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~L"""
      <div>

        <span><%= live_redirect "Go back", to: Routes.test_index_path(@socket, :index) %></span>
      </div>
    """
  end
end
