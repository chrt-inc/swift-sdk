import Foundation

/// Existing authorization/resource error message or FastAPI request-validation errors.
public enum Detail: Codable, Hashable, Sendable {
    case string(String)
    case stringToJsonValueDictionaryArray([[String: JSONValue]])

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode([[String: JSONValue]].self) {
            self = .stringToJsonValueDictionaryArray(value)
        } else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Unexpected value."
            )
        }
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let value):
            try container.encode(value)
        case .stringToJsonValueDictionaryArray(let value):
            try container.encode(value)
        }
    }
}