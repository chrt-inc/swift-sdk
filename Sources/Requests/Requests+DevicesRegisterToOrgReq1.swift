import Foundation

extension Requests {
    public struct DevicesRegisterToOrgReq1: Codable, Hashable, Sendable {
        public let deviceMacAddress: String
        public let type: Nullable<TrackingDeviceTypeEnum1>?
        public let comments: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            deviceMacAddress: String,
            type: Nullable<TrackingDeviceTypeEnum1>? = nil,
            comments: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.deviceMacAddress = deviceMacAddress
            self.type = type
            self.comments = comments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
            self.type = try container.decodeNullableIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
            self.comments = try container.decodeNullableIfPresent(String.self, forKey: .comments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
            try container.encodeNullableIfPresent(self.type, forKey: .type)
            try container.encodeNullableIfPresent(self.comments, forKey: .comments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case deviceMacAddress = "device_mac_address"
            case type
            case comments
        }
    }
}