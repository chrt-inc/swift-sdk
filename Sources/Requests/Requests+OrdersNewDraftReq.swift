import Foundation

extension Requests {
    public struct OrdersNewDraftReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let forwarderOrgId: String?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let offChrtShipperOrgId: String?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            forwarderOrgId: String? = nil,
            shipperOrgId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            offChrtReferenceId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.forwarderOrgId = forwarderOrgId
            self.shipperOrgId = shipperOrgId
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.offChrtReferenceId = offChrtReferenceId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case forwarderOrgId = "forwarder_org_id"
            case shipperOrgId = "shipper_org_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case offChrtReferenceId = "off_chrt_reference_id"
        }
    }
}