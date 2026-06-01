import Foundation

extension Requests {
    public struct CaseClientUpdate1: Codable, Hashable, Sendable {
        public let departmentId: String?
        public let assignedUserIds: [String]?
        public let departmentIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            departmentId: String? = nil,
            assignedUserIds: [String]? = nil,
            departmentIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.departmentId = departmentId
            self.assignedUserIds = assignedUserIds
            self.departmentIdSetToNone = departmentIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
            self.departmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .departmentIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
            try container.encodeIfPresent(self.departmentIdSetToNone, forKey: .departmentIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case departmentId = "department_id"
            case assignedUserIds = "assigned_user_ids"
            case departmentIdSetToNone = "department_id__set_to_None"
        }
    }
}