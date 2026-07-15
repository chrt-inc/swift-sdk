import Foundation

extension Requests {
    public struct SetupOrgReq: Codable, Hashable, Sendable {
        public let description: String?
        /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
        public let handle: String?
        public let name: String
        public let orgType: OrgTypeEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            handle: String? = nil,
            name: String,
            orgType: OrgTypeEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.handle = handle
            self.name = name
            self.orgType = orgType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
            self.name = try container.decode(String.self, forKey: .name)
            self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.handle, forKey: .handle)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.orgType, forKey: .orgType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case handle
            case name
            case orgType = "org_type"
        }
    }
}