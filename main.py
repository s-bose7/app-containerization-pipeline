import requests

response = requests.get("https://google.com")
response.raise_for_status()
print(f"status code: {response.status_code}")
byte_data = response.content
print(f"Byte string: {byte_data[:1000]}")