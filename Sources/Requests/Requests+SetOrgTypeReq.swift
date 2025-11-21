import Foundation

extension Requests {
    public struct SetOrgTypeReq: Codable, Hashable, Sendable {
        public let orgType: OrgTypeEnum
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orgType: OrgTypeEnum,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orgType = orgType
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orgType, forKey: .orgType)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orgType = "org_type"
        }
    }
}