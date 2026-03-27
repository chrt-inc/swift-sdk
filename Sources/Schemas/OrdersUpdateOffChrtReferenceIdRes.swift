import Foundation

public struct OrdersUpdateOffChrtReferenceIdRes: Codable, Hashable, Sendable {
    public let offChrtReferenceId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        offChrtReferenceId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.offChrtReferenceId = offChrtReferenceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case offChrtReferenceId = "off_chrt_reference_id"
    }
}