import Foundation

/// Model identifiers approved for new runtime requests.
public enum Model: String, Codable, Hashable, CaseIterable, Sendable {
    case gpt56Terra = "gpt-5.6-terra"
    case gpt56Luna = "gpt-5.6-luna"
    case gpt56Sol = "gpt-5.6-sol"
}