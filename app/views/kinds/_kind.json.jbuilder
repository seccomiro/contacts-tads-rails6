json.extract! kind, :id
json.full_name kind.description
json.message "#{kind.description} is a good thing."
json.contacts kind.contacts, partial: "contacts/contact", as: :contact
