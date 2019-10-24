json.status "success"
json.data do
  json.kinds @kinds, partial: "api/v1/kinds/kind", as: :kind
end
