import Foundation

extension Requests {
    public struct BodyPostShippingOrdersUtilsImageToTextV1 {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostShippingOrdersUtilsImageToTextV1: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}