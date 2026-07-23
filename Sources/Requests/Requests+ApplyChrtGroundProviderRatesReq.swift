import Foundation

extension Requests {
    public struct ApplyChrtGroundProviderRatesReq: Codable, Hashable, Sendable {
        public let accountId: String?
        public let invoiceId: String?
        public let invoiceType: InvoiceTypeEnum1
        /// Must be a string starting with `org_`
        public let orgId: String
        public let rateSheetId: String
        public let taskGroupId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            accountId: String? = nil,
            invoiceId: String? = nil,
            invoiceType: InvoiceTypeEnum1,
            orgId: String,
            rateSheetId: String,
            taskGroupId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.accountId = accountId
            self.invoiceId = invoiceId
            self.invoiceType = invoiceType
            self.orgId = orgId
            self.rateSheetId = rateSheetId
            self.taskGroupId = taskGroupId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.accountId = try container.decodeIfPresent(String.self, forKey: .accountId)
            self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.orgId = try container.decode(String.self, forKey: .orgId)
            self.rateSheetId = try container.decode(String.self, forKey: .rateSheetId)
            self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.accountId, forKey: .accountId)
            try container.encodeIfPresent(self.invoiceId, forKey: .invoiceId)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encode(self.orgId, forKey: .orgId)
            try container.encode(self.rateSheetId, forKey: .rateSheetId)
            try container.encode(self.taskGroupId, forKey: .taskGroupId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case accountId = "account_id"
            case invoiceId = "invoice_id"
            case invoiceType = "invoice_type"
            case orgId = "org_id"
            case rateSheetId = "rate_sheet_id"
            case taskGroupId = "task_group_id"
        }
    }
}