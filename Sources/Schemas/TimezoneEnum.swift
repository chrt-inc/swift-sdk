import Foundation

public enum TimezoneEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case americaLosAngeles = "America/Los_Angeles"
    case americaDenver = "America/Denver"
    case americaChicago = "America/Chicago"
    case americaNewYork = "America/New_York"
    case americaAnchorage = "America/Anchorage"
    case pacificHonolulu = "Pacific/Honolulu"
    case europeLondon = "Europe/London"
    case europeParis = "Europe/Paris"
    case europeBerlin = "Europe/Berlin"
    case europeAmsterdam = "Europe/Amsterdam"
    case europeRome = "Europe/Rome"
    case europeMadrid = "Europe/Madrid"
    case europeZurich = "Europe/Zurich"
    case europeStockholm = "Europe/Stockholm"
    case europeWarsaw = "Europe/Warsaw"
    case europeAthens = "Europe/Athens"
    case utc = "UTC"
}