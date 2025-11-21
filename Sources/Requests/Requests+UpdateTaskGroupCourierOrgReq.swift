import Foundation

extension Requests {
    public struct UpdateTaskGroupCourierOrgReq: Codable, Hashable, Sendable {
        public let removeCourierOrg: Bool?
        /// Must be a string starting with `org_`
        public let setCourierOrgId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            removeCourierOrg: Bool? = nil,
            setCourierOrgId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.removeCourierOrg = removeCourierOrg
            self.setCourierOrgId = setCourierOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.removeCourierOrg = try container.decodeIfPresent(Bool.self, forKey: .removeCourierOrg)
            self.setCourierOrgId = try container.decodeIfPresent(String.self, forKey: .setCourierOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.removeCourierOrg, forKey: .removeCourierOrg)
            try container.encodeIfPresent(self.setCourierOrgId, forKey: .setCourierOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case removeCourierOrg = "remove_courier_org"
            case setCourierOrgId = "set_courier_org_id"
        }
    }
}