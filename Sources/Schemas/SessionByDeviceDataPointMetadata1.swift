import Foundation

public struct SessionByDeviceDataPointMetadata1: Codable, Hashable, Sendable {
    public let outlier: Bool?
    public let outlierLabeller: OutlierLabellerEnum?
    public let pytest: Bool?
    public let sessionId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        outlier: Bool? = nil,
        outlierLabeller: OutlierLabellerEnum? = nil,
        pytest: Bool? = nil,
        sessionId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.outlier = outlier
        self.outlierLabeller = outlierLabeller
        self.pytest = pytest
        self.sessionId = sessionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.outlier = try container.decodeIfPresent(Bool.self, forKey: .outlier)
        self.outlierLabeller = try container.decodeIfPresent(OutlierLabellerEnum.self, forKey: .outlierLabeller)
        self.pytest = try container.decodeIfPresent(Bool.self, forKey: .pytest)
        self.sessionId = try container.decode(String.self, forKey: .sessionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.outlier, forKey: .outlier)
        try container.encodeIfPresent(self.outlierLabeller, forKey: .outlierLabeller)
        try container.encodeIfPresent(self.pytest, forKey: .pytest)
        try container.encode(self.sessionId, forKey: .sessionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case outlier
        case outlierLabeller = "outlier_labeller"
        case pytest
        case sessionId = "session_id"
    }
}