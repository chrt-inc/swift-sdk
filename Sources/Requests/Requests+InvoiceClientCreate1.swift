import Foundation

extension Requests {
    public struct InvoiceClientCreate1: Codable, Hashable, Sendable {
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let currencyCode: BillingCurrencyCodeEnum1
        public let description: String?
        public let exportRefSageCustomerId: String?
        public let exportRefSageDepartmentId: String?
        public let invoiceType: InvoiceTypeEnum1
        public let name: String?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            currencyCode: BillingCurrencyCodeEnum1,
            description: String? = nil,
            exportRefSageCustomerId: String? = nil,
            exportRefSageDepartmentId: String? = nil,
            invoiceType: InvoiceTypeEnum1,
            name: String? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.currencyCode = currencyCode
            self.description = description
            self.exportRefSageCustomerId = exportRefSageCustomerId
            self.exportRefSageDepartmentId = exportRefSageDepartmentId
            self.invoiceType = invoiceType
            self.name = name
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.exportRefSageCustomerId = try container.decodeIfPresent(String.self, forKey: .exportRefSageCustomerId)
            self.exportRefSageDepartmentId = try container.decodeIfPresent(String.self, forKey: .exportRefSageDepartmentId)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.exportRefSageCustomerId, forKey: .exportRefSageCustomerId)
            try container.encodeIfPresent(self.exportRefSageDepartmentId, forKey: .exportRefSageDepartmentId)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case currencyCode = "currency_code"
            case description
            case exportRefSageCustomerId = "export_ref__sage__customer_id"
            case exportRefSageDepartmentId = "export_ref__sage__department_id"
            case invoiceType = "invoice_type"
            case name
            case schemaVersion = "schema_version"
        }
    }
}