# verapdf-verifier

Web service to verify pdf files via verapdf

## How to init

```bash
VERAPDF_PORT=80
docker run -d -p $VERAPDF_PORT:80 --name verapdf-verifier --restart=always onlyofficeqa/verapdf-verifier
```

## How to check via ruby

```ruby
require 'net/http'
require 'uri'

uri = URI.parse("http://localhost/payload")
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri)
post_data = URI.encode_www_form({ data: File.read('file.pdf')})
http.request(request, post_data)
```
