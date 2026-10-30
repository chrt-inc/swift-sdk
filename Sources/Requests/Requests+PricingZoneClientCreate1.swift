import Foundation

extension Requests {
    public struct PricingZoneClientCreate1: Codable, Hashable, Sendable {
        public let mapArea: PricingZoneClientCreate1MapArea?
        public let name: String
        public let postalCodeCountryCode: String?
        public let postalCodes: [String]?
        public let schemaVersion: Int
        public let shipperAccountIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            mapArea: PricingZoneClientCreate1MapArea? = nil,
            name: String,
            postalCodeCountryCode: String? = nil,
            postalCodes: [String]? = nil,
            schemaVersion: Int,
            shipperAccountIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.mapArea = mapArea
            self.name = name
            self.postalCodeCountryCode = postalCodeCountryCode
            self.postalCodes = postalCodes
            self.schemaVersion = schemaVersion
            self.shipperAccountIds = shipperAccountIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.mapArea = try container.decodeIfPresent(PricingZoneClientCreate1MapArea.self, forKey: .mapArea)
            self.name = try container.decode(String.self, forKey: .name)
            self.postalCodeCountryCode = try container.decodeIfPresent(String.self, forKey: .postalCodeCountryCode)
            self.postalCodes = try container.decodeIfPresent([String].self, forKey: .postalCodes)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipperAccountIds = try container.decodeIfPresent([String].self, forKey: .shipperAccountIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.mapArea, forKey: .mapArea)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.postalCodeCountryCode, forKey: .postalCodeCountryCode)
            try container.encodeIfPresent(self.postalCodes, forKey: .postalCodes)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shipperAccountIds, forKey: .shipperAccountIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case mapArea = "map_area"
            case name
            case postalCodeCountryCode = "postal_code_country_code"
            case postalCodes = "postal_codes"
            case schemaVersion = "schema_version"
            case shipperAccountIds = "shipper_account_ids"
        }
    }
}