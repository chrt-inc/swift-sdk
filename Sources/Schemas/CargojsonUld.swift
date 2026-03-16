import Foundation

/// [CUSTOMER] Unit Load Device (ULD) container details.
public struct CargojsonUld: Codable, Hashable, Sendable {
    public let type: String
    public let serialNumber: String
    public let ownerCode: String
    public let loadingIndicator: String?
    public let remarks: String?
    public let weightOfUldContents: CargojsonWeight?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: String,
        serialNumber: String,
        ownerCode: String,
        loadingIndicator: String? = nil,
        remarks: String? = nil,
        weightOfUldContents: CargojsonWeight? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.serialNumber = serialNumber
        self.ownerCode = ownerCode
        self.loadingIndicator = loadingIndicator
        self.remarks = remarks
        self.weightOfUldContents = weightOfUldContents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(String.self, forKey: .type)
        self.serialNumber = try container.decode(String.self, forKey: .serialNumber)
        self.ownerCode = try container.decode(String.self, forKey: .ownerCode)
        self.loadingIndicator = try container.decodeIfPresent(String.self, forKey: .loadingIndicator)
        self.remarks = try container.decodeIfPresent(String.self, forKey: .remarks)
        self.weightOfUldContents = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weightOfUldContents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.serialNumber, forKey: .serialNumber)
        try container.encode(self.ownerCode, forKey: .ownerCode)
        try container.encodeIfPresent(self.loadingIndicator, forKey: .loadingIndicator)
        try container.encodeIfPresent(self.remarks, forKey: .remarks)
        try container.encodeIfPresent(self.weightOfUldContents, forKey: .weightOfUldContents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case serialNumber
        case ownerCode
        case loadingIndicator
        case remarks
        case weightOfUldContents = "weightOfULDContents"
    }
}