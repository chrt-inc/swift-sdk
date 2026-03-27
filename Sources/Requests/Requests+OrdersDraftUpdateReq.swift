import Foundation

extension Requests {
    public struct OrdersDraftUpdateReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let forwarderOrgId: String?
        public let forwarderOrgIdSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let shipperOrgIdSetToNone: Bool?
        public let offChrtShipperOrgId: String?
        public let offChrtShipperOrgIdSetToNone: Bool?
        public let offChrtReferenceId: String?
        public let offChrtReferenceIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            forwarderOrgId: String? = nil,
            forwarderOrgIdSetToNone: Bool? = nil,
            shipperOrgId: String? = nil,
            shipperOrgIdSetToNone: Bool? = nil,
            offChrtShipperOrgId: String? = nil,
            offChrtShipperOrgIdSetToNone: Bool? = nil,
            offChrtReferenceId: String? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.forwarderOrgId = forwarderOrgId
            self.forwarderOrgIdSetToNone = forwarderOrgIdSetToNone
            self.shipperOrgId = shipperOrgId
            self.shipperOrgIdSetToNone = shipperOrgIdSetToNone
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.offChrtShipperOrgIdSetToNone = offChrtShipperOrgIdSetToNone
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
            self.forwarderOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .forwarderOrgIdSetToNone)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.shipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperOrgIdSetToNone)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.offChrtShipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtShipperOrgIdSetToNone)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
            try container.encodeIfPresent(self.forwarderOrgIdSetToNone, forKey: .forwarderOrgIdSetToNone)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.shipperOrgIdSetToNone, forKey: .shipperOrgIdSetToNone)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.offChrtShipperOrgIdSetToNone, forKey: .offChrtShipperOrgIdSetToNone)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case forwarderOrgId = "forwarder_org_id"
            case forwarderOrgIdSetToNone = "forwarder_org_id__set_to_None"
            case shipperOrgId = "shipper_org_id"
            case shipperOrgIdSetToNone = "shipper_org_id__set_to_None"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case offChrtShipperOrgIdSetToNone = "off_chrt_shipper_org_id__set_to_None"
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
        }
    }
}