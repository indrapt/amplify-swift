//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// Code generated by smithy-swift-codegen. DO NOT EDIT!

import protocol ClientRuntime.PaginateToken
import struct ClientRuntime.PaginatorSequence

extension PersonalizeClient {
    /// Paginate over `[ListBatchInferenceJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBatchInferenceJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBatchInferenceJobsOutput`
    public func listBatchInferenceJobsPaginated(input: ListBatchInferenceJobsInput) -> ClientRuntime.PaginatorSequence<ListBatchInferenceJobsInput, ListBatchInferenceJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListBatchInferenceJobsInput, ListBatchInferenceJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBatchInferenceJobs(input:))
    }
}

extension ListBatchInferenceJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBatchInferenceJobsInput {
        return ListBatchInferenceJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionVersionArn: self.solutionVersionArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListBatchInferenceJobsInput, OperationStackOutput == ListBatchInferenceJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listBatchInferenceJobsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.BatchInferenceJobSummary]`
    /// - Returns: `[PersonalizeClientTypes.BatchInferenceJobSummary]`
    public func batchInferenceJobs() async throws -> [PersonalizeClientTypes.BatchInferenceJobSummary] {
        return try await self.asyncCompactMap { item in item.batchInferenceJobs }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListBatchSegmentJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBatchSegmentJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBatchSegmentJobsOutput`
    public func listBatchSegmentJobsPaginated(input: ListBatchSegmentJobsInput) -> ClientRuntime.PaginatorSequence<ListBatchSegmentJobsInput, ListBatchSegmentJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListBatchSegmentJobsInput, ListBatchSegmentJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBatchSegmentJobs(input:))
    }
}

extension ListBatchSegmentJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBatchSegmentJobsInput {
        return ListBatchSegmentJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionVersionArn: self.solutionVersionArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListBatchSegmentJobsInput, OperationStackOutput == ListBatchSegmentJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listBatchSegmentJobsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.BatchSegmentJobSummary]`
    /// - Returns: `[PersonalizeClientTypes.BatchSegmentJobSummary]`
    public func batchSegmentJobs() async throws -> [PersonalizeClientTypes.BatchSegmentJobSummary] {
        return try await self.asyncCompactMap { item in item.batchSegmentJobs }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListCampaignsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCampaignsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCampaignsOutput`
    public func listCampaignsPaginated(input: ListCampaignsInput) -> ClientRuntime.PaginatorSequence<ListCampaignsInput, ListCampaignsOutput> {
        return ClientRuntime.PaginatorSequence<ListCampaignsInput, ListCampaignsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listCampaigns(input:))
    }
}

extension ListCampaignsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCampaignsInput {
        return ListCampaignsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionArn: self.solutionArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListCampaignsInput, OperationStackOutput == ListCampaignsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCampaignsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.CampaignSummary]`
    /// - Returns: `[PersonalizeClientTypes.CampaignSummary]`
    public func campaigns() async throws -> [PersonalizeClientTypes.CampaignSummary] {
        return try await self.asyncCompactMap { item in item.campaigns }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListDatasetExportJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetExportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetExportJobsOutput`
    public func listDatasetExportJobsPaginated(input: ListDatasetExportJobsInput) -> ClientRuntime.PaginatorSequence<ListDatasetExportJobsInput, ListDatasetExportJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasetExportJobsInput, ListDatasetExportJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatasetExportJobs(input:))
    }
}

extension ListDatasetExportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetExportJobsInput {
        return ListDatasetExportJobsInput(
            datasetArn: self.datasetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDatasetExportJobsInput, OperationStackOutput == ListDatasetExportJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDatasetExportJobsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.DatasetExportJobSummary]`
    /// - Returns: `[PersonalizeClientTypes.DatasetExportJobSummary]`
    public func datasetExportJobs() async throws -> [PersonalizeClientTypes.DatasetExportJobSummary] {
        return try await self.asyncCompactMap { item in item.datasetExportJobs }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListDatasetGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetGroupsOutput`
    public func listDatasetGroupsPaginated(input: ListDatasetGroupsInput) -> ClientRuntime.PaginatorSequence<ListDatasetGroupsInput, ListDatasetGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasetGroupsInput, ListDatasetGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatasetGroups(input:))
    }
}

extension ListDatasetGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetGroupsInput {
        return ListDatasetGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDatasetGroupsInput, OperationStackOutput == ListDatasetGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDatasetGroupsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.DatasetGroupSummary]`
    /// - Returns: `[PersonalizeClientTypes.DatasetGroupSummary]`
    public func datasetGroups() async throws -> [PersonalizeClientTypes.DatasetGroupSummary] {
        return try await self.asyncCompactMap { item in item.datasetGroups }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListDatasetImportJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetImportJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetImportJobsOutput`
    public func listDatasetImportJobsPaginated(input: ListDatasetImportJobsInput) -> ClientRuntime.PaginatorSequence<ListDatasetImportJobsInput, ListDatasetImportJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasetImportJobsInput, ListDatasetImportJobsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatasetImportJobs(input:))
    }
}

