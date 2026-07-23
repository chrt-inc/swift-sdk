import Foundation

extension Requests {
    public struct CreateInvoiceLineItemsFromLineItemsReq: Codable, Hashable, Sendable {
        public let accountIds: [String]?
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let description: String
        public let invoiceId: String?
        public let invoiceLineItemAmountTransformation: InvoiceLineItemAmountTransformation1
        public let invoiceType: InvoiceTypeEnum1
        public let lineItemType: InvoiceLineItemTypeEnum1
        public let orderId: String?
        public let sourceInvoiceLineItems: [InvoiceLineItem1]
        public let taskGroupId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            accountIds: [String]? = nil,
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            description: String,
            invoiceId: String? = nil,
            invoiceLineItemAmountTransformation: InvoiceLineItemAmountTransformation1,
            invoiceType: InvoiceTypeEnum1,
            lineItemType: InvoiceLineItemTypeEnum1,
            orderId: String? = nil,
            sourceInvoiceLineItems: [InvoiceLineItem1],
            taskGroupId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.accountIds = accountIds
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.description = description
            self.invoiceId = invoiceId
            self.invoiceLineItemAmountTransformation = invoiceLineItemAmountTransformation
            self.invoiceType = invoiceType
            self.lineItemType = lineItemType
            self.orderId = orderId
            self.sourceInvoiceLineItems = sourceInvoiceLineItems
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.accountIds = try container.decodeIfPresent([String].self, forKey: .accountIds)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.description = try container.decode(String.self, forKey: .description)
            self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
            self.invoiceLineItemAmountTransformation = try container.decode(InvoiceLineItemAmountTransformation1.self, forKey: .invoiceLineItemAmountTransformation)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
            self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
            self.sourceInvoiceLineItems = try container.decode([InvoiceLineItem1].self, forKey: .sourceInvoiceLineItems)
            self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.accountIds, forKey: .accountIds)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.description, forKey: .description)
            try container.encodeIfPresent(self.invoiceId, forKey: .invoiceId)
            try container.encode(self.invoiceLineItemAmountTransformation, forKey: .invoiceLineItemAmountTransformation)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encode(self.lineItemType, forKey: .lineItemType)
            try container.encodeIfPresent(self.orderId, forKey: .orderId)
            try container.encode(self.sourceInvoiceLineItems, forKey: .sourceInvoiceLineItems)
            try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case accountIds = "account_ids"
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case description
            case invoiceId = "invoice_id"
            case invoiceLineItemAmountTransformation = "invoice_line_item_amount_transformation"
            case invoiceType = "invoice_type"
            case lineItemType = "line_item_type"
            case orderId = "order_id"
            case sourceInvoiceLineItems = "source_invoice_line_items"
            case taskGroupId = "task_group_id"
        }
    }
}