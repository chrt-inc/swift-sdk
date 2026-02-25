import Foundation

extension Requests {
    public struct DeviceClientCreate1: Codable, Hashable, Sendable {
        public let comments: String?
        public let deviceMacAddress: String
        public let offChrtReferenceId: String?
        public let schemaVersion: Int
        public let type: TrackingDeviceTypeEnum1?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            comments: String? = nil,
            deviceMacAddress: String,
            offChrtReferenceId: String? = nil,
            schemaVersion: Int,
            type: TrackingDeviceTypeEnum1? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.comments = comments
            self.deviceMacAddress = deviceMacAddress
            self.offChrtReferenceId = offChrtReferenceId
            self.schemaVersion = schemaVersion
            self.type = type
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.type, forKey: .type)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case comments
            case deviceMacAddress = "device_mac_address"
            case offChrtReferenceId = "off_chrt_reference_id"
            case schemaVersion = "schema_version"
            case type
        }
    }
}