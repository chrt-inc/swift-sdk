import Foundation

public struct CreateInvoiceLineItemsFromAwbCostsItem1: Codable, Hashable, Sendable {
    /// IATA Air Waybill number: 3-digit airline prefix + 8-digit serial, e.g. '020-12345678'.
    public let awbNumber: String
    public let cost: Cost
    public let currencyCode: BillingCurrencyCodeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        awbNumber: String,
        cost: Cost,
        currencyCode: BillingCurrencyCodeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.awbNumber = awbNumber
        self.cost = cost
        self.currencyCode = currencyCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.awbNumber = try container.decode(String.self, forKey: .awbNumber)
        self.cost = try container.decode(Cost.self, forKey: .cost)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.awbNumber, forKey: .awbNumber)
        try container.encode(self.cost, forKey: .cost)
        try container.encode(self.currencyCode, forKey: .currencyCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case awbNumber = "awb_number"
        case cost
        case currencyCode = "currency_code"
    }
}