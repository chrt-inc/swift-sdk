import Foundation

/// Where GPT-Live hands the work it can't do in conversation.
public enum ChrtGptVoiceDelegationEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case responses
    case client
}