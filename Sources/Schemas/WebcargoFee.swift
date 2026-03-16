import Foundation

public struct WebcargoFee: Codable, Hashable, Sendable {
    public let currency: String?
    public let feeLocationType: String?
    public let feeType: String?
    public let feeCode: String?
    public let feeCategory: String?
    public let feeName: String?
    public let feeComment: String?
    public let inclusive: String?
    public let quantity: String?
    public let unitRate: String?
    public let rate: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currency: String? = nil,
        feeLocationType: String? = nil,
        feeType: String? = nil,
        feeCode: String? = nil,
        feeCategory: String? = nil,
        feeName: String? = nil,
        feeComment: String? = nil,
        inclusive: String? = nil,
        quantity: String? = nil,
        unitRate: String? = nil,
        rate: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currency = currency
        self.feeLocationType = feeLocationType
        self.feeType = feeType
        self.feeCode = feeCode
        self.feeCategory = feeCategory
        self.feeName = feeName
        self.feeComment = feeComment
        self.inclusive = inclusive
        self.quantity = quantity
        self.unitRate = unitRate
        self.rate = rate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
        self.feeLocationType = try container.decodeIfPresent(String.self, forKey: .feeLocationType)
        self.feeType = try container.decodeIfPresent(String.self, forKey: .feeType)
        self.feeCode = try container.decodeIfPresent(String.self, forKey: .feeCode)
        self.feeCategory = try container.decodeIfPresent(String.self, forKey: .feeCategory)
        self.feeName = try container.decodeIfPresent(String.self, forKey: .feeName)
        self.feeComment = try container.decodeIfPresent(String.self, forKey: .feeComment)
        self.inclusive = try container.decodeIfPresent(String.self, forKey: .inclusive)
        self.quantity = try container.decodeIfPresent(String.self, forKey: .quantity)
        self.unitRate = try container.decodeIfPresent(String.self, forKey: .unitRate)
        self.rate = try container.decodeIfPresent(String.self, forKey: .rate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.currency, forKey: .currency)
        try container.encodeIfPresent(self.feeLocationType, forKey: .feeLocationType)
        try container.encodeIfPresent(self.feeType, forKey: .feeType)
        try container.encodeIfPresent(self.feeCode, forKey: .feeCode)
        try container.encodeIfPresent(self.feeCategory, forKey: .feeCategory)
        try container.encodeIfPresent(self.feeName, forKey: .feeName)
        try container.encodeIfPresent(self.feeComment, forKey: .feeComment)
        try container.encodeIfPresent(self.inclusive, forKey: .inclusive)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.unitRate, forKey: .unitRate)
        try container.encodeIfPresent(self.rate, forKey: .rate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case feeLocationType = "fee_location_type"
        case feeType = "fee_type"
        case feeCode = "fee_code"
        case feeCategory = "fee_category"
        case feeName = "fee_name"
        case feeComment = "fee_comment"
        case inclusive
        case quantity
        case unitRate = "unit_rate"
        case rate
    }
}