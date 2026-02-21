import Foundation

extension Requests {
    public struct SessionsUpdateSharedOrgsReq1: Codable, Hashable, Sendable {
        public let sessionId: String
        public let addOrgIds: [String]?
        public let removeOrgIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sessionId: String,
            addOrgIds: [String]? = nil,
            removeOrgIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sessionId = sessionId
            self.addOrgIds = addOrgIds
            self.removeOrgIds = removeOrgIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.addOrgIds = try container.decodeIfPresent([String].self, forKey: .addOrgIds)
            self.removeOrgIds = try container.decodeIfPresent([String].self, forKey: .removeOrgIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.sessionId, forKey: .sessionId)
            try container.encodeIfPresent(self.addOrgIds, forKey: .addOrgIds)
            try container.encodeIfPresent(self.removeOrgIds, forKey: .removeOrgIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sessionId = "session_id"
            case addOrgIds = "add_org_ids"
            case removeOrgIds = "remove_org_ids"
        }
    }
}