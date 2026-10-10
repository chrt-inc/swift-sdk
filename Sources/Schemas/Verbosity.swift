import Foundation

/// How long and detailed ChrtGPT's reply is.
public enum Verbosity: String, Codable, Hashable, CaseIterable, Sendable {
    case low
    case medium
    case high
}