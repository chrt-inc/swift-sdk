import Foundation

extension Requests {
    public struct BodyPostShippingOrdersDraftsImageToTextV1 {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostShippingOrdersDraftsImageToTextV1: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}