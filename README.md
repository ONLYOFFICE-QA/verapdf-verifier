# verapdf-verifier

Web service to verify pdf files via verapdf

## How to init

```bash
VERAPDF_PORT=80
docker run -d -p $VERAPDF_PORT:80 --name verapdf-verifier --restart=always onlyofficeqa/verapdf-verifier
```

## How to check via ruby

```ruby
rake check
```

This command should output XML with validation info
