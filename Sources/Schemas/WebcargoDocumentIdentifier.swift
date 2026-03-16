import Foundation

public struct WebcargoDocumentIdentifier: Codable, Hashable, Sendable {
    public let documentType: String?
    public let documentId: String?
    public let externalBookingReferenceNumber: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documentType: String? = nil,
        documentId: String? = nil,
        externalBookingReferenceNumber: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documentType = documentType
        self.documentId = documentId
        self.externalBookingReferenceNumber = externalBookingReferenceNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documentType = try container.decodeIfPresent(String.self, forKey: .documentType)
        self.documentId = try container.decodeIfPresent(String.self, forKey: .documentId)
        self.externalBookingReferenceNumber = try container.decodeIfPresent(String.self, forKey: .externalBookingReferenceNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.documentType, forKey: .documentType)
        try container.encodeIfPresent(self.documentId, forKey: .documentId)
        try container.encodeIfPresent(self.externalBookingReferenceNumber, forKey: .externalBookingReferenceNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documentType = "document_type"
        case documentId = "document_id"
        case externalBookingReferenceNumber = "external_booking_reference_number"
    }
}