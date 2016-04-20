defmodule Phsand2.NoteView do
  use Phsand2.Web, :view

  def render("index.json", %{notes: notes}) do
    %{data: render_many(notes, Phsand2.NoteView, "note.json")}
  end

  def render("show.json", %{note: note}) do
    %{data: render_one(note, Phsand2.NoteView, "note.json")}
  end

  def render("note.json", %{note: note}) do
    %{id: note.id,
      title: note.title,
      body: note.body}
  end
end
