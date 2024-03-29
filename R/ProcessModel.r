# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ProcessModel Class
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
ProcessModel <- R6::R6Class(
  'ProcessModel',
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
      ProcessModelObject <- list()
      if (!is.null(self$`modelType`)) {
        ProcessModelObject[['modelType']] <- self$`modelType`
      }
      if (!is.null(self$`generalInformation`)) {
        ProcessModelObject[['generalInformation']] <- self$`generalInformation`$toJSON()
      }
      if (!is.null(self$`scope`)) {
        ProcessModelObject[['scope']] <- self$`scope`$toJSON()
      }
      if (!is.null(self$`dataBackground`)) {
        ProcessModelObject[['dataBackground']] <- self$`dataBackground`$toJSON()
      }
      if (!is.null(self$`modelMath`)) {
        ProcessModelObject[['modelMath']] <- self$`modelMath`$toJSON()
      }

      ProcessModelObject
    },
    fromJSON = function(ProcessModelJson) {
      ProcessModelObject <- jsonlite::fromJSON(ProcessModelJson)
      if (!is.null(ProcessModelObject$`modelType`)) {
        self$`modelType` <- ProcessModelObject$`modelType`
      }
      if (!is.null(ProcessModelObject$`generalInformation`)) {
        generalInformationObject <- PredictiveModelGeneralInformation$new()
        generalInformationObject$fromJSON(jsonlite::toJSON(ProcessModelObject$generalInformation, auto_unbox = TRUE))
        self$`generalInformation` <- generalInformationObject
      }
      if (!is.null(ProcessModelObject$`scope`)) {
        scopeObject <- ProcessModelScope$new()
        scopeObject$fromJSON(jsonlite::toJSON(ProcessModelObject$scope, auto_unbox = TRUE))
        self$`scope` <- scopeObject
      }
      if (!is.null(ProcessModelObject$`dataBackground`)) {
        dataBackgroundObject <- PredictiveModelDataBackground$new()
        dataBackgroundObject$fromJSON(jsonlite::toJSON(ProcessModelObject$dataBackground, auto_unbox = TRUE))
        self$`dataBackground` <- dataBackgroundObject
      }
      if (!is.null(ProcessModelObject$`modelMath`)) {
        modelMathObject <- PredictiveModelModelMath$new()
        modelMathObject$fromJSON(jsonlite::toJSON(ProcessModelObject$modelMath, auto_unbox = TRUE))
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
    fromJSONString = function(ProcessModelJson) {
      ProcessModelObject <- jsonlite::fromJSON(ProcessModelJson)
      self$`modelType` <- ProcessModelObject$`modelType`
      PredictiveModelGeneralInformationObject <- PredictiveModelGeneralInformation$new()
      self$`generalInformation` <- PredictiveModelGeneralInformationObject$fromJSON(jsonlite::toJSON(ProcessModelObject$generalInformation, auto_unbox = TRUE))
      ProcessModelScopeObject <- ProcessModelScope$new()
      self$`scope` <- ProcessModelScopeObject$fromJSON(jsonlite::toJSON(ProcessModelObject$scope, auto_unbox = TRUE))
      PredictiveModelDataBackgroundObject <- PredictiveModelDataBackground$new()
      self$`dataBackground` <- PredictiveModelDataBackgroundObject$fromJSON(jsonlite::toJSON(ProcessModelObject$dataBackground, auto_unbox = TRUE))
      PredictiveModelModelMathObject <- PredictiveModelModelMath$new()
      self$`modelMath` <- PredictiveModelModelMathObject$fromJSON(jsonlite::toJSON(ProcessModelObject$modelMath, auto_unbox = TRUE))
    }
  )
)
