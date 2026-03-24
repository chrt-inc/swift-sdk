import Foundation

extension Requests {
    public struct OrdersDraftUpdateReq: Codable, Hashable, Sendable {
        public let orderId: String
        /// Must be a string starting with `org_`
        public let forwarderOrgId: String?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let offChrtShipperOrgId: String?
        public let forwarderOrgIdSetToNone: Bool?
        public let shipperOrgIdSetToNone: Bool?
        public let offChrtShipperOrgIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            orderId: String,
            forwarderOrgId: String? = nil,
            shipperOrgId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            forwarderOrgIdSetToNone: Bool? = nil,
            shipperOrgIdSetToNone: Bool? = nil,
            offChrtShipperOrgIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.orderId = orderId
            self.forwarderOrgId = forwarderOrgId
            self.shipperOrgId = shipperOrgId
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.forwarderOrgIdSetToNone = forwarderOrgIdSetToNone
            self.shipperOrgIdSetToNone = shipperOrgIdSetToNone
            self.offChrtShipperOrgIdSetToNone = offChrtShipperOrgIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.forwarderOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .forwarderOrgIdSetToNone)
            self.shipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperOrgIdSetToNone)
            self.offChrtShipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtShipperOrgIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.forwarderOrgIdSetToNone, forKey: .forwarderOrgIdSetToNone)
            try container.encodeIfPresent(self.shipperOrgIdSetToNone, forKey: .shipperOrgIdSetToNone)
            try container.encodeIfPresent(self.offChrtShipperOrgIdSetToNone, forKey: .offChrtShipperOrgIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case orderId = "order_id"
            case forwarderOrgId = "forwarder_org_id"
            case shipperOrgId = "shipper_org_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case forwarderOrgIdSetToNone = "forwarder_org_id__set_to_None"
            case shipperOrgIdSetToNone = "shipper_org_id__set_to_None"
            case offChrtShipperOrgIdSetToNone = "off_chrt_shipper_org_id__set_to_None"
        }
    }
}