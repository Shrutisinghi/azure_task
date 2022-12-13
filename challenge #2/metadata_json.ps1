$metadata_json = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64

$metadata_obj = $metadata_json | ConvertFrom-Json

$metadata_obj.compute



