import Foundation

extension Requests {
    public struct OrderTemplateClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let name: String
        public let description: String?
        public let orderInput: String?
        public let offChrtReferenceIdStr: String?
        /// Must be a string starting with `org_`
        public let shipperOrgId: String?
        public let offChrtShipperOrgId: String?
        public let executorOrgIds: [String]?
        public let driverIds: [String]?
        public let directoryEntryIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            name: String,
            description: String? = nil,
            orderInput: String? = nil,
            offChrtReferenceIdStr: String? = nil,
            shipperOrgId: String? = nil,
            offChrtShipperOrgId: String? = nil,
            executorOrgIds: [String]? = nil,
            driverIds: [String]? = nil,
            directoryEntryIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.name = name
            self.description = description
            self.orderInput = orderInput
            self.offChrtReferenceIdStr = offChrtReferenceIdStr
            self.shipperOrgId = shipperOrgId
            self.offChrtShipperOrgId = offChrtShipperOrgId
            self.executorOrgIds = executorOrgIds
            self.driverIds = driverIds
            self.directoryEntryIds = directoryEntryIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.name = try container.decode(String.self, forKey: .name)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.orderInput = try container.decodeIfPresent(String.self, forKey: .orderInput)
            self.offChrtReferenceIdStr = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceIdStr)
            self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
            self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
            self.executorOrgIds = try container.decodeIfPresent([String].self, forKey: .executorOrgIds)
            self.driverIds = try container.decodeIfPresent([String].self, forKey: .driverIds)
            self.directoryEntryIds = try container.decodeIfPresent([String].self, forKey: .directoryEntryIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.orderInput, forKey: .orderInput)
            try container.encodeIfPresent(self.offChrtReferenceIdStr, forKey: .offChrtReferenceIdStr)
            try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
            try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
            try container.encodeIfPresent(self.executorOrgIds, forKey: .executorOrgIds)
            try container.encodeIfPresent(self.driverIds, forKey: .driverIds)
            try container.encodeIfPresent(self.directoryEntryIds, forKey: .directoryEntryIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case name
            case description
            case orderInput = "order_input"
            case offChrtReferenceIdStr = "off_chrt_reference_id_str"
            case shipperOrgId = "shipper_org_id"
            case offChrtShipperOrgId = "off_chrt_shipper_org_id"
            case executorOrgIds = "executor_org_ids"
            case driverIds = "driver_ids"
            case directoryEntryIds = "directory_entry_ids"
        }
    }
}