# suntime

Simple sunrise and sunset time calculation for dart. This is a simple port
of [suntime][suntime] library for Python.

[suntime]: https://github.com/SatAgro/suntime

## Features

- Get the UTC sunrise and sunset times.
- Get the local or custom time zone sunrise and sunset times.

## Usage

Once you import the library only instantiate the `Sun` class and 
use it methods.

```dart
import 'package:suntime/suntime.dart';

final latitude = 10.0;
final longitude = -84.0;

const sun = Sun(latitude, longitude);
const date = DateTime.now();

// Get today's sunrise and sunset in UTC for your machine.
const sunrise = sun.getSunriseTime(date: date);
const sunset = sun.getSunsetTime(date: date);
print('Sunrise: ${sunrise}');
print('Sunset: ${sunset}');

// Or get the same but for a special time zone location.
const tzSunrise = sun.getLocalSunriseTime('America/Halifax', date: date);
const tzSunset = sun.getLocalSunsetTime('America/Halifax', date: date);
print('Sunrise: ${tzSunrise}');
print('Sunset: ${tzSunset}');
```

See the example for more detailed usage.

## License

Copyright © 2022 Diego Garro Molina:

`suntime` is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or any later version.

`suntime` is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along with CAMS tools. If not, see http://www.gnu.org/licenses/.
