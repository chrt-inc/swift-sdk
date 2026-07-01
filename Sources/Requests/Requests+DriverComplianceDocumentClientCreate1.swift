import Foundation

extension Requests {
    public struct DriverComplianceDocumentClientCreate1: Codable, Hashable, Sendable {
        public let description: String?
        public let documentType: DriverComplianceDocumentTypeEnum1
        public let schemaVersion: Int
        public let validFrom: Date?
        public let validUntil: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            description: String? = nil,
            documentType: DriverComplianceDocumentTypeEnum1,
            schemaVersion: Int,
            validFrom: Date? = nil,
            validUntil: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.description = description
            self.documentType = documentType
            self.schemaVersion = schemaVersion
            self.validFrom = validFrom
            self.validUntil = validUntil
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.documentType = try container.decode(DriverComplianceDocumentTypeEnum1.self, forKey: .documentType)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.validFrom = try container.decodeIfPresent(Date.self, forKey: .validFrom)
            self.validUntil = try container.decodeIfPresent(Date.self, forKey: .validUntil)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.documentType, forKey: .documentType)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.validFrom, forKey: .validFrom)
            try container.encodeIfPresent(self.validUntil, forKey: .validUntil)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case description
            case documentType = "document_type"
            case schemaVersion = "schema_version"
            case validFrom = "valid_from"
            case validUntil = "valid_until"
        }
    }
}