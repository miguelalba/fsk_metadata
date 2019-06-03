# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' DoseResponseModel Class
#'
#' @field modelType 
#' @field generalInformation 
#' @field scope 
#' @field dataBackground 
#' @field modelMath 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DoseResponseModel <- R6::R6Class(
  'DoseResponseModel',
  public = list(
    `modelType` = NULL,
    `generalInformation` = NULL,
    `scope` = NULL,
    `dataBackground` = NULL,
    `modelMath` = NULL,
    initialize = function(`modelType`, `generalInformation`, `scope`, `dataBackground`, `modelMath`){
      if (!missing(`modelType`)) {
        stopifnot(is.character(`modelType`), length(`modelType`) == 1)
        self$`modelType` <- `modelType`
      }
      if (!missing(`generalInformation`)) {
        stopifnot(R6::is.R6(`generalInformation`))
        self$`generalInformation` <- `generalInformation`
      }
      if (!missing(`scope`)) {
        stopifnot(R6::is.R6(`scope`))
        self$`scope` <- `scope`
      }
      if (!missing(`dataBackground`)) {
        stopifnot(R6::is.R6(`dataBackground`))
        self$`dataBackground` <- `dataBackground`
      }
      if (!missing(`modelMath`)) {
        stopifnot(R6::is.R6(`modelMath`))
        self$`modelMath` <- `modelMath`
      }
    },
    toJSON = function() {
      DoseResponseModelObject <- list()
      if (!is.null(self$`modelType`)) {
        DoseResponseModelObject[['modelType']] <- self$`modelType`
      }
      if (!is.null(self$`generalInformation`)) {
        DoseResponseModelObject[['generalInformation']] <- self$`generalInformation`$toJSON()
      }
      if (!is.null(self$`scope`)) {
        DoseResponseModelObject[['scope']] <- self$`scope`$toJSON()
      }
      if (!is.null(self$`dataBackground`)) {
        DoseResponseModelObject[['dataBackground']] <- self$`dataBackground`$toJSON()
      }
      if (!is.null(self$`modelMath`)) {
        DoseResponseModelObject[['modelMath']] <- self$`modelMath`$toJSON()
      }

      DoseResponseModelObject
    },
    fromJSON = function(DoseResponseModelJson) {
      DoseResponseModelObject <- jsonlite::fromJSON(DoseResponseModelJson)
      if (!is.null(DoseResponseModelObject$`modelType`)) {
        self$`modelType` <- DoseResponseModelObject$`modelType`
      }
      if (!is.null(DoseResponseModelObject$`generalInformation`)) {
        generalInformationObject <- DoseResponseModelGeneralInformation$new()
        generalInformationObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$generalInformation, auto_unbox = TRUE))
        self$`generalInformation` <- generalInformationObject
      }
      if (!is.null(DoseResponseModelObject$`scope`)) {
        scopeObject <- DoseResponseModelScope$new()
        scopeObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$scope, auto_unbox = TRUE))
        self$`scope` <- scopeObject
      }
      if (!is.null(DoseResponseModelObject$`dataBackground`)) {
        dataBackgroundObject <- PredictiveModelDataBackground$new()
        dataBackgroundObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$dataBackground, auto_unbox = TRUE))
        self$`dataBackground` <- dataBackgroundObject
      }
      if (!is.null(DoseResponseModelObject$`modelMath`)) {
        modelMathObject <- DoseResponseModelModelMath$new()
        modelMathObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$modelMath, auto_unbox = TRUE))
        self$`modelMath` <- modelMathObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "modelType": %s,
           "generalInformation": %s,
           "scope": %s,
           "dataBackground": %s,
           "modelMath": %s
        }',
        self$`modelType`,
        self$`generalInformation`$toJSON(),
        self$`scope`$toJSON(),
        self$`dataBackground`$toJSON(),
        self$`modelMath`$toJSON()
      )
    },
    fromJSONString = function(DoseResponseModelJson) {
      DoseResponseModelObject <- jsonlite::fromJSON(DoseResponseModelJson)
      self$`modelType` <- DoseResponseModelObject$`modelType`
      DoseResponseModelGeneralInformationObject <- DoseResponseModelGeneralInformation$new()
      self$`generalInformation` <- DoseResponseModelGeneralInformationObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$generalInformation, auto_unbox = TRUE))
      DoseResponseModelScopeObject <- DoseResponseModelScope$new()
      self$`scope` <- DoseResponseModelScopeObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$scope, auto_unbox = TRUE))
      PredictiveModelDataBackgroundObject <- PredictiveModelDataBackground$new()
      self$`dataBackground` <- PredictiveModelDataBackgroundObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$dataBackground, auto_unbox = TRUE))
      DoseResponseModelModelMathObject <- DoseResponseModelModelMath$new()
      self$`modelMath` <- DoseResponseModelModelMathObject$fromJSON(jsonlite::toJSON(DoseResponseModelObject$modelMath, auto_unbox = TRUE))
    }
  )
)
