import Foundation

public enum ChrtGptEvent: Codable, Hashable, Sendable {
    case completed(ChrtGptCompletedEvent)
    case error(ChrtGptErrorEvent)
    case started(ChrtGptStartedEvent)
    case textDelta(ChrtGptTextDeltaEvent)
    case title(ChrtGptTitleEvent)
    case toolCalled(ChrtGptToolCalledEvent)
    case toolOutput(ChrtGptToolOutputEvent)
    case webSearch(ChrtGptWebSearchEvent)

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let discriminant = try container.decode(String.self, forKey: .type)
        switch discriminant {
        case "completed":
            self = .completed(try ChrtGptCompletedEvent(from: decoder))
        case "error":
            self = .error(try ChrtGptErrorEvent(from: decoder))
        case "started":
            self = .started(try ChrtGptStartedEvent(from: decoder))
        case "text_delta":
            self = .textDelta(try ChrtGptTextDeltaEvent(from: decoder))
        case "title":
            self = .title(try ChrtGptTitleEvent(from: decoder))
        case "tool_called":
            self = .toolCalled(try ChrtGptToolCalledEvent(from: decoder))
        case "tool_output":
            self = .toolOutput(try ChrtGptToolOutputEvent(from: decoder))
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
        case .completed(let data):
            try container.encode("completed", forKey: .type)
            try data.encode(to: encoder)
        case .error(let data):
            try container.encode("error", forKey: .type)
            try data.encode(to: encoder)
        case .started(let data):
            try container.encode("started", forKey: .type)
            try data.encode(to: encoder)
        case .textDelta(let data):
            try container.encode("text_delta", forKey: .type)
            try data.encode(to: encoder)
        case .title(let data):
            try container.encode("title", forKey: .type)
            try data.encode(to: encoder)
        case .toolCalled(let data):
            try container.encode("tool_called", forKey: .type)
            try data.encode(to: encoder)
        case .toolOutput(let data):
            try container.encode("tool_output", forKey: .type)
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