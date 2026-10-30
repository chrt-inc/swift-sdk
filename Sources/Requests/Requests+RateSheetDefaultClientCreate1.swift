import Foundation

extension Requests {
    public struct RateSheetDefaultClientCreate1: Codable, Hashable, Sendable {
        public let counterpartyDriverId: String?
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let invoiceType: InvoiceTypeEnum1
        public let rateSheetId: String?
        public let schemaVersion: Int
        public let serviceLine: ServiceLineEnum
        public let taskGroupType: TaskGroupTypeEnum1
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyDriverId: String? = nil,
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            invoiceType: InvoiceTypeEnum1,
            rateSheetId: String? = nil,
            schemaVersion: Int,
            serviceLine: ServiceLineEnum,
            taskGroupType: TaskGroupTypeEnum1,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyDriverId = counterpartyDriverId
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.invoiceType = invoiceType
            self.rateSheetId = rateSheetId
            self.schemaVersion = schemaVersion
            self.serviceLine = serviceLine
            self.taskGroupType = taskGroupType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.serviceLine = try container.decode(ServiceLineEnum.self, forKey: .serviceLine)
            self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.serviceLine, forKey: .serviceLine)
            try container.encode(self.taskGroupType, forKey: .taskGroupType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyDriverId = "counterparty_driver_id"
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case invoiceType = "invoice_type"
            case rateSheetId = "rate_sheet_id"
            case schemaVersion = "schema_version"
            case serviceLine = "service_line"
            case taskGroupType = "task_group_type"
        }
    }
}