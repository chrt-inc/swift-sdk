import Foundation

extension Requests {
    public struct CreateInvoiceLineItemsFromAmountReq: Codable, Hashable, Sendable {
        public let accountIds: [String]?
        public let amount: Double
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let currencyCode: BillingCurrencyCodeEnum1
        public let description: String
        public let invoiceId: String?
        public let invoiceType: InvoiceTypeEnum1
        public let lineItemType: InvoiceLineItemTypeEnum1
        public let orderId: String?
        public let taskGroupId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            accountIds: [String]? = nil,
            amount: Double,
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            currencyCode: BillingCurrencyCodeEnum1,
            description: String,
            invoiceId: String? = nil,
            invoiceType: InvoiceTypeEnum1,
            lineItemType: InvoiceLineItemTypeEnum1,
            orderId: String? = nil,
            taskGroupId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.accountIds = accountIds
            self.amount = amount
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.currencyCode = currencyCode
            self.description = description
            self.invoiceId = invoiceId
            self.invoiceType = invoiceType
            self.lineItemType = lineItemType
            self.orderId = orderId
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.accountIds = try container.decodeIfPresent([String].self, forKey: .accountIds)
            self.amount = try container.decode(Double.self, forKey: .amount)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.description = try container.decode(String.self, forKey: .description)
            self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
            self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
            self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.accountIds, forKey: .accountIds)
            try container.encode(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encode(self.description, forKey: .description)
            try container.encodeIfPresent(self.invoiceId, forKey: .invoiceId)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encode(self.lineItemType, forKey: .lineItemType)
            try container.encodeIfPresent(self.orderId, forKey: .orderId)
            try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case accountIds = "account_ids"
            case amount
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case currencyCode = "currency_code"
            case description
            case invoiceId = "invoice_id"
            case invoiceType = "invoice_type"
            case lineItemType = "line_item_type"
            case orderId = "order_id"
            case taskGroupId = "task_group_id"
        }
    }
}