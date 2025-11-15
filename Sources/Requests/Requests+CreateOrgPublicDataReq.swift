import Foundation

extension Requests {
    public struct CreateOrgPublicDataReq: Codable, Hashable, Sendable {
        public let orgType: OrgTypeEnum
        public let handle: String?
        public let companyName: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orgType: OrgTypeEnum,
            handle: String? = nil,
            companyName: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orgType = orgType
            self.handle = handle
            self.companyName = companyName
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orgType = try container.decode(OrgTypeEnum.self, forKey: .orgType)
            self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
            self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orgType, forKey: .orgType)
            try container.encodeIfPresent(self.handle, forKey: .handle)
            try container.encodeIfPresent(self.companyName, forKey: .companyName)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orgType = "org_type"
            case handle
            case companyName = "company_name"
        }
    }
}