import Foundation

public struct CargoOnFlightHouseAirWaybill1: Codable, Hashable, Sendable {
    public let id: String
    public let cargoOnFlightAirWaybillId: String
    public let cargoOnFlightBookingId: String
    public let chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String?
    public let destinationIata: String
    public let grossWeightKilograms: Double
    public let houseAirWaybillNumber: String
    public let latestFhlMessage: CargoOnFlightHouseAirWaybillFhlMessage1?
    public let manifestDescriptionOfGoods: String
    public let numberOfPieces: Int
    public let originIata: String
    public let schemaVersion: Int
    public let slac: Int?
    public let taskGroupId: String
    public let updatedAtTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        cargoOnFlightAirWaybillId: String,
        cargoOnFlightBookingId: String,
        chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1? = nil,
        createdAtTimestamp: Date,
        createdByOrgId: String,
        createdByUserId: String? = nil,
        destinationIata: String,
        grossWeightKilograms: Double,
        houseAirWaybillNumber: String,
        latestFhlMessage: CargoOnFlightHouseAirWaybillFhlMessage1? = nil,
        manifestDescriptionOfGoods: String,
        numberOfPieces: Int,
        originIata: String,
        schemaVersion: Int,
        slac: Int? = nil,
        taskGroupId: String,
        updatedAtTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.cargoOnFlightAirWaybillId = cargoOnFlightAirWaybillId
        self.cargoOnFlightBookingId = cargoOnFlightBookingId
        self.chargesDeclaration = chargesDeclaration
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.destinationIata = destinationIata
        self.grossWeightKilograms = grossWeightKilograms
        self.houseAirWaybillNumber = houseAirWaybillNumber
        self.latestFhlMessage = latestFhlMessage
        self.manifestDescriptionOfGoods = manifestDescriptionOfGoods
        self.numberOfPieces = numberOfPieces
        self.originIata = originIata
        self.schemaVersion = schemaVersion
        self.slac = slac
        self.taskGroupId = taskGroupId
        self.updatedAtTimestamp = updatedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.cargoOnFlightAirWaybillId = try container.decode(String.self, forKey: .cargoOnFlightAirWaybillId)
        self.cargoOnFlightBookingId = try container.decode(String.self, forKey: .cargoOnFlightBookingId)
        self.chargesDeclaration = try container.decodeIfPresent(CargoOnFlightAirWaybillChargesDeclaration1.self, forKey: .chargesDeclaration)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decodeIfPresent(String.self, forKey: .createdByUserId)
        self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
        self.grossWeightKilograms = try container.decode(Double.self, forKey: .grossWeightKilograms)
        self.houseAirWaybillNumber = try container.decode(String.self, forKey: .houseAirWaybillNumber)
        self.latestFhlMessage = try container.decodeIfPresent(CargoOnFlightHouseAirWaybillFhlMessage1.self, forKey: .latestFhlMessage)
        self.manifestDescriptionOfGoods = try container.decode(String.self, forKey: .manifestDescriptionOfGoods)
        self.numberOfPieces = try container.decode(Int.self, forKey: .numberOfPieces)
        self.originIata = try container.decode(String.self, forKey: .originIata)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.slac = try container.decodeIfPresent(Int.self, forKey: .slac)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.updatedAtTimestamp = try container.decode(Date.self, forKey: .updatedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.cargoOnFlightAirWaybillId, forKey: .cargoOnFlightAirWaybillId)
        try container.encode(self.cargoOnFlightBookingId, forKey: .cargoOnFlightBookingId)
        try container.encodeIfPresent(self.chargesDeclaration, forKey: .chargesDeclaration)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encodeIfPresent(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.destinationIata, forKey: .destinationIata)
        try container.encode(self.grossWeightKilograms, forKey: .grossWeightKilograms)
        try container.encode(self.houseAirWaybillNumber, forKey: .houseAirWaybillNumber)
        try container.encodeIfPresent(self.latestFhlMessage, forKey: .latestFhlMessage)
        try container.encode(self.manifestDescriptionOfGoods, forKey: .manifestDescriptionOfGoods)
        try container.encode(self.numberOfPieces, forKey: .numberOfPieces)
        try container.encode(self.originIata, forKey: .originIata)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.slac, forKey: .slac)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.updatedAtTimestamp, forKey: .updatedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case cargoOnFlightAirWaybillId = "cargo_on_flight_air_waybill_id"
        case cargoOnFlightBookingId = "cargo_on_flight_booking_id"
        case chargesDeclaration = "charges_declaration"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case destinationIata = "destination_iata"
        case grossWeightKilograms = "gross_weight_kilograms"
        case houseAirWaybillNumber = "house_air_waybill_number"
        case latestFhlMessage = "latest_fhl_message"
        case manifestDescriptionOfGoods = "manifest_description_of_goods"
        case numberOfPieces = "number_of_pieces"
        case originIata = "origin_iata"
        case schemaVersion = "schema_version"
        case slac
        case taskGroupId = "task_group_id"
        case updatedAtTimestamp = "updated_at_timestamp"
    }
}