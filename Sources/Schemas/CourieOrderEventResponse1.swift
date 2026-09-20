import Foundation

public struct CourieOrderEventResponse1: Codable, Hashable, Sendable {
    public let address: String?
    public let event: CourieOrderEventEnum1
    public let timestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: String? = nil,
        event: CourieOrderEventEnum1,
        timestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.event = event
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(String.self, forKey: .address)
        self.event = try container.decode(CourieOrderEventEnum1.self, forKey: .event)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encode(self.event, forKey: .event)
        try container.encode(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case event
        case timestamp
    }
}