import Foundation

public struct TrackingSessionByDeviceDataPointMetadata1: Codable, Hashable, Sendable {
    public let sessionId: String
    public let outlier: Nullable<Bool>?
    public let outlierLabeller: Nullable<OutlierLabellerEnum>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sessionId: String,
        outlier: Nullable<Bool>? = nil,
        outlierLabeller: Nullable<OutlierLabellerEnum>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sessionId = sessionId
        self.outlier = outlier
        self.outlierLabeller = outlierLabeller
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sessionId = try container.decode(String.self, forKey: .sessionId)
        self.outlier = try container.decodeNullableIfPresent(Bool.self, forKey: .outlier)
        self.outlierLabeller = try container.decodeNullableIfPresent(OutlierLabellerEnum.self, forKey: .outlierLabeller)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sessionId, forKey: .sessionId)
        try container.encodeNullableIfPresent(self.outlier, forKey: .outlier)
        try container.encodeNullableIfPresent(self.outlierLabeller, forKey: .outlierLabeller)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sessionId = "session_id"
        case outlier
        case outlierLabeller = "outlier_labeller"
    }
}