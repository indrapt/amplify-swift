//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension TaxSettingsClient {
    /// Paginate over `[ListTaxRegistrationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTaxRegistrationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTaxRegistrationsOutput`
    public func listTaxRegistrationsPaginated(input: ListTaxRegistrationsInput) -> ClientRuntime.PaginatorSequence<ListTaxRegistrationsInput, ListTaxRegistrationsOutput> {
        return ClientRuntime.PaginatorSequence<ListTaxRegistrationsInput, ListTaxRegistrationsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listTaxRegistrations(input:))
    }
}

extension ListTaxRegistrationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTaxRegistrationsInput {
        return ListTaxRegistrationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListTaxRegistrationsInput, OperationStackOutput == ListTaxRegistrationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTaxRegistrationsPaginated`
    /// to access the nested member `[TaxSettingsClientTypes.AccountDetails]`
    /// - Returns: `[TaxSettingsClientTypes.AccountDetails]`
    public func accountDetails() async throws -> [TaxSettingsClientTypes.AccountDetails] {
        return try await self.asyncCompactMap { item in item.accountDetails }
    }
}
