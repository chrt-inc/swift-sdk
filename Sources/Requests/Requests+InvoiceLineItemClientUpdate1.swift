import Foundation

extension Requests {
    public struct InvoiceLineItemClientUpdate1: Codable, Hashable, Sendable {
        public let currencyCode: BillingCurrencyCodeEnum1?
        public let description: String?
        public let exportRefSageItemId: String?
        public let exportRefSageItemIdSetToNone: Bool?
        public let invoiceType: InvoiceTypeEnum1?
        public let quantity: Double?
        public let unit: InvoiceLineItemUnitEnum1?
        public let unitSetToNone: Bool?
        public let unitPrice: Double?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            currencyCode: BillingCurrencyCodeEnum1? = nil,
            description: String? = nil,
            exportRefSageItemId: String? = nil,
            exportRefSageItemIdSetToNone: Bool? = nil,
            invoiceType: InvoiceTypeEnum1? = nil,
            quantity: Double? = nil,
            unit: InvoiceLineItemUnitEnum1? = nil,
            unitSetToNone: Bool? = nil,
            unitPrice: Double? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.currencyCode = currencyCode
            self.description = description
            self.exportRefSageItemId = exportRefSageItemId
            self.exportRefSageItemIdSetToNone = exportRefSageItemIdSetToNone
            self.invoiceType = invoiceType
            self.quantity = quantity
            self.unit = unit
            self.unitSetToNone = unitSetToNone
            self.unitPrice = unitPrice
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.currencyCode = try container.decodeIfPresent(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
            self.exportRefSageItemIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .exportRefSageItemIdSetToNone)
            self.invoiceType = try container.decodeIfPresent(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.quantity = try container.decodeIfPresent(Double.self, forKey: .quantity)
            self.unit = try container.decodeIfPresent(InvoiceLineItemUnitEnum1.self, forKey: .unit)
            self.unitSetToNone = try container.decodeIfPresent(Bool.self, forKey: .unitSetToNone)
            self.unitPrice = try container.decodeIfPresent(Double.self, forKey: .unitPrice)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
            try container.encodeIfPresent(self.exportRefSageItemIdSetToNone, forKey: .exportRefSageItemIdSetToNone)
            try container.encodeIfPresent(self.invoiceType, forKey: .invoiceType)
            try container.encodeIfPresent(self.quantity, forKey: .quantity)
            try container.encodeIfPresent(self.unit, forKey: .unit)
            try container.encodeIfPresent(self.unitSetToNone, forKey: .unitSetToNone)
            try container.encodeIfPresent(self.unitPrice, forKey: .unitPrice)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case currencyCode = "currency_code"
            case description
            case exportRefSageItemId = "export_ref__sage__item_id"
            case exportRefSageItemIdSetToNone = "export_ref__sage__item_id__set_to_None"
            case invoiceType = "invoice_type"
            case quantity
            case unit
            case unitSetToNone = "unit__set_to_None"
            case unitPrice = "unit_price"
        }
    }
}