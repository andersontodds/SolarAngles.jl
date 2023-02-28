function solarzenithangle(time, latitude, longitude, timezone=0)
    # Calculate the solar zenith angle, the angle between the sun-pointing
    # vector and the vertical.
    
    # Inputs:
    # time: range of DateTime in either UT or another time zone
    # latitude, longitude: location of observer in degrees
    # timezone: time zone (interger hour GMT offset) for input time; leave blank if time is in UT

    # Outputs:
    # SZA: solare zenith angle in degrees

    SEA = solarelevationangle(time, latitude, longitude, timezone);
    SZA = 90 - SEA;
    return SZA
end