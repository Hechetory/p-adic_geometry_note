::: {.topic-page-list}
<% for (const item of items) { %>
::: {.topic-page-item}
### [<%= item.title %>](<%= "<" + item.path + ">" %>)

<%= item.description %>
:::
<% } %>
:::
