import Foundation

extension Requests {
    public struct ShipperProviderConnectionClientUpdate1: Codable, Hashable, Sendable {
        public let coordinatorDefaultDepartmentId: String?
        public let coordinatorDefaultDepartmentIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorDefaultDepartmentId: String? = nil,
            coordinatorDefaultDepartmentIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorDefaultDepartmentId = coordinatorDefaultDepartmentId
            self.coordinatorDefaultDepartmentIdSetToNone = coordinatorDefaultDepartmentIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorDefaultDepartmentId = try container.decodeIfPresent(String.self, forKey: .coordinatorDefaultDepartmentId)
            self.coordinatorDefaultDepartmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorDefaultDepartmentIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorDefaultDepartmentId, forKey: .coordinatorDefaultDepartmentId)
            try container.encodeIfPresent(self.coordinatorDefaultDepartmentIdSetToNone, forKey: .coordinatorDefaultDepartmentIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorDefaultDepartmentId = "coordinator_default_department_id"
            case coordinatorDefaultDepartmentIdSetToNone = "coordinator_default_department_id__set_to_None"
        }
    }
}