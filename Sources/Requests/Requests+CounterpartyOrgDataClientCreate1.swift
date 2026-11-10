import Foundation

extension Requests {
    public struct CounterpartyOrgDataClientCreate1: Codable, Hashable, Sendable {
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let invoiceDetails: [CounterpartyInvoiceDetails1]?
        public let notes: String?
        public let offChrtReferenceIds: [String]?
        public let schemaVersion: Int
        public let status: CounterpartyOrgStatusEnum1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            invoiceDetails: [CounterpartyInvoiceDetails1]? = nil,
            notes: String? = nil,
            offChrtReferenceIds: [String]? = nil,
            schemaVersion: Int,
            status: CounterpartyOrgStatusEnum1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.invoiceDetails = invoiceDetails
            self.notes = notes
            self.offChrtReferenceIds = offChrtReferenceIds
            self.schemaVersion = schemaVersion
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.invoiceDetails = try container.decodeIfPresent([CounterpartyInvoiceDetails1].self, forKey: .invoiceDetails)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.offChrtReferenceIds = try container.decodeIfPresent([String].self, forKey: .offChrtReferenceIds)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.status = try container.decodeIfPresent(CounterpartyOrgStatusEnum1.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encodeIfPresent(self.invoiceDetails, forKey: .invoiceDetails)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.offChrtReferenceIds, forKey: .offChrtReferenceIds)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.status, forKey: .status)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case invoiceDetails = "invoice_details"
            case notes
            case offChrtReferenceIds = "off_chrt_reference_ids"
            case schemaVersion = "schema_version"
            case status
        }
    }
}