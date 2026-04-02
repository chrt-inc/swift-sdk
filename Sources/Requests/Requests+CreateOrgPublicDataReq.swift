import Foundation

extension Requests {
    public struct CreateOrgPublicDataReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `@`. May only contain a-z, A-Z, 0-9, _, -. May not be longer than 30 characters.
        public let handle: String?
        public let companyName: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            handle: String? = nil,
            companyName: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.handle = handle
            self.companyName = companyName
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.handle = try container.decodeIfPresent(String.self, forKey: .handle)
            self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.handle, forKey: .handle)
            try container.encodeIfPresent(self.companyName, forKey: .companyName)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case handle
            case companyName = "company_name"
        }
    }
}