import Foundation

/// IATA rate class codes, e.g. M minimum, N normal, Q quantity, C specific commodity.
public enum CargoOnFlightAirWaybillRateClassCodeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case b = "B"
    case c = "C"
    case e = "E"
    case k = "K"
    case m = "M"
    case n = "N"
    case p = "P"
    case q = "Q"
    case r = "R"
    case s = "S"
    case u = "U"
    case x = "X"
    case y = "Y"
}