import Foundation

extension Requests {
    public struct UpdateOrgPublicDataReq: Codable, Hashable, Sendable {
        public let handle: Nullable<String>?
        public let companyName: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            handle: Nullable<String>? = nil,
            companyName: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.handle = handle
            self.companyName = companyName
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.handle = try container.decodeNullableIfPresent(String.self, forKey: .handle)
            self.companyName = try container.decodeNullableIfPresent(String.self, forKey: .companyName)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.handle, forKey: .handle)
            try container.encodeNullableIfPresent(self.companyName, forKey: .companyName)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case handle
            case companyName = "company_name"
        }
    }
}