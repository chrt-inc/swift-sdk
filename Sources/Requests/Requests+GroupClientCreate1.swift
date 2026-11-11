import Foundation

extension Requests {
    public struct GroupClientCreate1: Codable, Hashable, Sendable {
        public let chrtManagedRoles: [ChrtManagedRoleEnum1]?
        public let customRoleIds: [String]?
        public let description: String?
        public let name: String
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            chrtManagedRoles: [ChrtManagedRoleEnum1]? = nil,
            customRoleIds: [String]? = nil,
            description: String? = nil,
            name: String,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.chrtManagedRoles = chrtManagedRoles
            self.customRoleIds = customRoleIds
            self.description = description
            self.name = name
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.chrtManagedRoles = try container.decodeIfPresent([ChrtManagedRoleEnum1].self, forKey: .chrtManagedRoles)
            self.customRoleIds = try container.decodeIfPresent([String].self, forKey: .customRoleIds)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.name = try container.decode(String.self, forKey: .name)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.chrtManagedRoles, forKey: .chrtManagedRoles)
            try container.encodeIfPresent(self.customRoleIds, forKey: .customRoleIds)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case chrtManagedRoles = "chrt_managed_roles"
            case customRoleIds = "custom_role_ids"
            case description
            case name
            case schemaVersion = "schema_version"
        }
    }
}