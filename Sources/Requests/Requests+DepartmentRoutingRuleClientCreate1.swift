import Foundation

extension Requests {
    public struct DepartmentRoutingRuleClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let counterpartyType: RoutingCounterpartyTypeEnum
        public let counterpartyId: String
        public let departmentId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            counterpartyType: RoutingCounterpartyTypeEnum,
            counterpartyId: String,
            departmentId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.counterpartyType = counterpartyType
            self.counterpartyId = counterpartyId
            self.departmentId = departmentId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.counterpartyType = try container.decode(RoutingCounterpartyTypeEnum.self, forKey: .counterpartyType)
            self.counterpartyId = try container.decode(String.self, forKey: .counterpartyId)
            self.departmentId = try container.decode(String.self, forKey: .departmentId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.counterpartyType, forKey: .counterpartyType)
            try container.encode(self.counterpartyId, forKey: .counterpartyId)
            try container.encode(self.departmentId, forKey: .departmentId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case counterpartyType = "counterparty_type"
            case counterpartyId = "counterparty_id"
            case departmentId = "department_id"
        }
    }
}