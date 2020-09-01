module LoggingFacilities

using Logging
using LoggingExtras
using Dates
using JSON

using Logging: Info
import Logging: shouldlog, min_enabled_level, catch_exceptions, handle_message

export TimestampLoggingFormat, OneLineLoggingFormat, JSONLoggingFormat
export logger
export SimplestLogger
export InjectByPrependingToMessage, InjectByAddingToKwargs

include("formats.jl")
include("simple.jl")

end # module
