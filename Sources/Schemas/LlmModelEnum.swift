import Foundation

public enum LlmModelEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case gpt55 = "gpt-5.5"
    case gpt54 = "gpt-5.4"
    case gpt54Mini = "gpt-5.4-mini"
    case claudeOpus47 = "claude-opus-4-7"
    case claudeSonnet46 = "claude-sonnet-4-6"
    case claudeHaiku45 = "claude-haiku-4-5"
}