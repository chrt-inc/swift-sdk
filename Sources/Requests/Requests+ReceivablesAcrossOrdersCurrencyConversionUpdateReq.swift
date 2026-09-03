import Foundation

extension Requests {
    public struct ReceivablesAcrossOrdersCurrencyConversionUpdateReq: Codable, Hashable, Sendable {
        /// Units of target_currency_code per one unit of the order's sole original source currency different from the target. Target-currency items are reverted or left unchanged without applying this rate.
        public let conversionRate: Double?
        public let description: String?
        public let orderIds: [String]
        public let targetCurrencyCode: BillingCurrencyCodeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            conversionRate: Double? = nil,
            description: String? = nil,
            orderIds: [String],
            targetCurrencyCode: BillingCurrencyCodeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.conversionRate = conversionRate
            self.description = description
            self.orderIds = orderIds
            self.targetCurrencyCode = targetCurrencyCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.conversionRate = try container.decodeIfPresent(Double.self, forKey: .conversionRate)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.orderIds = try container.decode([String].self, forKey: .orderIds)
            self.targetCurrencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .targetCurrencyCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.conversionRate, forKey: .conversionRate)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.orderIds, forKey: .orderIds)
            try container.encode(self.targetCurrencyCode, forKey: .targetCurrencyCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case conversionRate = "conversion_rate"
            case description
            case orderIds = "order_ids"
            case targetCurrencyCode = "target_currency_code"
        }
    }
}