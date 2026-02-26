import Foundation

public struct SessionByDeviceDataPointMetadata1: Codable, Hashable, Sendable {
    public let sessionId: String
    public let outlier: Bool?
    public let outlierLabeller: OutlierLabellerEnum?
    public let pytest: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sessionId: String,
        outlier: Bool? = nil,
        outlierLabeller: OutlierLabellerEnum? = nil,
        pytest: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sessionId = sessionId
        self.outlier = outlier
        self.outlierLabeller = outlierLabeller
        self.pytest = pytest
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sessionId = try container.decode(String.self, forKey: .sessionId)
        self.outlier = try container.decodeIfPresent(Bool.self, forKey: .outlier)
        self.outlierLabeller = try container.decodeIfPresent(OutlierLabellerEnum.self, forKey: .outlierLabeller)
        self.pytest = try container.decodeIfPresent(Bool.self, forKey: .pytest)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sessionId, forKey: .sessionId)
        try container.encodeIfPresent(self.outlier, forKey: .outlier)
        try container.encodeIfPresent(self.outlierLabeller, forKey: .outlierLabeller)
        try container.encodeIfPresent(self.pytest, forKey: .pytest)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sessionId = "session_id"
        case outlier
        case outlierLabeller = "outlier_labeller"
        case pytest
    }
}