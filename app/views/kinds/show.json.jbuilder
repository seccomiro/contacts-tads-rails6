json.status @fail ? "fail" : "success"
if @fail
  json.data @fail
else
  json.data do
    json.kind do
      json.partial! partial: "kinds/kind", kind: @kind
    end
  end
end
