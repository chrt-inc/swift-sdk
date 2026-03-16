import Foundation

/// Java source calls this LengthUnit; we use DimensionUnit since it
/// describes all three axes (length, width, height) in CargojsonDimensions.
public enum CargojsonDimensionUnit: String, Codable, Hashable, CaseIterable, Sendable {
    case centimetre = "CENTIMETRE"
    case decimetre = "DECIMETRE"
    case foot = "FOOT"
    case inch = "INCH"
    case metre = "METRE"
    case millimetre = "MILLIMETRE"
    case yard = "YARD"
}