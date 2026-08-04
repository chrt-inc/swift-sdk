import Foundation

extension Requests {
    public struct OrderTemplateNewTaskClientCreate1: Codable, Hashable, Sendable {
        public let action: Action?
        public let cargoKeys: [String]?
        public let contactIds: [String]?
        public let coordinatorShipperAccountIds: [String]?
        public let datetimeWindowsDateparserStr: [OrderTemplateNewDateTimeWindow1]?
        public let geofenceDistanceMiles: Double?
        public let location: LocationFeature?
        public let orderPlacerComments: String?
        public let schemaVersion: Int?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            action: Action? = nil,
            cargoKeys: [String]? = nil,
            contactIds: [String]? = nil,
            coordinatorShipperAccountIds: [String]? = nil,
            datetimeWindowsDateparserStr: [OrderTemplateNewDateTimeWindow1]? = nil,
            geofenceDistanceMiles: Double? = nil,
            location: LocationFeature? = nil,
            orderPlacerComments: String? = nil,
            schemaVersion: Int? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.action = action
            self.cargoKeys = cargoKeys
            self.contactIds = contactIds
            self.coordinatorShipperAccountIds = coordinatorShipperAccountIds
            self.datetimeWindowsDateparserStr = datetimeWindowsDateparserStr
            self.geofenceDistanceMiles = geofenceDistanceMiles
            self.location = location
            self.orderPlacerComments = orderPlacerComments
            self.schemaVersion = schemaVersion
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.action = try container.decodeIfPresent(Action.self, forKey: .action)
            self.cargoKeys = try container.decodeIfPresent([String].self, forKey: .cargoKeys)
            self.contactIds = try container.decodeIfPresent([String].self, forKey: .contactIds)
            self.coordinatorShipperAccountIds = try container.decodeIfPresent([String].self, forKey: .coordinatorShipperAccountIds)
            self.datetimeWindowsDateparserStr = try container.decodeIfPresent([OrderTemplateNewDateTimeWindow1].self, forKey: .datetimeWindowsDateparserStr)
            self.geofenceDistanceMiles = try container.decodeIfPresent(Double.self, forKey: .geofenceDistanceMiles)
            self.location = try container.decodeIfPresent(LocationFeature.self, forKey: .location)
            self.orderPlacerComments = try container.decodeIfPresent(String.self, forKey: .orderPlacerComments)
            self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.action, forKey: .action)
            try container.encodeIfPresent(self.cargoKeys, forKey: .cargoKeys)
            try container.encodeIfPresent(self.contactIds, forKey: .contactIds)
            try container.encodeIfPresent(self.coordinatorShipperAccountIds, forKey: .coordinatorShipperAccountIds)
            try container.encodeIfPresent(self.datetimeWindowsDateparserStr, forKey: .datetimeWindowsDateparserStr)
            try container.encodeIfPresent(self.geofenceDistanceMiles, forKey: .geofenceDistanceMiles)
            try container.encodeIfPresent(self.location, forKey: .location)
            try container.encodeIfPresent(self.orderPlacerComments, forKey: .orderPlacerComments)
            try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case action
            case cargoKeys = "cargo_keys"
            case contactIds = "contact_ids"
            case coordinatorShipperAccountIds = "coordinator_shipper_account_ids"
            case datetimeWindowsDateparserStr = "datetime_windows_dateparser_str"
            case geofenceDistanceMiles = "geofence_distance_miles"
            case location
            case orderPlacerComments = "order_placer_comments"
            case schemaVersion = "schema_version"
        }
    }
}