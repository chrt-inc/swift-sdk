import Foundation

extension Requests {
    public struct DepartmentClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let name: String
        public let department: DepartmentEnum
        public let location: LocationFeature?
        public let operatorUserIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            name: String,
            department: DepartmentEnum,
            location: LocationFeature? = nil,
            operatorUserIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.name = name
            self.department = department
            self.location = location
            self.operatorUserIds = operatorUserIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.name = try container.decode(String.self, forKey: .name)
            self.department = try container.decode(DepartmentEnum.self, forKey: .department)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.operatorUserIds = try container.decodeIfPresent([String].self, forKey: .operatorUserIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.department, forKey: .department)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.operatorUserIds, forKey: .operatorUserIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case name
            case department
            case location
            case operatorUserIds = "operator_user_ids"
        }
    }
}