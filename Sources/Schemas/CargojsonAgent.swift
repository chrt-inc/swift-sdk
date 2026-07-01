import Foundation

/// [WEBCARGO/CONFIG] Forwarder's IATA agent identification.
/// Same identity as `iata` in WebcargoEmbedViewParams and OY party in bookingRecord XML.
public struct CargojsonAgent: Codable, Hashable, Sendable {
    public let accountNumber: String?
    public let iataCargoAgentCassAddress: String?
    public let iataCargoAgentNumericCode: String?
    public let name: String
    public let participantIdentifier: CargojsonParticipantIdentifier?
    public let place: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountNumber: String? = nil,
        iataCargoAgentCassAddress: String? = nil,
        iataCargoAgentNumericCode: String? = nil,
        name: String,
        participantIdentifier: CargojsonParticipantIdentifier? = nil,
        place: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountNumber = accountNumber
        self.iataCargoAgentCassAddress = iataCargoAgentCassAddress
        self.iataCargoAgentNumericCode = iataCargoAgentNumericCode
        self.name = name
        self.participantIdentifier = participantIdentifier
        self.place = place
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountNumber = try container.decodeIfPresent(String.self, forKey: .accountNumber)
        self.iataCargoAgentCassAddress = try container.decodeIfPresent(String.self, forKey: .iataCargoAgentCassAddress)
        self.iataCargoAgentNumericCode = try container.decodeIfPresent(String.self, forKey: .iataCargoAgentNumericCode)
        self.name = try container.decode(String.self, forKey: .name)
        self.participantIdentifier = try container.decodeIfPresent(CargojsonParticipantIdentifier.self, forKey: .participantIdentifier)
        self.place = try container.decode(String.self, forKey: .place)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountNumber, forKey: .accountNumber)
        try container.encodeIfPresent(self.iataCargoAgentCassAddress, forKey: .iataCargoAgentCassAddress)
        try container.encodeIfPresent(self.iataCargoAgentNumericCode, forKey: .iataCargoAgentNumericCode)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.participantIdentifier, forKey: .participantIdentifier)
        try container.encode(self.place, forKey: .place)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountNumber
        case iataCargoAgentCassAddress = "iataCargoAgentCASSAddress"
        case iataCargoAgentNumericCode
        case name
        case participantIdentifier
        case place
    }
}