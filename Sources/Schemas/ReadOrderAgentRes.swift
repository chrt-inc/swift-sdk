import Foundation

public struct ReadOrderAgentRes: Codable, Hashable, Sendable {
    public let orderId: String
    public let status: String
    public let summary: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderId: String,
        status: String,
        summary: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderId = orderId
        self.status = status
        self.summary = summary
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.status = try container.decode(String.self, forKey: .status)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.summary, forKey: .summary)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderId = "order_id"
        case status
        case summary
    }
}