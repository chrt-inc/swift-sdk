import Foundation

/// [CUSTOMER] Unit Load Device (ULD) container details.
public struct CargojsonUld: Codable, Hashable, Sendable {
    public let loadingIndicator: String?
    public let ownerCode: String
    public let remarks: String?
    public let serialNumber: String
    public let type: String
    public let weightOfUldContents: CargojsonWeight?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        loadingIndicator: String? = nil,
        ownerCode: String,
        remarks: String? = nil,
        serialNumber: String,
        type: String,
        weightOfUldContents: CargojsonWeight? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.loadingIndicator = loadingIndicator
        self.ownerCode = ownerCode
        self.remarks = remarks
        self.serialNumber = serialNumber
        self.type = type
        self.weightOfUldContents = weightOfUldContents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.loadingIndicator = try container.decodeIfPresent(String.self, forKey: .loadingIndicator)
        self.ownerCode = try container.decode(String.self, forKey: .ownerCode)
        self.remarks = try container.decodeIfPresent(String.self, forKey: .remarks)
        self.serialNumber = try container.decode(String.self, forKey: .serialNumber)
        self.type = try container.decode(String.self, forKey: .type)
        self.weightOfUldContents = try container.decodeIfPresent(CargojsonWeight.self, forKey: .weightOfUldContents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.loadingIndicator, forKey: .loadingIndicator)
        try container.encode(self.ownerCode, forKey: .ownerCode)
        try container.encodeIfPresent(self.remarks, forKey: .remarks)
        try container.encode(self.serialNumber, forKey: .serialNumber)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.weightOfUldContents, forKey: .weightOfUldContents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case loadingIndicator
        case ownerCode
        case remarks
        case serialNumber
        case type
        case weightOfUldContents = "weightOfULDContents"
    }
}