import Foundation

extension Requests {
    public struct OrgPrivateDataClientUpdate1: Codable, Hashable, Sendable {
        public let iacLegalName: String?
        public let iacLegalNameSetToNone: Bool?
        public let tsaAssignedNumber: String?
        public let tsaAssignedNumberSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            iacLegalName: String? = nil,
            iacLegalNameSetToNone: Bool? = nil,
            tsaAssignedNumber: String? = nil,
            tsaAssignedNumberSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.iacLegalName = iacLegalName
            self.iacLegalNameSetToNone = iacLegalNameSetToNone
            self.tsaAssignedNumber = tsaAssignedNumber
            self.tsaAssignedNumberSetToNone = tsaAssignedNumberSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.iacLegalName = try container.decodeIfPresent(String.self, forKey: .iacLegalName)
            self.iacLegalNameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .iacLegalNameSetToNone)
            self.tsaAssignedNumber = try container.decodeIfPresent(String.self, forKey: .tsaAssignedNumber)
            self.tsaAssignedNumberSetToNone = try container.decodeIfPresent(Bool.self, forKey: .tsaAssignedNumberSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.iacLegalName, forKey: .iacLegalName)
            try container.encodeIfPresent(self.iacLegalNameSetToNone, forKey: .iacLegalNameSetToNone)
            try container.encodeIfPresent(self.tsaAssignedNumber, forKey: .tsaAssignedNumber)
            try container.encodeIfPresent(self.tsaAssignedNumberSetToNone, forKey: .tsaAssignedNumberSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case iacLegalName = "iac_legal_name"
            case iacLegalNameSetToNone = "iac_legal_name__set_to_None"
            case tsaAssignedNumber = "tsa_assigned_number"
            case tsaAssignedNumberSetToNone = "tsa_assigned_number__set_to_None"
        }
    }
}