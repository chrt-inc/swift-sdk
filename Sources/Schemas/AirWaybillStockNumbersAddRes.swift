import Foundation

public struct AirWaybillStockNumbersAddRes: Codable, Hashable, Sendable {
    public let added: [AirWaybillStockNumber1]
    public let alreadyInStockAwbNumbers: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        added: [AirWaybillStockNumber1],
        alreadyInStockAwbNumbers: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.added = added
        self.alreadyInStockAwbNumbers = alreadyInStockAwbNumbers
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.added = try container.decode([AirWaybillStockNumber1].self, forKey: .added)
        self.alreadyInStockAwbNumbers = try container.decode([String].self, forKey: .alreadyInStockAwbNumbers)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.added, forKey: .added)
        try container.encode(self.alreadyInStockAwbNumbers, forKey: .alreadyInStockAwbNumbers)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case added
        case alreadyInStockAwbNumbers = "already_in_stock_awb_numbers"
    }
}