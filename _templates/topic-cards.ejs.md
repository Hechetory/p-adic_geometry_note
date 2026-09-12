::: {.note-grid}
<% for (const item of items) { %>
::: {.note-card}
### [<%= item.title %>](<%= "<" + item.path + ">" %>)

<%= item.description %>

[Start reading →](<%= "<" + item["start-page"] + ">" %>)
:::
<% } %>

::: {.note-card .coming-soon}
### More notes will live here

Each future topic can have its own folder, pages, and place in the sidebar.
:::
:::
