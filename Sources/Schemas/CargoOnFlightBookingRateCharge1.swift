import Foundation

/// One charge in a rate's breakdown, priced per `basis` unit in the rate's currency.
public struct CargoOnFlightBookingRateCharge1: Codable, Hashable, Sendable {
    public let basis: String
    public let code: String?
    public let label: String
    public let maximumAmount: Double?
    public let minimumAmount: Double?
    public let rate: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        basis: String,
        code: String? = nil,
        label: String,
        maximumAmount: Double? = nil,
        minimumAmount: Double? = nil,
        rate: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.basis = basis
        self.code = code
        self.label = label
        self.maximumAmount = maximumAmount
        self.minimumAmount = minimumAmount
        self.rate = rate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.basis = try container.decode(String.self, forKey: .basis)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.label = try container.decode(String.self, forKey: .label)
        self.maximumAmount = try container.decodeIfPresent(Double.self, forKey: .maximumAmount)
        self.minimumAmount = try container.decodeIfPresent(Double.self, forKey: .minimumAmount)
        self.rate = try container.decode(Double.self, forKey: .rate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.basis, forKey: .basis)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encode(self.label, forKey: .label)
        try container.encodeIfPresent(self.maximumAmount, forKey: .maximumAmount)
        try container.encodeIfPresent(self.minimumAmount, forKey: .minimumAmount)
        try container.encode(self.rate, forKey: .rate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case basis
        case code
        case label
        case maximumAmount = "maximum_amount"
        case minimumAmount = "minimum_amount"
        case rate
    }
}