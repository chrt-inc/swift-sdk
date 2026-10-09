import Foundation

public enum ChrtGptHistoryItem: Codable, Hashable, Sendable {
    case assistantMessage(ChrtGptAssistantMessageItem)
    case toolCalled(ChrtGptToolCalledEvent)
    case toolOutput(ChrtGptToolOutputEvent)
    case userMessage(ChrtGptUserMessageItem)
    case webSearch(ChrtGptWebSearchEvent)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .type)
        switch discriminant {
        case "assistant_message":
            self = .assistantMessage(try ChrtGptAssistantMessageItem(from: decoder))
        case "tool_called":
            self = .toolCalled(try ChrtGptToolCalledEvent(from: decoder))
        case "tool_output":
            self = .toolOutput(try ChrtGptToolOutputEvent(from: decoder))
        case "user_message":
            self = .userMessage(try ChrtGptUserMessageItem(from: decoder))
        case "web_search":
            self = .webSearch(try ChrtGptWebSearchEvent(from: decoder))
        default:
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Unknown shape discriminant value: \(discriminant)"
                )
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .assistantMessage(let data):
            try container.encode("assistant_message", forKey: .type)
            try data.encode(to: encoder)
        case .toolCalled(let data):
            try container.encode("tool_called", forKey: .type)
            try data.encode(to: encoder)
        case .toolOutput(let data):
            try container.encode("tool_output", forKey: .type)
            try data.encode(to: encoder)
        case .userMessage(let data):
            try container.encode("user_message", forKey: .type)
            try data.encode(to: encoder)
        case .webSearch(let data):
            try container.encode("web_search", forKey: .type)
            try data.encode(to: encoder)
        }
    }

    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }
}