curl --user user:pass \
'https://realtime.oxylabs.io/v1/queries' \
-H "Content-Type: application/json" \
-d '{"source": "universal_ecommerce", "url": "https://www.indeed.com/companies?from=gnav-homepage"}'