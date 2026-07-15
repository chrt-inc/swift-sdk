import Foundation

extension Requests {
    public struct OrdersDraftUpdateReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let coordinatorOrgIdSetToNone: Bool?
        /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
        public let offChrtReferenceId: String?
        public let offChrtReferenceIdSetToNone: Bool?
        public let offChrtShipperOrgDataId: String?
        public let offChrtShipperOrgDataIdSetToNone: Bool?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let shipperOrgIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorOrgId: String? = nil,
            coordinatorOrgIdSetToNone: Bool? = nil,
            offChrtReferenceId: String? = nil,
            offChrtReferenceIdSetToNone: Bool? = nil,
            offChrtShipperOrgDataId: String? = nil,
            offChrtShipperOrgDataIdSetToNone: Bool? = nil,
            shipperOrgId: String? = nil,
            shipperOrgIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorOrgId = coordinatorOrgId
            self.coordinatorOrgIdSetToNone = coordinatorOrgIdSetToNone
            self.offChrtReferenceId = offChrtReferenceId
            self.offChrtReferenceIdSetToNone = offChrtReferenceIdSetToNone
            self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
            self.offChrtShipperOrgDataIdSetToNone = offChrtShipperOrgDataIdSetToNone
            self.shipperOrgId = shipperOrgId
            self.shipperOrgIdSetToNone = shipperOrgIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.coordinatorOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorOrgIdSetToNone)
            self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
            self.offChrtReferenceIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtReferenceIdSetToNone)
            self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
            self.offChrtShipperOrgDataIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtShipperOrgDataIdSetToNone)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.shipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperOrgIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.coordinatorOrgIdSetToNone, forKey: .coordinatorOrgIdSetToNone)
            try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
            try container.encodeIfPresent(self.offChrtReferenceIdSetToNone, forKey: .offChrtReferenceIdSetToNone)
            try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
            try container.encodeIfPresent(self.offChrtShipperOrgDataIdSetToNone, forKey: .offChrtShipperOrgDataIdSetToNone)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.shipperOrgIdSetToNone, forKey: .shipperOrgIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorOrgId = "coordinator_org_id"
            case coordinatorOrgIdSetToNone = "coordinator_org_id__set_to_None"
            case offChrtReferenceId = "off_chrt_reference_id"
            case offChrtReferenceIdSetToNone = "off_chrt_reference_id__set_to_None"
            case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
            case offChrtShipperOrgDataIdSetToNone = "off_chrt_shipper_org_data_id__set_to_None"
            case shipperOrgId = "shipper_org_id"
            case shipperOrgIdSetToNone = "shipper_org_id__set_to_None"
        }
    }
}