import pyowm

status_to_icon = {
	'clear sky': '',
	'cloudy': '',
	'mist': '',
	'sunny': '',
	'broken clouds': '',
	'few clouds': '',
	'scattered clouds': '',
	'fog': '',
	'smoke' : '',
	'overcast clouds' : ''
}

owm = pyowm.OWM('eaab7427bccae674d4256e9634d22f17')

observation = owm.weather_at_place('Rostov-na-Donu, ru')
w = observation.get_weather()
status = w.get_detailed_status()
temp = str(round(w.get_temperature('celsius')['temp']))
try:
	icon = status_to_icon[status]
except KeyError:
	with open('statuses', 'a') as f:
		f.write(status + '\n')
	f.close()
else:
	print('{}  {}, {} °C'.format(icon, status, temp))
