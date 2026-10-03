import Foundation

/// The OCI consignment security declaration (e-CSD).
public struct CargoOnFlightAirWaybillConsignmentSecurityDeclaration1: Codable, Hashable, Sendable {
    public let countryCode: String
    public let expiryMmyy: String?
    public let regulatedEntityCategory: CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1
    public let regulatedEntityIdentifier: String
    public let screenedAtTimestamp: Date?
    public let screenerName: String?
    public let screeningExemption: CargoOnFlightAirWaybillScreeningExemptionEnum1?
    public let screeningMethods: [CargoOnFlightAirWaybillScreeningMethodEnum1]?
    public let securityStatus: CargoOnFlightAirWaybillSecurityStatusEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        expiryMmyy: String? = nil,
        regulatedEntityCategory: CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1,
        regulatedEntityIdentifier: String,
        screenedAtTimestamp: Date? = nil,
        screenerName: String? = nil,
        screeningExemption: CargoOnFlightAirWaybillScreeningExemptionEnum1? = nil,
        screeningMethods: [CargoOnFlightAirWaybillScreeningMethodEnum1]? = nil,
        securityStatus: CargoOnFlightAirWaybillSecurityStatusEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.expiryMmyy = expiryMmyy
        self.regulatedEntityCategory = regulatedEntityCategory
        self.regulatedEntityIdentifier = regulatedEntityIdentifier
        self.screenedAtTimestamp = screenedAtTimestamp
        self.screenerName = screenerName
        self.screeningExemption = screeningExemption
        self.screeningMethods = screeningMethods
        self.securityStatus = securityStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.expiryMmyy = try container.decodeIfPresent(String.self, forKey: .expiryMmyy)
        self.regulatedEntityCategory = try container.decode(CargoOnFlightAirWaybillRegulatedEntityCategoryEnum1.self, forKey: .regulatedEntityCategory)
        self.regulatedEntityIdentifier = try container.decode(String.self, forKey: .regulatedEntityIdentifier)
        self.screenedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .screenedAtTimestamp)
        self.screenerName = try container.decodeIfPresent(String.self, forKey: .screenerName)
        self.screeningExemption = try container.decodeIfPresent(CargoOnFlightAirWaybillScreeningExemptionEnum1.self, forKey: .screeningExemption)
        self.screeningMethods = try container.decodeIfPresent([CargoOnFlightAirWaybillScreeningMethodEnum1].self, forKey: .screeningMethods)
        self.securityStatus = try container.decode(CargoOnFlightAirWaybillSecurityStatusEnum1.self, forKey: .securityStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.expiryMmyy, forKey: .expiryMmyy)
        try container.encode(self.regulatedEntityCategory, forKey: .regulatedEntityCategory)
        try container.encode(self.regulatedEntityIdentifier, forKey: .regulatedEntityIdentifier)
        try container.encodeIfPresent(self.screenedAtTimestamp, forKey: .screenedAtTimestamp)
        try container.encodeIfPresent(self.screenerName, forKey: .screenerName)
        try container.encodeIfPresent(self.screeningExemption, forKey: .screeningExemption)
        try container.encodeIfPresent(self.screeningMethods, forKey: .screeningMethods)
        try container.encode(self.securityStatus, forKey: .securityStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode = "country_code"
        case expiryMmyy = "expiry_mmyy"
        case regulatedEntityCategory = "regulated_entity_category"
        case regulatedEntityIdentifier = "regulated_entity_identifier"
        case screenedAtTimestamp = "screened_at_timestamp"
        case screenerName = "screener_name"
        case screeningExemption = "screening_exemption"
        case screeningMethods = "screening_methods"
        case securityStatus = "security_status"
    }
}