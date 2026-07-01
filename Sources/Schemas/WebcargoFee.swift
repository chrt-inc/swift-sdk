import Foundation

public struct WebcargoFee: Codable, Hashable, Sendable {
    public let currency: String?
    public let feeCategory: String?
    public let feeCode: String?
    public let feeComment: String?
    public let feeLocationType: String?
    public let feeName: String?
    public let feeType: String?
    public let inclusive: String?
    public let quantity: String?
    public let rate: String?
    public let unitRate: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currency: String? = nil,
        feeCategory: String? = nil,
        feeCode: String? = nil,
        feeComment: String? = nil,
        feeLocationType: String? = nil,
        feeName: String? = nil,
        feeType: String? = nil,
        inclusive: String? = nil,
        quantity: String? = nil,
        rate: String? = nil,
        unitRate: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currency = currency
        self.feeCategory = feeCategory
        self.feeCode = feeCode
        self.feeComment = feeComment
        self.feeLocationType = feeLocationType
        self.feeName = feeName
        self.feeType = feeType
        self.inclusive = inclusive
        self.quantity = quantity
        self.rate = rate
        self.unitRate = unitRate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
        self.feeCategory = try container.decodeIfPresent(String.self, forKey: .feeCategory)
        self.feeCode = try container.decodeIfPresent(String.self, forKey: .feeCode)
        self.feeComment = try container.decodeIfPresent(String.self, forKey: .feeComment)
        self.feeLocationType = try container.decodeIfPresent(String.self, forKey: .feeLocationType)
        self.feeName = try container.decodeIfPresent(String.self, forKey: .feeName)
        self.feeType = try container.decodeIfPresent(String.self, forKey: .feeType)
        self.inclusive = try container.decodeIfPresent(String.self, forKey: .inclusive)
        self.quantity = try container.decodeIfPresent(String.self, forKey: .quantity)
        self.rate = try container.decodeIfPresent(String.self, forKey: .rate)
        self.unitRate = try container.decodeIfPresent(String.self, forKey: .unitRate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.currency, forKey: .currency)
        try container.encodeIfPresent(self.feeCategory, forKey: .feeCategory)
        try container.encodeIfPresent(self.feeCode, forKey: .feeCode)
        try container.encodeIfPresent(self.feeComment, forKey: .feeComment)
        try container.encodeIfPresent(self.feeLocationType, forKey: .feeLocationType)
        try container.encodeIfPresent(self.feeName, forKey: .feeName)
        try container.encodeIfPresent(self.feeType, forKey: .feeType)
        try container.encodeIfPresent(self.inclusive, forKey: .inclusive)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.rate, forKey: .rate)
        try container.encodeIfPresent(self.unitRate, forKey: .unitRate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case feeCategory = "fee_category"
        case feeCode = "fee_code"
        case feeComment = "fee_comment"
        case feeLocationType = "fee_location_type"
        case feeName = "fee_name"
        case feeType = "fee_type"
        case inclusive
        case quantity
        case rate
        case unitRate = "unit_rate"
    }
}