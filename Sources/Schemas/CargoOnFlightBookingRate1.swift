import Foundation

/// A price quoted for a shipment: one of a search result's rates, or the price a MANUAL booking was quoted.
public struct CargoOnFlightBookingRate1: Codable, Hashable, Sendable {
    public let currencyCode: String
    public let integrationRateId: String?
    public let rateName: String?
    public let totalAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currencyCode: String,
        integrationRateId: String? = nil,
        rateName: String? = nil,
        totalAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currencyCode = currencyCode
        self.integrationRateId = integrationRateId
        self.rateName = rateName
        self.totalAmount = totalAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currencyCode = try container.decode(String.self, forKey: .currencyCode)
        self.integrationRateId = try container.decodeIfPresent(String.self, forKey: .integrationRateId)
        self.rateName = try container.decodeIfPresent(String.self, forKey: .rateName)
        self.totalAmount = try container.decode(Double.self, forKey: .totalAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.integrationRateId, forKey: .integrationRateId)
        try container.encodeIfPresent(self.rateName, forKey: .rateName)
        try container.encode(self.totalAmount, forKey: .totalAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currencyCode = "currency_code"
        case integrationRateId = "integration_rate_id"
        case rateName = "rate_name"
        case totalAmount = "total_amount"
    }
}