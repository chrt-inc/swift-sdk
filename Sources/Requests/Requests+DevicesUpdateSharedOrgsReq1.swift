import Foundation

extension Requests {
    public struct DevicesUpdateSharedOrgsReq1: Codable, Hashable, Sendable {
        public let deviceId: String
        public let addOrgIds: [String]?
        public let removeOrgIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            deviceId: String,
            addOrgIds: [String]? = nil,
            removeOrgIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.deviceId = deviceId
            self.addOrgIds = addOrgIds
            self.removeOrgIds = removeOrgIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.deviceId = try container.decode(String.self, forKey: .deviceId)
            self.addOrgIds = try container.decodeIfPresent([String].self, forKey: .addOrgIds)
            self.removeOrgIds = try container.decodeIfPresent([String].self, forKey: .removeOrgIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.deviceId, forKey: .deviceId)
            try container.encodeIfPresent(self.addOrgIds, forKey: .addOrgIds)
            try container.encodeIfPresent(self.removeOrgIds, forKey: .removeOrgIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case deviceId = "device_id"
            case addOrgIds = "add_org_ids"
            case removeOrgIds = "remove_org_ids"
        }
    }
}