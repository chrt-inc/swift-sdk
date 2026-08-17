import Foundation

/// One charge line. `price` is the extended amount, never a unit price.
public struct DispatchScienceChargeResponse1: Codable, Hashable, Sendable {
    public let extraFeeTypeId: String?
    public let fromZone: String?
    public let id: String?
    public let price: Double?
    public let quantity: Double?
    public let toZone: String?
    public let type: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        extraFeeTypeId: String? = nil,
        fromZone: String? = nil,
        id: String? = nil,
        price: Double? = nil,
        quantity: Double? = nil,
        toZone: String? = nil,
        type: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.extraFeeTypeId = extraFeeTypeId
        self.fromZone = fromZone
        self.id = id
        self.price = price
        self.quantity = quantity
        self.toZone = toZone
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.extraFeeTypeId = try container.decodeIfPresent(String.self, forKey: .extraFeeTypeId)
        self.fromZone = try container.decodeIfPresent(String.self, forKey: .fromZone)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.price = try container.decodeIfPresent(Double.self, forKey: .price)
        self.quantity = try container.decodeIfPresent(Double.self, forKey: .quantity)
        self.toZone = try container.decodeIfPresent(String.self, forKey: .toZone)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.extraFeeTypeId, forKey: .extraFeeTypeId)
        try container.encodeIfPresent(self.fromZone, forKey: .fromZone)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.price, forKey: .price)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.toZone, forKey: .toZone)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case extraFeeTypeId
        case fromZone
        case id
        case price
        case quantity
        case toZone
        case type
    }
}