extension ListDatasetImportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetImportJobsInput {
        return ListDatasetImportJobsInput(
            datasetArn: self.datasetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDatasetImportJobsInput, OperationStackOutput == ListDatasetImportJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDatasetImportJobsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.DatasetImportJobSummary]`
    /// - Returns: `[PersonalizeClientTypes.DatasetImportJobSummary]`
    public func datasetImportJobs() async throws -> [PersonalizeClientTypes.DatasetImportJobSummary] {
        return try await self.asyncCompactMap { item in item.datasetImportJobs }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListDatasetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDatasetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDatasetsOutput`
    public func listDatasetsPaginated(input: ListDatasetsInput) -> ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutput> {
        return ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listDatasets(input:))
    }
}

extension ListDatasetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetsInput {
        return ListDatasetsInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListDatasetsInput, OperationStackOutput == ListDatasetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDatasetsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.DatasetSummary]`
    /// - Returns: `[PersonalizeClientTypes.DatasetSummary]`
    public func datasets() async throws -> [PersonalizeClientTypes.DatasetSummary] {
        return try await self.asyncCompactMap { item in item.datasets }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListEventTrackersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEventTrackersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEventTrackersOutput`
    public func listEventTrackersPaginated(input: ListEventTrackersInput) -> ClientRuntime.PaginatorSequence<ListEventTrackersInput, ListEventTrackersOutput> {
        return ClientRuntime.PaginatorSequence<ListEventTrackersInput, ListEventTrackersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listEventTrackers(input:))
    }
}

extension ListEventTrackersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventTrackersInput {
        return ListEventTrackersInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListEventTrackersInput, OperationStackOutput == ListEventTrackersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEventTrackersPaginated`
    /// to access the nested member `[PersonalizeClientTypes.EventTrackerSummary]`
    /// - Returns: `[PersonalizeClientTypes.EventTrackerSummary]`
    public func eventTrackers() async throws -> [PersonalizeClientTypes.EventTrackerSummary] {
        return try await self.asyncCompactMap { item in item.eventTrackers }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListFiltersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFiltersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFiltersOutput`
    public func listFiltersPaginated(input: ListFiltersInput) -> ClientRuntime.PaginatorSequence<ListFiltersInput, ListFiltersOutput> {
        return ClientRuntime.PaginatorSequence<ListFiltersInput, ListFiltersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFilters(input:))
    }
}

extension ListFiltersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFiltersInput {
        return ListFiltersInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListFiltersInput, OperationStackOutput == ListFiltersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFiltersPaginated`
    /// to access the nested member `[PersonalizeClientTypes.FilterSummary]`
    /// - Returns: `[PersonalizeClientTypes.FilterSummary]`
    public func filters() async throws -> [PersonalizeClientTypes.FilterSummary] {
        return try await self.asyncCompactMap { item in item.filters }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListMetricAttributionMetricsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMetricAttributionMetricsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMetricAttributionMetricsOutput`
    public func listMetricAttributionMetricsPaginated(input: ListMetricAttributionMetricsInput) -> ClientRuntime.PaginatorSequence<ListMetricAttributionMetricsInput, ListMetricAttributionMetricsOutput> {
        return ClientRuntime.PaginatorSequence<ListMetricAttributionMetricsInput, ListMetricAttributionMetricsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listMetricAttributionMetrics(input:))
    }
}

extension ListMetricAttributionMetricsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMetricAttributionMetricsInput {
        return ListMetricAttributionMetricsInput(
            maxResults: self.maxResults,
            metricAttributionArn: self.metricAttributionArn,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListMetricAttributionMetricsInput, OperationStackOutput == ListMetricAttributionMetricsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listMetricAttributionMetricsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.MetricAttribute]`
    /// - Returns: `[PersonalizeClientTypes.MetricAttribute]`
    public func metrics() async throws -> [PersonalizeClientTypes.MetricAttribute] {
        return try await self.asyncCompactMap { item in item.metrics }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListMetricAttributionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMetricAttributionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMetricAttributionsOutput`
    public func listMetricAttributionsPaginated(input: ListMetricAttributionsInput) -> ClientRuntime.PaginatorSequence<ListMetricAttributionsInput, ListMetricAttributionsOutput> {
        return ClientRuntime.PaginatorSequence<ListMetricAttributionsInput, ListMetricAttributionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listMetricAttributions(input:))
    }
}

