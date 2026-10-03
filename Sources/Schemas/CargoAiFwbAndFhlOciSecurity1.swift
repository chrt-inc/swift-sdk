import Foundation

public struct CargoAiFwbAndFhlOciSecurity1: Codable, Hashable, Sendable {
    public let exemptionCode: String?
    public let expiryDate: String?
    public let issuerType: CargoAiFwbAndFhlOciSecurity1IssuerType
    public let regulatedAgent: String
    public let screenerName: String?
    public let screeningDatetime: String?
    public let screeningMethods: [String]?
    public let securityStatus: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        exemptionCode: String? = nil,
        expiryDate: String? = nil,
        issuerType: CargoAiFwbAndFhlOciSecurity1IssuerType,
        regulatedAgent: String,
        screenerName: String? = nil,
        screeningDatetime: String? = nil,
        screeningMethods: [String]? = nil,
        securityStatus: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.exemptionCode = exemptionCode
        self.expiryDate = expiryDate
        self.issuerType = issuerType
        self.regulatedAgent = regulatedAgent
        self.screenerName = screenerName
        self.screeningDatetime = screeningDatetime
        self.screeningMethods = screeningMethods
        self.securityStatus = securityStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.exemptionCode = try container.decodeIfPresent(String.self, forKey: .exemptionCode)
        self.expiryDate = try container.decodeIfPresent(String.self, forKey: .expiryDate)
        self.issuerType = try container.decode(CargoAiFwbAndFhlOciSecurity1IssuerType.self, forKey: .issuerType)
        self.regulatedAgent = try container.decode(String.self, forKey: .regulatedAgent)
        self.screenerName = try container.decodeIfPresent(String.self, forKey: .screenerName)
        self.screeningDatetime = try container.decodeIfPresent(String.self, forKey: .screeningDatetime)
        self.screeningMethods = try container.decodeIfPresent([String].self, forKey: .screeningMethods)
        self.securityStatus = try container.decode(String.self, forKey: .securityStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.exemptionCode, forKey: .exemptionCode)
        try container.encodeIfPresent(self.expiryDate, forKey: .expiryDate)
        try container.encode(self.issuerType, forKey: .issuerType)
        try container.encode(self.regulatedAgent, forKey: .regulatedAgent)
        try container.encodeIfPresent(self.screenerName, forKey: .screenerName)
        try container.encodeIfPresent(self.screeningDatetime, forKey: .screeningDatetime)
        try container.encodeIfPresent(self.screeningMethods, forKey: .screeningMethods)
        try container.encode(self.securityStatus, forKey: .securityStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case exemptionCode = "exemption_code"
        case expiryDate = "expiry_date"
        case issuerType = "issuer_type"
        case regulatedAgent = "regulated_agent"
        case screenerName = "screener_name"
        case screeningDatetime = "screening_datetime"
        case screeningMethods = "screening_methods"
        case securityStatus = "security_status"
    }
}