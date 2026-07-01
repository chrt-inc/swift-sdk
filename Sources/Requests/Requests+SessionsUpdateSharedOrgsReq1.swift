import Foundation

extension Requests {
    public struct SessionsUpdateSharedOrgsReq1: Codable, Hashable, Sendable {
        public let addOrgIds: [String]?
        public let removeOrgIds: [String]?
        public let sessionId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            addOrgIds: [String]? = nil,
            removeOrgIds: [String]? = nil,
            sessionId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.addOrgIds = addOrgIds
            self.removeOrgIds = removeOrgIds
            self.sessionId = sessionId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.addOrgIds = try container.decodeIfPresent([String].self, forKey: .addOrgIds)
            self.removeOrgIds = try container.decodeIfPresent([String].self, forKey: .removeOrgIds)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.addOrgIds, forKey: .addOrgIds)
            try container.encodeIfPresent(self.removeOrgIds, forKey: .removeOrgIds)
            try container.encode(self.sessionId, forKey: .sessionId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case addOrgIds = "add_org_ids"
            case removeOrgIds = "remove_org_ids"
            case sessionId = "session_id"
        }
    }
}