import Foundation

extension Requests {
    public struct OrdersUpdateDepartmentsReq: Codable, Hashable, Sendable {
        public let departmentIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            departmentIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.departmentIds = departmentIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.departmentIds = try container.decodeIfPresent([String].self, forKey: .departmentIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.departmentIds, forKey: .departmentIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case departmentIds = "department_ids"
        }
    }
}