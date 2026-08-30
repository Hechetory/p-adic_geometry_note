local replacements = {
  ["\\etale"] = "étale",
  ["\\Etale"] = "Étale"
}

function RawInline(inline)
  if inline.format ~= "tex" then
    return nil
  end

  local command, trailing_space = inline.text:match("^(\\%a+)(%s*)$")
  local replacement = replacements[command]

  if replacement == nil then
    return nil
  end

  local result = { pandoc.Str(replacement) }
  if trailing_space ~= "" then
    table.insert(result, pandoc.Space())
  end

  return result
end
