function Math(elem)
  if elem.mathtype == "InlineMath" then
    -- Wrap inline math in a <span> with class "inline-math"
    return pandoc.Span(elem, {class = "inline-math"})
  else
    -- Return unchanged for display math
    return elem
  end
end
