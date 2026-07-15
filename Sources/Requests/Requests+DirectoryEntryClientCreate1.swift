import Foundation

extension Requests {
    public struct DirectoryEntryClientCreate1: Codable, Hashable, Sendable {
        public let emailAddress: String?
        public let entryOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let entryOrgId: String?
        public let jobTitle: String?
        public let location: LocationFeature?
        public let name: String
        public let notes: String?
        public let phoneNumber: String?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailAddress: String? = nil,
            entryOffChrtOrgDataId: String? = nil,
            entryOrgId: String? = nil,
            jobTitle: String? = nil,
            location: LocationFeature? = nil,
            name: String,
            notes: String? = nil,
            phoneNumber: String? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailAddress = emailAddress
            self.entryOffChrtOrgDataId = entryOffChrtOrgDataId
            self.entryOrgId = entryOrgId
            self.jobTitle = jobTitle
            self.location = location
            self.name = name
            self.notes = notes
            self.phoneNumber = phoneNumber
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
            self.entryOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .entryOffChrtOrgDataId)
            self.entryOrgId = try container.decodeIfPresent(String.self, forKey: .entryOrgId)
            self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.name = try container.decode(String.self, forKey: .name)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
            try container.encodeIfPresent(self.entryOffChrtOrgDataId, forKey: .entryOffChrtOrgDataId)
            try container.encodeIfPresent(self.entryOrgId, forKey: .entryOrgId)
            try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailAddress = "email_address"
            case entryOffChrtOrgDataId = "entry_off_chrt_org_data_id"
            case entryOrgId = "entry_org_id"
            case jobTitle = "job_title"
            case location
            case name
            case notes
            case phoneNumber = "phone_number"
            case schemaVersion = "schema_version"
        }
    }
}