# Indeed Scraper API

[![Oxylabs promo code](https://raw.githubusercontent.com/oxylabs/product-integrations/refs/heads/master/Affiliate-Universal-1090x275.png)](https://oxylabs.io/pages/gitoxy?utm_source=github&utm_medium=referral&utm_content=indeed-scraper&utm_campaign=banner&groupid=877)

<p align="left">
  <a href="https://dashboard.oxylabs.io"><img src="https://img.shields.io/badge/%F0%9F%9A%80_Get_Started-FF6B35?style=for-the-badge" alt="Get started"></a>
  <a href="https://developers.oxylabs.io/products/web-api?utm_source=github&utm_medium=referral&utm_content=indeed-scraper&utm_campaign=banner&groupid=877"><img src="https://img.shields.io/badge/%F0%9F%93%9A_Documentation-4A90E2?style=for-the-badge" alt="Documentation"></a>
  <a href="https://dashboard.oxylabs.io"><img src="https://img.shields.io/badge/%F0%9F%93%8A_Dashboard-2EA44F?style=for-the-badge" alt="Dashboard"></a>
  <a href="https://discord.gg/Pds3gBmKMH"><img src="https://img.shields.io/badge/%F0%9F%92%AC_Discord-5865F2?style=for-the-badge" alt="Discord"></a>
  <a href="https://www.youtube.com/@oxylabs"><img src="https://img.shields.io/badge/%E2%96%B6%EF%B8%8F_YouTube-FF0000?style=for-the-badge" alt="YouTube"></a>
</p>

Oxylabs' [Indeed Scraper](https://oxylabs.io/products/scraper-api/web/indeed?utm_source=github&utm_medium=referral&utm_content=indeed-scraper&groupid=877) is a data gathering solution allowing you to extract real-time information from an Indeed website effortlessly. This brief guide showcases how Indeed Scraper works, along with code examples to help you better understand how to use it hassle-free.

### How it works

You can get Indeed results by providing your own URLs to our service. We can return the HTML for any page you like.

#### Python code example

The example below illustrates how you can get HTML of Indeed page.

```python
import requests
from pprint import pprint

# Structure payload.
payload = {
    'source': 'universal',
    'url': 'https://www.indeed.com/companies?from=gnav-homepage'
}

# Get response.
response = requests.request(
    'POST',
    'https://realtime.oxylabs.io/v1/queries',
    auth=('user', 'pass1'),
    json=payload,
)

# Instead of response with job status and results url, this will return the
# JSON response with the result.
pprint(response.json())
```
Find code examples for other programming languages [**here**](https://github.com/oxylabs/indeed-scraper/tree/main/code%20examples)

#### Output Example
```json
{
  "results": [
    {
      "content": "<!DOCTYPE html><html lang=\"en\" dir=\"ltr\"><head><meta charSet=\"utf-8\"/><link rel=\"preconnect\" href=\"h ... </html>",
      "created_at": "2025-01-10 09:35:33",
      "updated_at": "2025-01-10 09:35:35",
      "page": 1,
      "url": "https://www.indeed.com/companies?from=gnav-homepage",
      "job_id": "7150782209677353986",
      "status_code": 200
    }
  ]
}
```
With our Indeed Scraper, you can seamlessly extract public data from any Indeed web page. Gather crucial job-related information such as job titles, companies, salaries, or job descriptions, to analyze the job market trends and stay ahead of your competitors. If you have any inquiries, feel free to reach our support team via live chat or email us at support@oxylabs.io.
