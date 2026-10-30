import Foundation

extension Requests {
    public struct OrderBillingQuoteClientUpdate1: Codable, Hashable, Sendable {
        public let currencyCode: BillingCurrencyCodeEnum1?
        public let lineItems: [ProFormaLineItemClientCreate1]?
        public let quoteType: OrderBillingQuoteTypeEnum1?
        public let shipperAccountId: String?
        public let shipperAccountIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            currencyCode: BillingCurrencyCodeEnum1? = nil,
            lineItems: [ProFormaLineItemClientCreate1]? = nil,
            quoteType: OrderBillingQuoteTypeEnum1? = nil,
            shipperAccountId: String? = nil,
            shipperAccountIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.currencyCode = currencyCode
            self.lineItems = lineItems
            self.quoteType = quoteType
            self.shipperAccountId = shipperAccountId
            self.shipperAccountIdSetToNone = shipperAccountIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.currencyCode = try container.decodeIfPresent(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.lineItems = try container.decodeIfPresent([ProFormaLineItemClientCreate1].self, forKey: .lineItems)
            self.quoteType = try container.decodeIfPresent(OrderBillingQuoteTypeEnum1.self, forKey: .quoteType)
            self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
            self.shipperAccountIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperAccountIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.lineItems, forKey: .lineItems)
            try container.encodeIfPresent(self.quoteType, forKey: .quoteType)
            try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
            try container.encodeIfPresent(self.shipperAccountIdSetToNone, forKey: .shipperAccountIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case currencyCode = "currency_code"
            case lineItems = "line_items"
            case quoteType = "quote_type"
            case shipperAccountId = "shipper_account_id"
            case shipperAccountIdSetToNone = "shipper_account_id__set_to_None"
        }
    }
}