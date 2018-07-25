# verapdf-verifier

Web service to verify pdf files via verapdf

## How to init

```bash
docker run -d -p 80:80 --name verapdf-verifier --restart=always onlyofficetestingrobot/verapdf-verifier
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
