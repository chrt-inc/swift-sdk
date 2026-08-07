import Foundation

extension Requests {
    public struct OrdersDraftUpdateReq: Codable, Hashable, Sendable {
        /// Must be a string starting with `org_`
        public let coordinatorOrgId: String?
        public let coordinatorOrgIdSetToNone: Bool?
        public let offChrtShipperOrgDataId: String?
        public let offChrtShipperOrgDataIdSetToNone: Bool?
        public let serviceLine: ServiceLineEnum?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let shipperOrgIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            coordinatorOrgId: String? = nil,
            coordinatorOrgIdSetToNone: Bool? = nil,
            offChrtShipperOrgDataId: String? = nil,
            offChrtShipperOrgDataIdSetToNone: Bool? = nil,
            serviceLine: ServiceLineEnum? = nil,
            shipperOrgId: String? = nil,
            shipperOrgIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.coordinatorOrgId = coordinatorOrgId
            self.coordinatorOrgIdSetToNone = coordinatorOrgIdSetToNone
            self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
            self.offChrtShipperOrgDataIdSetToNone = offChrtShipperOrgDataIdSetToNone
            self.serviceLine = serviceLine
            self.shipperOrgId = shipperOrgId
            self.shipperOrgIdSetToNone = shipperOrgIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
            self.coordinatorOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .coordinatorOrgIdSetToNone)
            self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
            self.offChrtShipperOrgDataIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .offChrtShipperOrgDataIdSetToNone)
            self.serviceLine = try container.decodeIfPresent(ServiceLineEnum.self, forKey: .serviceLine)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.shipperOrgIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperOrgIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
            try container.encodeIfPresent(self.coordinatorOrgIdSetToNone, forKey: .coordinatorOrgIdSetToNone)
            try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
            try container.encodeIfPresent(self.offChrtShipperOrgDataIdSetToNone, forKey: .offChrtShipperOrgDataIdSetToNone)
            try container.encodeIfPresent(self.serviceLine, forKey: .serviceLine)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.shipperOrgIdSetToNone, forKey: .shipperOrgIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case coordinatorOrgId = "coordinator_org_id"
            case coordinatorOrgIdSetToNone = "coordinator_org_id__set_to_None"
            case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
            case offChrtShipperOrgDataIdSetToNone = "off_chrt_shipper_org_data_id__set_to_None"
            case serviceLine = "service_line"
            case shipperOrgId = "shipper_org_id"
            case shipperOrgIdSetToNone = "shipper_org_id__set_to_None"
        }
    }
}