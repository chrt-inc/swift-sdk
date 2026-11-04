import Foundation

public struct AlvysStopResponse1: Codable, Hashable, Sendable {
    public let address: AlvysAddressResponse1?
    public let appointmentDate: String?
    public let arrivedAt: String?
    public let companyName: String?
    public let coordinates: AlvysCoordinatesResponse1?
    public let departedAt: String?
    public let id: String?
    public let status: String?
    public let stopType: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: AlvysAddressResponse1? = nil,
        appointmentDate: String? = nil,
        arrivedAt: String? = nil,
        companyName: String? = nil,
        coordinates: AlvysCoordinatesResponse1? = nil,
        departedAt: String? = nil,
        id: String? = nil,
        status: String? = nil,
        stopType: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.appointmentDate = appointmentDate
        self.arrivedAt = arrivedAt
        self.companyName = companyName
        self.coordinates = coordinates
        self.departedAt = departedAt
        self.id = id
        self.status = status
        self.stopType = stopType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(AlvysAddressResponse1.self, forKey: .address)
        self.appointmentDate = try container.decodeIfPresent(String.self, forKey: .appointmentDate)
        self.arrivedAt = try container.decodeIfPresent(String.self, forKey: .arrivedAt)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.coordinates = try container.decodeIfPresent(AlvysCoordinatesResponse1.self, forKey: .coordinates)
        self.departedAt = try container.decodeIfPresent(String.self, forKey: .departedAt)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.status = try container.decodeIfPresent(String.self, forKey: .status)
        self.stopType = try container.decodeIfPresent(String.self, forKey: .stopType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.appointmentDate, forKey: .appointmentDate)
        try container.encodeIfPresent(self.arrivedAt, forKey: .arrivedAt)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.coordinates, forKey: .coordinates)
        try container.encodeIfPresent(self.departedAt, forKey: .departedAt)
        try container.encodeIfPresent(self.id, forKey: .id)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.stopType, forKey: .stopType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address = "Address"
        case appointmentDate = "AppointmentDate"
        case arrivedAt = "ArrivedAt"
        case companyName = "CompanyName"
        case coordinates = "Coordinates"
        case departedAt = "DepartedAt"
        case id = "Id"
        case status = "Status"
        case stopType = "StopType"
    }
}