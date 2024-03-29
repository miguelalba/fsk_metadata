# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PredictiveModel Class
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
PredictiveModel <- R6::R6Class(
  'PredictiveModel',
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
      PredictiveModelObject <- list()
      if (!is.null(self$`modelType`)) {
        PredictiveModelObject[['modelType']] <- self$`modelType`
      }
      if (!is.null(self$`generalInformation`)) {
        PredictiveModelObject[['generalInformation']] <- self$`generalInformation`$toJSON()
      }
      if (!is.null(self$`scope`)) {
        PredictiveModelObject[['scope']] <- self$`scope`$toJSON()
      }
      if (!is.null(self$`dataBackground`)) {
        PredictiveModelObject[['dataBackground']] <- self$`dataBackground`$toJSON()
      }
      if (!is.null(self$`modelMath`)) {
        PredictiveModelObject[['modelMath']] <- self$`modelMath`$toJSON()
      }

      PredictiveModelObject
    },
    fromJSON = function(PredictiveModelJson) {
      PredictiveModelObject <- jsonlite::fromJSON(PredictiveModelJson)
      if (!is.null(PredictiveModelObject$`modelType`)) {
        self$`modelType` <- PredictiveModelObject$`modelType`
      }
      if (!is.null(PredictiveModelObject$`generalInformation`)) {
        generalInformationObject <- PredictiveModelGeneralInformation$new()
        generalInformationObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$generalInformation, auto_unbox = TRUE))
        self$`generalInformation` <- generalInformationObject
      }
      if (!is.null(PredictiveModelObject$`scope`)) {
        scopeObject <- PredictiveModelScope$new()
        scopeObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$scope, auto_unbox = TRUE))
        self$`scope` <- scopeObject
      }
      if (!is.null(PredictiveModelObject$`dataBackground`)) {
        dataBackgroundObject <- PredictiveModelDataBackground$new()
        dataBackgroundObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$dataBackground, auto_unbox = TRUE))
        self$`dataBackground` <- dataBackgroundObject
      }
      if (!is.null(PredictiveModelObject$`modelMath`)) {
        modelMathObject <- PredictiveModelModelMath$new()
        modelMathObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$modelMath, auto_unbox = TRUE))
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
    fromJSONString = function(PredictiveModelJson) {
      PredictiveModelObject <- jsonlite::fromJSON(PredictiveModelJson)
      self$`modelType` <- PredictiveModelObject$`modelType`
      PredictiveModelGeneralInformationObject <- PredictiveModelGeneralInformation$new()
      self$`generalInformation` <- PredictiveModelGeneralInformationObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$generalInformation, auto_unbox = TRUE))
      PredictiveModelScopeObject <- PredictiveModelScope$new()
      self$`scope` <- PredictiveModelScopeObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$scope, auto_unbox = TRUE))
      PredictiveModelDataBackgroundObject <- PredictiveModelDataBackground$new()
      self$`dataBackground` <- PredictiveModelDataBackgroundObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$dataBackground, auto_unbox = TRUE))
      PredictiveModelModelMathObject <- PredictiveModelModelMath$new()
      self$`modelMath` <- PredictiveModelModelMathObject$fromJSON(jsonlite::toJSON(PredictiveModelObject$modelMath, auto_unbox = TRUE))
    }
  )
)
