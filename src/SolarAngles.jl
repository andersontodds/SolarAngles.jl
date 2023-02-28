module SolarAngles

using Dates

export localsolartime
export solarhourangle
export solarelevationangle
export horizondip

include("LocalSolarTime.jl");
include("SolarHourAngle.jl");
include("SolarElevationAngle.jl");
include("SolarZenithAngle.jl");
include("LocalSolarTime.jl");

end