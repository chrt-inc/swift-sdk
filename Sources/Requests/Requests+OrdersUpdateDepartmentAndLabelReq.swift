import Foundation

extension Requests {
    public struct OrdersUpdateDepartmentAndLabelReq: Codable, Hashable, Sendable {
        public let departmentId: String?
        public let departmentIdSetToNone: Bool?
        public let label: String?
        public let labelSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            departmentId: String? = nil,
            departmentIdSetToNone: Bool? = nil,
            label: String? = nil,
            labelSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.departmentId = departmentId
            self.departmentIdSetToNone = departmentIdSetToNone
            self.label = label
            self.labelSetToNone = labelSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.departmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .departmentIdSetToNone)
            self.label = try container.decodeIfPresent(String.self, forKey: .label)
            self.labelSetToNone = try container.decodeIfPresent(Bool.self, forKey: .labelSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.departmentIdSetToNone, forKey: .departmentIdSetToNone)
            try container.encodeIfPresent(self.label, forKey: .label)
            try container.encodeIfPresent(self.labelSetToNone, forKey: .labelSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case departmentId = "department_id"
            case departmentIdSetToNone = "department_id__set_to_None"
            case label
            case labelSetToNone = "label__set_to_None"
        }
    }
}