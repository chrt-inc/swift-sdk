import Foundation

public struct FileDownloadErrorRes: Codable, Hashable, Sendable {
    /// Stable code for client behavior; do not parse detail.
    public let code: Code
    /// Factual description of the file or scan condition.
    public let detail: String
    /// Whether another download attempt may help without operator intervention.
    public let retryable: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: Code,
        detail: String,
        retryable: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.detail = detail
        self.retryable = retryable
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(Code.self, forKey: .code)
        self.detail = try container.decode(String.self, forKey: .detail)
        self.retryable = try container.decode(Bool.self, forKey: .retryable)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.retryable, forKey: .retryable)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case detail
        case retryable
    }
}