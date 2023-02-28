# SolarAngles

[![Build Status](https://github.com/andersontodds/SolarAngles.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/andersontodds/SolarAngles.jl/actions/workflows/CI.yml?query=branch%3Amaster)

Functions to calculate angles related to the position of the Sun and horizon at a given location on the Earth.

## `SEA = solarelevationangle(time, latitude, longitude, timezone)`

Calculates the angle of the Sun from the horizontal, in degrees, at a given location.  Negative solar elevation angle indicates the center of the Sun is below the local horizontal.

`solarelevationangle()` calls the `SolarAngles` functions `localsolartime()` and `solarhourangle()`.

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

## `HD = horizondip(altitude, refraction)`

Calculates the dip angle of the horizon from the horizontal, assuming a uniform spherical Earth.  Positive horizon dip angle incidates the horizon is below the local horizontal, as expected for an observer standing on a mountaintop or riding on a balloon.

### inputs:
| name | units |
| --- | --- |
| altitude | meters |
| refraction* | unitless** |

\*optional input

\**refraction coefficient depends the temperature and density gradient of the atmosphere; [0.13 is a common approximation for terrestrial altitudes](https://aty.sdsu.edu/explain/atmos_refr/dip.html)

### outputs: 
| name | units |
| --- | --- |
| HD | degrees |
