import Foundation

public struct AirWaybillStockNumbersSummaryRes: Codable, Hashable, Sendable {
    public let availableCount: Int
    public let awbPrefix: String
    public let reservedCount: Int
    public let usedCount: Int
    public let voidCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        availableCount: Int,
        awbPrefix: String,
        reservedCount: Int,
        usedCount: Int,
        voidCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.availableCount = availableCount
        self.awbPrefix = awbPrefix
        self.reservedCount = reservedCount
        self.usedCount = usedCount
        self.voidCount = voidCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.availableCount = try container.decode(Int.self, forKey: .availableCount)
        self.awbPrefix = try container.decode(String.self, forKey: .awbPrefix)
        self.reservedCount = try container.decode(Int.self, forKey: .reservedCount)
        self.usedCount = try container.decode(Int.self, forKey: .usedCount)
        self.voidCount = try container.decode(Int.self, forKey: .voidCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.availableCount, forKey: .availableCount)
        try container.encode(self.awbPrefix, forKey: .awbPrefix)
        try container.encode(self.reservedCount, forKey: .reservedCount)
        try container.encode(self.usedCount, forKey: .usedCount)
        try container.encode(self.voidCount, forKey: .voidCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case availableCount = "available_count"
        case awbPrefix = "awb_prefix"
        case reservedCount = "reserved_count"
        case usedCount = "used_count"
        case voidCount = "void_count"
    }
}