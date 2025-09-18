import Foundation

extension Requests {
    public struct SessionByDeviceCreateSessionRequest1: Codable, Hashable, Sendable {
        public let deviceMacAddress: String
        public let comments: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            deviceMacAddress: String,
            comments: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.deviceMacAddress = deviceMacAddress
            self.comments = comments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
            self.comments = try container.decodeNullableIfPresent(String.self, forKey: .comments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
            try container.encodeNullableIfPresent(self.comments, forKey: .comments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case deviceMacAddress = "device_mac_address"
            case comments
        }
    }
}