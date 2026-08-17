import Foundation

public struct OnTime360ItemResponse1: Codable, Hashable, Sendable {
    public let description: String?
    public let id: String?
    public let orderId: String?
    public let trackingNumber: String?
    public let weight: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String? = nil,
        id: String? = nil,
        orderId: String? = nil,
        trackingNumber: String? = nil,
        weight: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.id = id
        self.orderId = orderId
        self.trackingNumber = trackingNumber
        self.weight = weight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.trackingNumber = try container.decodeIfPresent(String.self, forKey: .trackingNumber)
        self.weight = try container.decodeIfPresent(Double.self, forKey: .weight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.trackingNumber, forKey: .trackingNumber)
        try container.encodeIfPresent(self.weight, forKey: .weight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description = "Description"
        case id = "ID"
        case orderId = "OrderID"
        case trackingNumber = "TrackingNumber"
        case weight = "Weight"
    }
}