extension ListMetricAttributionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMetricAttributionsInput {
        return ListMetricAttributionsInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListMetricAttributionsInput, OperationStackOutput == ListMetricAttributionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listMetricAttributionsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.MetricAttributionSummary]`
    /// - Returns: `[PersonalizeClientTypes.MetricAttributionSummary]`
    public func metricAttributions() async throws -> [PersonalizeClientTypes.MetricAttributionSummary] {
        return try await self.asyncCompactMap { item in item.metricAttributions }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListRecipesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecipesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecipesOutput`
    public func listRecipesPaginated(input: ListRecipesInput) -> ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutput> {
        return ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRecipes(input:))
    }
}

extension ListRecipesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecipesInput {
        return ListRecipesInput(
            domain: self.domain,
            maxResults: self.maxResults,
            nextToken: token,
            recipeProvider: self.recipeProvider
        )}
}

extension PaginatorSequence where OperationStackInput == ListRecipesInput, OperationStackOutput == ListRecipesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRecipesPaginated`
    /// to access the nested member `[PersonalizeClientTypes.RecipeSummary]`
    /// - Returns: `[PersonalizeClientTypes.RecipeSummary]`
    public func recipes() async throws -> [PersonalizeClientTypes.RecipeSummary] {
        return try await self.asyncCompactMap { item in item.recipes }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListRecommendersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecommendersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecommendersOutput`
    public func listRecommendersPaginated(input: ListRecommendersInput) -> ClientRuntime.PaginatorSequence<ListRecommendersInput, ListRecommendersOutput> {
        return ClientRuntime.PaginatorSequence<ListRecommendersInput, ListRecommendersOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listRecommenders(input:))
    }
}

extension ListRecommendersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendersInput {
        return ListRecommendersInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListRecommendersInput, OperationStackOutput == ListRecommendersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRecommendersPaginated`
    /// to access the nested member `[PersonalizeClientTypes.RecommenderSummary]`
    /// - Returns: `[PersonalizeClientTypes.RecommenderSummary]`
    public func recommenders() async throws -> [PersonalizeClientTypes.RecommenderSummary] {
        return try await self.asyncCompactMap { item in item.recommenders }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListSchemasOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchemasInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchemasOutput`
    public func listSchemasPaginated(input: ListSchemasInput) -> ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutput> {
        return ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSchemas(input:))
    }
}

extension ListSchemasInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemasInput {
        return ListSchemasInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSchemasInput, OperationStackOutput == ListSchemasOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSchemasPaginated`
    /// to access the nested member `[PersonalizeClientTypes.DatasetSchemaSummary]`
    /// - Returns: `[PersonalizeClientTypes.DatasetSchemaSummary]`
    public func schemas() async throws -> [PersonalizeClientTypes.DatasetSchemaSummary] {
        return try await self.asyncCompactMap { item in item.schemas }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListSolutionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSolutionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSolutionsOutput`
    public func listSolutionsPaginated(input: ListSolutionsInput) -> ClientRuntime.PaginatorSequence<ListSolutionsInput, ListSolutionsOutput> {
        return ClientRuntime.PaginatorSequence<ListSolutionsInput, ListSolutionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSolutions(input:))
    }
}

extension ListSolutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSolutionsInput {
        return ListSolutionsInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListSolutionsInput, OperationStackOutput == ListSolutionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSolutionsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.SolutionSummary]`
    /// - Returns: `[PersonalizeClientTypes.SolutionSummary]`
    public func solutions() async throws -> [PersonalizeClientTypes.SolutionSummary] {
        return try await self.asyncCompactMap { item in item.solutions }
    }
}
extension PersonalizeClient {
    /// Paginate over `[ListSolutionVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSolutionVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSolutionVersionsOutput`
    public func listSolutionVersionsPaginated(input: ListSolutionVersionsInput) -> ClientRuntime.PaginatorSequence<ListSolutionVersionsInput, ListSolutionVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListSolutionVersionsInput, ListSolutionVersionsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSolutionVersions(input:))
    }
}

extension ListSolutionVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSolutionVersionsInput {
        return ListSolutionVersionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionArn: self.solutionArn
        )}
}

extension PaginatorSequence where OperationStackInput == ListSolutionVersionsInput, OperationStackOutput == ListSolutionVersionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSolutionVersionsPaginated`
    /// to access the nested member `[PersonalizeClientTypes.SolutionVersionSummary]`
    /// - Returns: `[PersonalizeClientTypes.SolutionVersionSummary]`
    public func solutionVersions() async throws -> [PersonalizeClientTypes.SolutionVersionSummary] {
        return try await self.asyncCompactMap { item in item.solutionVersions }
    }
}
