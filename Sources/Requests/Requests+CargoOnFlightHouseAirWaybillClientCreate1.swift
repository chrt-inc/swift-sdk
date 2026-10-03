import Foundation

extension Requests {
    public struct CargoOnFlightHouseAirWaybillClientCreate1: Codable, Hashable, Sendable {
        public let cargoOnFlightAirWaybillId: String
        public let chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1?
        public let destinationIata: String
        public let grossWeightKilograms: Double
        public let houseAirWaybillNumber: String
        public let manifestDescriptionOfGoods: String
        public let numberOfPieces: Int
        public let originIata: String
        public let schemaVersion: Int
        public let slac: Int?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cargoOnFlightAirWaybillId: String,
            chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1? = nil,
            destinationIata: String,
            grossWeightKilograms: Double,
            houseAirWaybillNumber: String,
            manifestDescriptionOfGoods: String,
            numberOfPieces: Int,
            originIata: String,
            schemaVersion: Int,
            slac: Int? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cargoOnFlightAirWaybillId = cargoOnFlightAirWaybillId
            self.chargesDeclaration = chargesDeclaration
            self.destinationIata = destinationIata
            self.grossWeightKilograms = grossWeightKilograms
            self.houseAirWaybillNumber = houseAirWaybillNumber
            self.manifestDescriptionOfGoods = manifestDescriptionOfGoods
            self.numberOfPieces = numberOfPieces
            self.originIata = originIata
            self.schemaVersion = schemaVersion
            self.slac = slac
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cargoOnFlightAirWaybillId = try container.decode(String.self, forKey: .cargoOnFlightAirWaybillId)
            self.chargesDeclaration = try container.decodeIfPresent(CargoOnFlightAirWaybillChargesDeclaration1.self, forKey: .chargesDeclaration)
            self.destinationIata = try container.decode(String.self, forKey: .destinationIata)
            self.grossWeightKilograms = try container.decode(Double.self, forKey: .grossWeightKilograms)
            self.houseAirWaybillNumber = try container.decode(String.self, forKey: .houseAirWaybillNumber)
            self.manifestDescriptionOfGoods = try container.decode(String.self, forKey: .manifestDescriptionOfGoods)
            self.numberOfPieces = try container.decode(Int.self, forKey: .numberOfPieces)
            self.originIata = try container.decode(String.self, forKey: .originIata)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.slac = try container.decodeIfPresent(Int.self, forKey: .slac)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cargoOnFlightAirWaybillId, forKey: .cargoOnFlightAirWaybillId)
            try container.encodeIfPresent(self.chargesDeclaration, forKey: .chargesDeclaration)
            try container.encode(self.destinationIata, forKey: .destinationIata)
            try container.encode(self.grossWeightKilograms, forKey: .grossWeightKilograms)
            try container.encode(self.houseAirWaybillNumber, forKey: .houseAirWaybillNumber)
            try container.encode(self.manifestDescriptionOfGoods, forKey: .manifestDescriptionOfGoods)
            try container.encode(self.numberOfPieces, forKey: .numberOfPieces)
            try container.encode(self.originIata, forKey: .originIata)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.slac, forKey: .slac)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cargoOnFlightAirWaybillId = "cargo_on_flight_air_waybill_id"
            case chargesDeclaration = "charges_declaration"
            case destinationIata = "destination_iata"
            case grossWeightKilograms = "gross_weight_kilograms"
            case houseAirWaybillNumber = "house_air_waybill_number"
            case manifestDescriptionOfGoods = "manifest_description_of_goods"
            case numberOfPieces = "number_of_pieces"
            case originIata = "origin_iata"
            case schemaVersion = "schema_version"
            case slac
        }
    }
}