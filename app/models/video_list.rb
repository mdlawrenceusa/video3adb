class VideoList < AWS::Record::HashModel
  string_attr :date
  string_attr :speaker
  string_attr :title 
  string_attr :url_es 
  string_attr :url_msg
end
