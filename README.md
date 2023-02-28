# SolarAngles

[![Build Status](https://github.com/andersontodds/SolarAngles.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/andersontodds/SolarAngles.jl/actions/workflows/CI.yml?query=branch%3Amaster)

Functions to calculate angles related to the position of the Sun and horizon at a given location on the Earth.

## Solar elevation and zenith angles
```
SEA = solarelevationangle(time, latitude, longitude, timezone)
SZA = solarzenithangle(time, latitude, longitude, timezone)
```

Calculate the angle of the Sun from the horizontal (elevation) and vertical (zenith), in degrees, at a given location.  Negative solar elevation angle, or solar zenith angle greater than 90 degrees, indicates the center of the Sun is below the local horizontal.  

Note that solar zenith angle  = 90 degrees - solar elevation angle.

Both these functions call `solarhourangle`, which itself calls `localsolartime`.

### inputs:
| name | units |
| --- | --- |
| time | `DateTime` (from Dates.jl) |
| latitude | degrees |
| longitude | degrees |
| timezone* | hour offset from UTC; default 0 |

\*optional input

### outputs: 
| name | units |
| --- | --- |
| SEA | degrees |
| SZA | degrees |

## Horizon dip angle
```
HD = horizondip(altitude, refraction)
```

Calculates the dip angle of the horizon from the horizontal, assuming a uniform spherical Earth.  Positive horizon dip angle incidates the horizon is below the local horizontal, as expected for an observer standing on a mountaintop or riding on a balloon.

### inputs:
| name | units |
| --- | --- |
| altitude | meters |
| refraction* | unitless**; default 0 |

\*optional input

\**refraction coefficient depends the temperature and density gradient of the atmosphere; [0.13 is a common approximation for terrestrial altitudes](https://aty.sdsu.edu/explain/atmos_refr/dip.html)

### outputs: 
| name | units |
| --- | --- |
| HD | degrees |
