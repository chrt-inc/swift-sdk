import Foundation

extension Requests {
    public struct CaseClientUpdate1: Codable, Hashable, Sendable {
        public let assignedUserIds: [String]?
        public let caseTag: String?
        public let caseTagSetToNone: Bool?
        public let departmentId: String?
        public let departmentIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            assignedUserIds: [String]? = nil,
            caseTag: String? = nil,
            caseTagSetToNone: Bool? = nil,
            departmentId: String? = nil,
            departmentIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.assignedUserIds = assignedUserIds
            self.caseTag = caseTag
            self.caseTagSetToNone = caseTagSetToNone
            self.departmentId = departmentId
            self.departmentIdSetToNone = departmentIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
            self.caseTag = try container.decodeIfPresent(String.self, forKey: .caseTag)
            self.caseTagSetToNone = try container.decodeIfPresent(Bool.self, forKey: .caseTagSetToNone)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.departmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .departmentIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
            try container.encodeIfPresent(self.caseTag, forKey: .caseTag)
            try container.encodeIfPresent(self.caseTagSetToNone, forKey: .caseTagSetToNone)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.departmentIdSetToNone, forKey: .departmentIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case assignedUserIds = "assigned_user_ids"
            case caseTag = "case_tag"
            case caseTagSetToNone = "case_tag__set_to_None"
            case departmentId = "department_id"
            case departmentIdSetToNone = "department_id__set_to_None"
        }
    }
}