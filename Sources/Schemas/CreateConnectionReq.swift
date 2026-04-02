import Foundation

public struct CreateConnectionReq: Codable, Hashable, Sendable {
    /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
    public let handle: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        handle: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.handle = handle
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.handle = try container.decode(String.self, forKey: .handle)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.handle, forKey: .handle)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case handle
    }
}