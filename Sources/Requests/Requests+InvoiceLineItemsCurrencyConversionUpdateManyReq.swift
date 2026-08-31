import Foundation

extension Requests {
    public struct InvoiceLineItemsCurrencyConversionUpdateManyReq: Codable, Hashable, Sendable {
        /// Units of target_currency_code per one unit of the line items' original source currency -- their currency_conversion.source_currency_code if already converted, otherwise their current currency_code. Always relative to that original source, never to an intermediate converted currency, so conversions never compound. Omitted when target_currency_code is the original source currency, which reverts the conversion.
        public let conversionRate: Double?
        public let description: String?
        public let invoiceLineItemIds: [String]
        public let targetCurrencyCode: BillingCurrencyCodeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            conversionRate: Double? = nil,
            description: String? = nil,
            invoiceLineItemIds: [String],
            targetCurrencyCode: BillingCurrencyCodeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.conversionRate = conversionRate
            self.description = description
            self.invoiceLineItemIds = invoiceLineItemIds
            self.targetCurrencyCode = targetCurrencyCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.conversionRate = try container.decodeIfPresent(Double.self, forKey: .conversionRate)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.invoiceLineItemIds = try container.decode([String].self, forKey: .invoiceLineItemIds)
            self.targetCurrencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .targetCurrencyCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.conversionRate, forKey: .conversionRate)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.invoiceLineItemIds, forKey: .invoiceLineItemIds)
            try container.encode(self.targetCurrencyCode, forKey: .targetCurrencyCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case conversionRate = "conversion_rate"
            case description
            case invoiceLineItemIds = "invoice_line_item_ids"
            case targetCurrencyCode = "target_currency_code"
        }
    }
}