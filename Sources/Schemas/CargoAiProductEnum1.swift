import Foundation

public enum CargoAiProductEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case gcr = "GCR"
    case pharm = "PHARM"
    case fresh = "FRESH"
    case avi = "AVI"
    case humLho = "HUM/LHO"
    case valVun = "VAL/VUN"
}