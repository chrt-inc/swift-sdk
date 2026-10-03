import Foundation

extension Requests {
    public struct CargoOnFlightHouseAirWaybillClientUpdate1: Codable, Hashable, Sendable {
        public let chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1?
        public let chargesDeclarationSetToNone: Bool?
        public let destinationIata: String?
        public let grossWeightKilograms: Double?
        public let manifestDescriptionOfGoods: String?
        public let numberOfPieces: Int?
        public let originIata: String?
        public let slac: Int?
        public let slacSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            chargesDeclaration: CargoOnFlightAirWaybillChargesDeclaration1? = nil,
            chargesDeclarationSetToNone: Bool? = nil,
            destinationIata: String? = nil,
            grossWeightKilograms: Double? = nil,
            manifestDescriptionOfGoods: String? = nil,
            numberOfPieces: Int? = nil,
            originIata: String? = nil,
            slac: Int? = nil,
            slacSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.chargesDeclaration = chargesDeclaration
            self.chargesDeclarationSetToNone = chargesDeclarationSetToNone
            self.destinationIata = destinationIata
            self.grossWeightKilograms = grossWeightKilograms
            self.manifestDescriptionOfGoods = manifestDescriptionOfGoods
            self.numberOfPieces = numberOfPieces
            self.originIata = originIata
            self.slac = slac
            self.slacSetToNone = slacSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.chargesDeclaration = try container.decodeIfPresent(CargoOnFlightAirWaybillChargesDeclaration1.self, forKey: .chargesDeclaration)
            self.chargesDeclarationSetToNone = try container.decodeIfPresent(Bool.self, forKey: .chargesDeclarationSetToNone)
            self.destinationIata = try container.decodeIfPresent(String.self, forKey: .destinationIata)
            self.grossWeightKilograms = try container.decodeIfPresent(Double.self, forKey: .grossWeightKilograms)
            self.manifestDescriptionOfGoods = try container.decodeIfPresent(String.self, forKey: .manifestDescriptionOfGoods)
            self.numberOfPieces = try container.decodeIfPresent(Int.self, forKey: .numberOfPieces)
            self.originIata = try container.decodeIfPresent(String.self, forKey: .originIata)
            self.slac = try container.decodeIfPresent(Int.self, forKey: .slac)
            self.slacSetToNone = try container.decodeIfPresent(Bool.self, forKey: .slacSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.chargesDeclaration, forKey: .chargesDeclaration)
            try container.encodeIfPresent(self.chargesDeclarationSetToNone, forKey: .chargesDeclarationSetToNone)
            try container.encodeIfPresent(self.destinationIata, forKey: .destinationIata)
            try container.encodeIfPresent(self.grossWeightKilograms, forKey: .grossWeightKilograms)
            try container.encodeIfPresent(self.manifestDescriptionOfGoods, forKey: .manifestDescriptionOfGoods)
            try container.encodeIfPresent(self.numberOfPieces, forKey: .numberOfPieces)
            try container.encodeIfPresent(self.originIata, forKey: .originIata)
            try container.encodeIfPresent(self.slac, forKey: .slac)
            try container.encodeIfPresent(self.slacSetToNone, forKey: .slacSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case chargesDeclaration = "charges_declaration"
            case chargesDeclarationSetToNone = "charges_declaration__set_to_None"
            case destinationIata = "destination_iata"
            case grossWeightKilograms = "gross_weight_kilograms"
            case manifestDescriptionOfGoods = "manifest_description_of_goods"
            case numberOfPieces = "number_of_pieces"
            case originIata = "origin_iata"
            case slac
            case slacSetToNone = "slac__set_to_None"
        }
    }
}