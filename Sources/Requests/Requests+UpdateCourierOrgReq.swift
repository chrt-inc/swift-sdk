import Foundation

extension Requests {
    public struct UpdateCourierOrgReq: Codable, Hashable, Sendable {
        /// ID of the courier organization to assign to the task group
        public let courierOrgId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            courierOrgId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.courierOrgId = courierOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.courierOrgId = try container.decode(String.self, forKey: .courierOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.courierOrgId, forKey: .courierOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case courierOrgId = "courier_org_id"
        }
    }
}