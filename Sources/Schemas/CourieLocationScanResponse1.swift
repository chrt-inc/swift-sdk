import Foundation

public struct CourieLocationScanResponse1: Codable, Hashable, Sendable {
    public let code: String?
    public let scannedAt: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String? = nil,
        scannedAt: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.scannedAt = scannedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.scannedAt = try container.decodeIfPresent(Int.self, forKey: .scannedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encodeIfPresent(self.scannedAt, forKey: .scannedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case scannedAt
    }
}