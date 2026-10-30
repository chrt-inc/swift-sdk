import Foundation

public struct RateSheetLocationRate1: Codable, Hashable, Sendable {
    public let flatRate: Double
    public let pricingZoneId: String?
    public let shipperAccountId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flatRate: Double,
        pricingZoneId: String? = nil,
        shipperAccountId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flatRate = flatRate
        self.pricingZoneId = pricingZoneId
        self.shipperAccountId = shipperAccountId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flatRate = try container.decode(Double.self, forKey: .flatRate)
        self.pricingZoneId = try container.decodeIfPresent(String.self, forKey: .pricingZoneId)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.flatRate, forKey: .flatRate)
        try container.encodeIfPresent(self.pricingZoneId, forKey: .pricingZoneId)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flatRate = "flat_rate"
        case pricingZoneId = "pricing_zone_id"
        case shipperAccountId = "shipper_account_id"
    }
}