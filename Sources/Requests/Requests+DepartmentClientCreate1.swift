import Foundation

extension Requests {
    public struct DepartmentClientCreate1: Codable, Hashable, Sendable {
        public let departmentType: DepartmentTypeEnum
        public let location: LocationFeature?
        public let name: String
        public let operatorUserIds: [String]?
        public let schemaVersion: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            departmentType: DepartmentTypeEnum,
            location: LocationFeature? = nil,
            name: String,
            operatorUserIds: [String]? = nil,
            schemaVersion: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.departmentType = departmentType
            self.location = location
            self.name = name
            self.operatorUserIds = operatorUserIds
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.departmentType = try container.decode(DepartmentTypeEnum.self, forKey: .departmentType)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.name = try container.decode(String.self, forKey: .name)
            self.operatorUserIds = try container.decodeIfPresent([String].self, forKey: .operatorUserIds)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.departmentType, forKey: .departmentType)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.operatorUserIds, forKey: .operatorUserIds)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case departmentType = "department_type"
            case location
            case name
            case operatorUserIds = "operator_user_ids"
            case schemaVersion = "schema_version"
        }
    }
}