import Foundation

public enum CargojsonVolumeUnit: String, Codable, Hashable, CaseIterable, Sendable {
    case cubicCentimetre = "CUBIC_CENTIMETRE"
    case cubicFoot = "CUBIC_FOOT"
    case cubicInch = "CUBIC_INCH"
    case cubicMetre = "CUBIC_METRE"
}