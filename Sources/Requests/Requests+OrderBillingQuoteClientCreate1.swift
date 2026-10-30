import Foundation

extension Requests {
    public struct OrderBillingQuoteClientCreate1: Codable, Hashable, Sendable {
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let currencyCode: BillingCurrencyCodeEnum1
        public let lineItems: [ProFormaLineItemClientCreate1]?
        public let orderId: String
        public let quoteType: OrderBillingQuoteTypeEnum1
        public let schemaVersion: Int
        public let shipperAccountId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            currencyCode: BillingCurrencyCodeEnum1,
            lineItems: [ProFormaLineItemClientCreate1]? = nil,
            orderId: String,
            quoteType: OrderBillingQuoteTypeEnum1,
            schemaVersion: Int,
            shipperAccountId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.currencyCode = currencyCode
            self.lineItems = lineItems
            self.orderId = orderId
            self.quoteType = quoteType
            self.schemaVersion = schemaVersion
            self.shipperAccountId = shipperAccountId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.lineItems = try container.decodeIfPresent([ProFormaLineItemClientCreate1].self, forKey: .lineItems)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.quoteType = try container.decode(OrderBillingQuoteTypeEnum1.self, forKey: .quoteType)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.lineItems, forKey: .lineItems)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encode(self.quoteType, forKey: .quoteType)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case currencyCode = "currency_code"
            case lineItems = "line_items"
            case orderId = "order_id"
            case quoteType = "quote_type"
            case schemaVersion = "schema_version"
            case shipperAccountId = "shipper_account_id"
        }
    }
}