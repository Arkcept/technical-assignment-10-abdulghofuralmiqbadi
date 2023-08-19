import time
import requests
import random

TOKEN = "BBFF-JdpJipkpy0x9H8UB8DDqfWzmx9K9kg"
DEVICE_LABEL = "Monitoring"  
TEMP_LABEL = "Suhu" 
HUMIDITY_LABEL = "Kelembapan"  #
LIGHT_LABEL = "Cahaya"

def generate_random_data():
    temperature = round(random.uniform(20, 30), 2)
    humidity = round(random.uniform(40, 80), 2)
    light_intensity = random.randint(0, 1000)
    return temperature, humidity, light_intensity

def build_payload(temperature, humidity, light_intensity):
    payload = {
        TEMP_LABEL: temperature,
        HUMIDITY_LABEL: humidity,
        LIGHT_LABEL: light_intensity
    }
    return payload

def post_request(payload):
    url = "http://industrial.api.ubidots.com"
    url = "{}/api/v1.6/devices/{}".format(url, DEVICE_LABEL)
    headers = {"X-Auth-Token": TOKEN, "Content-Type": "application/json"}

    status = 400
    attempts = 0
    while status >= 400 and attempts <= 5:
        req = requests.post(url=url, headers=headers, json=payload)
        status = req.status_code
        attempts += 1
        time.sleep(1)

    if status >= 400:
        print("[ERROR] Data Tidak Terkirim")
        return False

    print("Data Terkirim")
    return True

def main():
    try:
        while True:
            temperature, humidity, light_intensity = generate_random_data()
            print(f"Temperature: {temperature}°C, Humidity: {humidity}%, Light Intensity: {light_intensity}")
            payload = build_payload(temperature, humidity, light_intensity)
            post_request(payload)
            time.sleep(5)
    except KeyboardInterrupt:
        print("Program terminated by user")

if __name__ == '__main__':
    main()
