import Foundation

public struct DeviceExpandedRes: Codable, Hashable, Sendable {
    public let activeCargo: Cargo1?
    public let activeSession: Session1?
    public let device: DeviceLimitedForList1
    public let pastCargos: [Cargo1]?
    public let pastSessions: [Session1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        activeCargo: Cargo1? = nil,
        activeSession: Session1? = nil,
        device: DeviceLimitedForList1,
        pastCargos: [Cargo1]? = nil,
        pastSessions: [Session1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.activeCargo = activeCargo
        self.activeSession = activeSession
        self.device = device
        self.pastCargos = pastCargos
        self.pastSessions = pastSessions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.activeCargo = try container.decodeIfPresent(Cargo1.self, forKey: .activeCargo)
        self.activeSession = try container.decodeIfPresent(Session1.self, forKey: .activeSession)
        self.device = try container.decode(DeviceLimitedForList1.self, forKey: .device)
        self.pastCargos = try container.decodeIfPresent([Cargo1].self, forKey: .pastCargos)
        self.pastSessions = try container.decodeIfPresent([Session1].self, forKey: .pastSessions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.activeCargo, forKey: .activeCargo)
        try container.encodeIfPresent(self.activeSession, forKey: .activeSession)
        try container.encode(self.device, forKey: .device)
        try container.encodeIfPresent(self.pastCargos, forKey: .pastCargos)
        try container.encodeIfPresent(self.pastSessions, forKey: .pastSessions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case activeCargo = "active_cargo"
        case activeSession = "active_session"
        case device
        case pastCargos = "past_cargos"
        case pastSessions = "past_sessions"
    }
}