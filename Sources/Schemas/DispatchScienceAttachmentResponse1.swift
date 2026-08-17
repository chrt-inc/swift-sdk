import Foundation

public struct DispatchScienceAttachmentResponse1: Codable, Hashable, Sendable {
    public let attachmentId: String?
    public let attachmentUrl: String?
    public let createdAt: String?
    public let fileName: String?
    public let includeWithInvoice: Bool?
    public let isUploaded: Bool?
    public let note: String?
    public let type: Int?
    public let visibleForDriver: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attachmentId: String? = nil,
        attachmentUrl: String? = nil,
        createdAt: String? = nil,
        fileName: String? = nil,
        includeWithInvoice: Bool? = nil,
        isUploaded: Bool? = nil,
        note: String? = nil,
        type: Int? = nil,
        visibleForDriver: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attachmentId = attachmentId
        self.attachmentUrl = attachmentUrl
        self.createdAt = createdAt
        self.fileName = fileName
        self.includeWithInvoice = includeWithInvoice
        self.isUploaded = isUploaded
        self.note = note
        self.type = type
        self.visibleForDriver = visibleForDriver
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attachmentId = try container.decodeIfPresent(String.self, forKey: .attachmentId)
        self.attachmentUrl = try container.decodeIfPresent(String.self, forKey: .attachmentUrl)
        self.createdAt = try container.decodeIfPresent(String.self, forKey: .createdAt)
        self.fileName = try container.decodeIfPresent(String.self, forKey: .fileName)
        self.includeWithInvoice = try container.decodeIfPresent(Bool.self, forKey: .includeWithInvoice)
        self.isUploaded = try container.decodeIfPresent(Bool.self, forKey: .isUploaded)
        self.note = try container.decodeIfPresent(String.self, forKey: .note)
        self.type = try container.decodeIfPresent(Int.self, forKey: .type)
        self.visibleForDriver = try container.decodeIfPresent(Bool.self, forKey: .visibleForDriver)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.attachmentId, forKey: .attachmentId)
        try container.encodeIfPresent(self.attachmentUrl, forKey: .attachmentUrl)
        try container.encodeIfPresent(self.createdAt, forKey: .createdAt)
        try container.encodeIfPresent(self.fileName, forKey: .fileName)
        try container.encodeIfPresent(self.includeWithInvoice, forKey: .includeWithInvoice)
        try container.encodeIfPresent(self.isUploaded, forKey: .isUploaded)
        try container.encodeIfPresent(self.note, forKey: .note)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.visibleForDriver, forKey: .visibleForDriver)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attachmentId
        case attachmentUrl
        case createdAt
        case fileName
        case includeWithInvoice
        case isUploaded
        case note
        case type
        case visibleForDriver
    }
}