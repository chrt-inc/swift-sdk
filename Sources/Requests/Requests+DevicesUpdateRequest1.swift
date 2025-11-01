import Foundation

extension Requests {
    public struct DevicesUpdateRequest1: Codable, Hashable, Sendable {
        public let deviceId: String?
        public let deviceMacAddress: String?
        public let type: TrackingDeviceTypeEnum1?
        public let comments: String?
        public let deleteType: Bool?
        public let deleteComments: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            deviceId: String? = nil,
            deviceMacAddress: String? = nil,
            type: TrackingDeviceTypeEnum1? = nil,
            comments: String? = nil,
            deleteType: Bool? = nil,
            deleteComments: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.deviceId = deviceId
            self.deviceMacAddress = deviceMacAddress
            self.type = type
            self.comments = comments
            self.deleteType = deleteType
            self.deleteComments = deleteComments
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.deviceId = try container.decodeIfPresent(String.self, forKey: .deviceId)
            self.deviceMacAddress = try container.decodeIfPresent(String.self, forKey: .deviceMacAddress)
            self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.deleteType = try container.decodeIfPresent(Bool.self, forKey: .deleteType)
            self.deleteComments = try container.decodeIfPresent(Bool.self, forKey: .deleteComments)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.deviceId, forKey: .deviceId)
            try container.encodeIfPresent(self.deviceMacAddress, forKey: .deviceMacAddress)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.deleteType, forKey: .deleteType)
            try container.encodeIfPresent(self.deleteComments, forKey: .deleteComments)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case deviceId = "device_id"
            case deviceMacAddress = "device_mac_address"
            case type
            case comments
            case deleteType = "delete_type"
            case deleteComments = "delete_comments"
        }
    }
}