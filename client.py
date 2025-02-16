import requests
server_url = 'http://192.168.56.101:8080/'

try:
    print("Trying to connect to the server...")
    response = requests.get(server_url)
    if response.status_code == 200:
        print(f"Server says: {response.json()['message']}")
    else:
        print(f"Failed to connect. Status code: {response.status_code}")
except requests.exceptions.RequestException as e:
    print(f"Error connecting to the server: {e}")
