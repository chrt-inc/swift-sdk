import Foundation

extension Requests {
    public struct PricingZoneClientUpdate1: Codable, Hashable, Sendable {
        public let mapArea: PricingZoneClientUpdate1MapArea?
        public let mapAreaSetToNone: Bool?
        public let name: String?
        public let postalCodeCountryCode: String?
        public let postalCodeCountryCodeSetToNone: Bool?
        public let postalCodes: [String]?
        public let shipperAccountIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            mapArea: PricingZoneClientUpdate1MapArea? = nil,
            mapAreaSetToNone: Bool? = nil,
            name: String? = nil,
            postalCodeCountryCode: String? = nil,
            postalCodeCountryCodeSetToNone: Bool? = nil,
            postalCodes: [String]? = nil,
            shipperAccountIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.mapArea = mapArea
            self.mapAreaSetToNone = mapAreaSetToNone
            self.name = name
            self.postalCodeCountryCode = postalCodeCountryCode
            self.postalCodeCountryCodeSetToNone = postalCodeCountryCodeSetToNone
            self.postalCodes = postalCodes
            self.shipperAccountIds = shipperAccountIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.mapArea = try container.decodeIfPresent(PricingZoneClientUpdate1MapArea.self, forKey: .mapArea)
            self.mapAreaSetToNone = try container.decodeIfPresent(Bool.self, forKey: .mapAreaSetToNone)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.postalCodeCountryCode = try container.decodeIfPresent(String.self, forKey: .postalCodeCountryCode)
            self.postalCodeCountryCodeSetToNone = try container.decodeIfPresent(Bool.self, forKey: .postalCodeCountryCodeSetToNone)
            self.postalCodes = try container.decodeIfPresent([String].self, forKey: .postalCodes)
            self.shipperAccountIds = try container.decodeIfPresent([String].self, forKey: .shipperAccountIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.mapArea, forKey: .mapArea)
            try container.encodeIfPresent(self.mapAreaSetToNone, forKey: .mapAreaSetToNone)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.postalCodeCountryCode, forKey: .postalCodeCountryCode)
            try container.encodeIfPresent(self.postalCodeCountryCodeSetToNone, forKey: .postalCodeCountryCodeSetToNone)
            try container.encodeIfPresent(self.postalCodes, forKey: .postalCodes)
            try container.encodeIfPresent(self.shipperAccountIds, forKey: .shipperAccountIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case mapArea = "map_area"
            case mapAreaSetToNone = "map_area__set_to_None"
            case name
            case postalCodeCountryCode = "postal_code_country_code"
            case postalCodeCountryCodeSetToNone = "postal_code_country_code__set_to_None"
            case postalCodes = "postal_codes"
            case shipperAccountIds = "shipper_account_ids"
        }
    }
}