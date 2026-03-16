import Foundation

/// [GENERATED/CONFIG] Message header with addressing and creation timestamp.
public struct CargojsonMessageHeader: Codable, Hashable, Sendable {
    public let addressing: CargojsonAddressing
    public let creationDate: Date?
    public let edifactData: CargojsonEdifactData?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        addressing: CargojsonAddressing,
        creationDate: Date? = nil,
        edifactData: CargojsonEdifactData? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.addressing = addressing
        self.creationDate = creationDate
        self.edifactData = edifactData
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.addressing = try container.decode(CargojsonAddressing.self, forKey: .addressing)
        self.creationDate = try container.decodeIfPresent(Date.self, forKey: .creationDate)
        self.edifactData = try container.decodeIfPresent(CargojsonEdifactData.self, forKey: .edifactData)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.addressing, forKey: .addressing)
        try container.encodeIfPresent(self.creationDate, forKey: .creationDate)
        try container.encodeIfPresent(self.edifactData, forKey: .edifactData)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case addressing
        case creationDate
        case edifactData
    }
}