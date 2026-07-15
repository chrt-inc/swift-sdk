import Foundation

extension Requests {
    public struct DirectoryEntryClientUpdate1: Codable, Hashable, Sendable {
        public let emailAddress: String?
        public let emailAddressSetToNone: Bool?
        public let jobTitle: String?
        public let jobTitleSetToNone: Bool?
        public let location: LocationFeature?
        public let locationSetToNone: Bool?
        public let name: String?
        public let notes: String?
        public let notesSetToNone: Bool?
        public let phoneNumber: String?
        public let phoneNumberSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            emailAddress: String? = nil,
            emailAddressSetToNone: Bool? = nil,
            jobTitle: String? = nil,
            jobTitleSetToNone: Bool? = nil,
            location: LocationFeature? = nil,
            locationSetToNone: Bool? = nil,
            name: String? = nil,
            notes: String? = nil,
            notesSetToNone: Bool? = nil,
            phoneNumber: String? = nil,
            phoneNumberSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.emailAddress = emailAddress
            self.emailAddressSetToNone = emailAddressSetToNone
            self.jobTitle = jobTitle
            self.jobTitleSetToNone = jobTitleSetToNone
            self.location = location
            self.locationSetToNone = locationSetToNone
            self.name = name
            self.notes = notes
            self.notesSetToNone = notesSetToNone
            self.phoneNumber = phoneNumber
            self.phoneNumberSetToNone = phoneNumberSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
            self.emailAddressSetToNone = try container.decodeIfPresent(Bool.self, forKey: .emailAddressSetToNone)
            self.jobTitle = try container.decodeIfPresent(String.self, forKey: .jobTitle)
            self.jobTitleSetToNone = try container.decodeIfPresent(Bool.self, forKey: .jobTitleSetToNone)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.locationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .locationSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.notesSetToNone = try container.decodeIfPresent(Bool.self, forKey: .notesSetToNone)
            self.phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
            self.phoneNumberSetToNone = try container.decodeIfPresent(Bool.self, forKey: .phoneNumberSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
            try container.encodeIfPresent(self.emailAddressSetToNone, forKey: .emailAddressSetToNone)
            try container.encodeIfPresent(self.jobTitle, forKey: .jobTitle)
            try container.encodeIfPresent(self.jobTitleSetToNone, forKey: .jobTitleSetToNone)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.locationSetToNone, forKey: .locationSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.notesSetToNone, forKey: .notesSetToNone)
            try container.encodeIfPresent(self.phoneNumber, forKey: .phoneNumber)
            try container.encodeIfPresent(self.phoneNumberSetToNone, forKey: .phoneNumberSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case emailAddress = "email_address"
            case emailAddressSetToNone = "email_address__set_to_None"
            case jobTitle = "job_title"
            case jobTitleSetToNone = "job_title__set_to_None"
            case location
            case locationSetToNone = "location__set_to_None"
            case name
            case notes
            case notesSetToNone = "notes__set_to_None"
            case phoneNumber = "phone_number"
            case phoneNumberSetToNone = "phone_number__set_to_None"
        }
    }
}