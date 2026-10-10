import Foundation

/// How much ChrtGPT reasons before answering this message. Higher is slower and more thorough.
public enum ChrtGptReqReasoningEffort: String, Codable, Hashable, CaseIterable, Sendable {
    case low
    case medium
    case high
}