import Foundation

extension Requests {
    public struct InvoiceLineItemsCurrencyConversionUpdateForOrdersReq: Codable, Hashable, Sendable {
        /// Units of target_currency_code per one unit of source_currency_code.
        public let conversionRate: Double
        public let counterpartyDriverId: String?
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let description: String?
        public let invoiceType: InvoiceTypeEnum1
        public let orderIds: [String]
        /// Original currency of the charges to act on -- their currency_conversion.source_currency_code if already converted, otherwise their current currency_code.
        public let sourceCurrencyCode: BillingCurrencyCodeEnum1
        public let targetCurrencyCode: BillingCurrencyCodeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            conversionRate: Double,
            counterpartyDriverId: String? = nil,
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            description: String? = nil,
            invoiceType: InvoiceTypeEnum1,
            orderIds: [String],
            sourceCurrencyCode: BillingCurrencyCodeEnum1,
            targetCurrencyCode: BillingCurrencyCodeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.conversionRate = conversionRate
            self.counterpartyDriverId = counterpartyDriverId
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.description = description
            self.invoiceType = invoiceType
            self.orderIds = orderIds
            self.sourceCurrencyCode = sourceCurrencyCode
            self.targetCurrencyCode = targetCurrencyCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.conversionRate = try container.decode(Double.self, forKey: .conversionRate)
            self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.orderIds = try container.decode([String].self, forKey: .orderIds)
            self.sourceCurrencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .sourceCurrencyCode)
            self.targetCurrencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .targetCurrencyCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.conversionRate, forKey: .conversionRate)
            try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encode(self.orderIds, forKey: .orderIds)
            try container.encode(self.sourceCurrencyCode, forKey: .sourceCurrencyCode)
            try container.encode(self.targetCurrencyCode, forKey: .targetCurrencyCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case conversionRate = "conversion_rate"
            case counterpartyDriverId = "counterparty_driver_id"
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case description
            case invoiceType = "invoice_type"
            case orderIds = "order_ids"
            case sourceCurrencyCode = "source_currency_code"
            case targetCurrencyCode = "target_currency_code"
        }
    }
}