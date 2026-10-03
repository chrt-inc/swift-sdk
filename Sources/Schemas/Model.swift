import Foundation

/// Model identifiers approved for new runtime requests.
public enum Model: String, Codable, Hashable, CaseIterable, Sendable {
    case gpt6Astra = "gpt-6-astra"
    case gpt61Sol = "gpt-6.1-sol"
    case gpt6Luna = "gpt-6-luna"
    case claudeOpus55 = "claude-opus-5-5"
    case claudeSonnet5 = "claude-sonnet-5"
    case claudeHaiku45 = "claude-haiku-4-5"
}