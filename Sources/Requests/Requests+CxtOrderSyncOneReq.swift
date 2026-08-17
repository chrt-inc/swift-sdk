import Foundation

extension Requests {
    public struct CxtOrderSyncOneReq: Codable, Hashable, Sendable {
        public let integrationOrderId: String
        /// Must be a string starting with `org_`
        public let providerOrgId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            integrationOrderId: String,
            providerOrgId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.integrationOrderId = integrationOrderId
            self.providerOrgId = providerOrgId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.integrationOrderId = try container.decode(String.self, forKey: .integrationOrderId)
            self.providerOrgId = try container.decode(String.self, forKey: .providerOrgId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.integrationOrderId, forKey: .integrationOrderId)
            try container.encode(self.providerOrgId, forKey: .providerOrgId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case integrationOrderId = "integration_order_id"
            case providerOrgId = "provider_org_id"
        }
    }
}