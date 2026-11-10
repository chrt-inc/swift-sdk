import Foundation

extension Requests {
    public struct CounterpartyOrgDataClientUpdate1: Codable, Hashable, Sendable {
        public let invoiceDetails: [CounterpartyInvoiceDetails1]?
        public let notes: String?
        public let notesSetToNone: Bool?
        public let offChrtReferenceIds: [String]?
        public let status: CounterpartyOrgStatusEnum1?
        public let statusSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            invoiceDetails: [CounterpartyInvoiceDetails1]? = nil,
            notes: String? = nil,
            notesSetToNone: Bool? = nil,
            offChrtReferenceIds: [String]? = nil,
            status: CounterpartyOrgStatusEnum1? = nil,
            statusSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.invoiceDetails = invoiceDetails
            self.notes = notes
            self.notesSetToNone = notesSetToNone
            self.offChrtReferenceIds = offChrtReferenceIds
            self.status = status
            self.statusSetToNone = statusSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.invoiceDetails = try container.decodeIfPresent([CounterpartyInvoiceDetails1].self, forKey: .invoiceDetails)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.offChrtReferenceIds = try container.decodeIfPresent([String].self, forKey: .offChrtReferenceIds)
            self.status = try container.decodeIfPresent(CounterpartyOrgStatusEnum1.self, forKey: .status)
            self.statusSetToNone = try container.decodeIfPresent(Bool.self, forKey: .statusSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.invoiceDetails, forKey: .invoiceDetails)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
            try container.encodeIfPresent(self.offChrtReferenceIds, forKey: .offChrtReferenceIds)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeIfPresent(self.statusSetToNone, forKey: .statusSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case invoiceDetails = "invoice_details"
            case notes
            case notesSetToNone = "notes__set_to_None"
            case offChrtReferenceIds = "off_chrt_reference_ids"
            case status
            case statusSetToNone = "status__set_to_None"
        }
    }
}