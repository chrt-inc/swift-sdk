import Foundation

extension Requests {
    public struct SetDepartmentReq: Codable, Hashable, Sendable {
        public let departmentId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            departmentId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.departmentId = departmentId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case departmentId = "department_id"
        }
    }
}