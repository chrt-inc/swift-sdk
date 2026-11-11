import Foundation

extension Requests {
    public struct UserClientUpdate1: Codable, Hashable, Sendable {
        public let chrtManagedRoles: [ChrtManagedRoleEnum1]?
        public let customRoleIds: [String]?
        public let groupIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            chrtManagedRoles: [ChrtManagedRoleEnum1]? = nil,
            customRoleIds: [String]? = nil,
            groupIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.chrtManagedRoles = chrtManagedRoles
            self.customRoleIds = customRoleIds
            self.groupIds = groupIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.chrtManagedRoles = try container.decodeIfPresent([ChrtManagedRoleEnum1].self, forKey: .chrtManagedRoles)
            self.customRoleIds = try container.decodeIfPresent([String].self, forKey: .customRoleIds)
            self.groupIds = try container.decodeIfPresent([String].self, forKey: .groupIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.chrtManagedRoles, forKey: .chrtManagedRoles)
            try container.encodeIfPresent(self.customRoleIds, forKey: .customRoleIds)
            try container.encodeIfPresent(self.groupIds, forKey: .groupIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case chrtManagedRoles = "chrt_managed_roles"
            case customRoleIds = "custom_role_ids"
            case groupIds = "group_ids"
        }
    }
}