import Foundation

extension Requests {
    public struct IataCassOfficeClientUpdate1: Codable, Hashable, Sendable {
        public let companyName: String?
        public let contactFirstName: String?
        public let contactLastName: String?
        public let name: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            companyName: String? = nil,
            contactFirstName: String? = nil,
            contactLastName: String? = nil,
            name: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.companyName = companyName
            self.contactFirstName = contactFirstName
            self.contactLastName = contactLastName
            self.name = name
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
            self.contactFirstName = try container.decodeIfPresent(String.self, forKey: .contactFirstName)
            self.contactLastName = try container.decodeIfPresent(String.self, forKey: .contactLastName)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.companyName, forKey: .companyName)
            try container.encodeIfPresent(self.contactFirstName, forKey: .contactFirstName)
            try container.encodeIfPresent(self.contactLastName, forKey: .contactLastName)
            try container.encodeIfPresent(self.name, forKey: .name)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case companyName = "company_name"
            case contactFirstName = "contact_first_name"
            case contactLastName = "contact_last_name"
            case name
        }
    }
}