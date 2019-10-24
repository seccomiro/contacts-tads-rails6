json.status "success"
json.data do
  json.kinds @kinds, partial: "kinds/kind", as: :kind
end
