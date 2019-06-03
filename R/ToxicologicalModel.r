# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' ToxicologicalModel Class
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
ToxicologicalModel <- R6::R6Class(
  'ToxicologicalModel',
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
      ToxicologicalModelObject <- list()
      if (!is.null(self$`modelType`)) {
        ToxicologicalModelObject[['modelType']] <- self$`modelType`
      }
      if (!is.null(self$`generalInformation`)) {
        ToxicologicalModelObject[['generalInformation']] <- self$`generalInformation`$toJSON()
      }
      if (!is.null(self$`scope`)) {
        ToxicologicalModelObject[['scope']] <- self$`scope`$toJSON()
      }
      if (!is.null(self$`dataBackground`)) {
        ToxicologicalModelObject[['dataBackground']] <- self$`dataBackground`$toJSON()
      }
      if (!is.null(self$`modelMath`)) {
        ToxicologicalModelObject[['modelMath']] <- self$`modelMath`$toJSON()
      }

      ToxicologicalModelObject
    },
    fromJSON = function(ToxicologicalModelJson) {
      ToxicologicalModelObject <- jsonlite::fromJSON(ToxicologicalModelJson)
      if (!is.null(ToxicologicalModelObject$`modelType`)) {
        self$`modelType` <- ToxicologicalModelObject$`modelType`
      }
      if (!is.null(ToxicologicalModelObject$`generalInformation`)) {
        generalInformationObject <- PredictiveModelGeneralInformation$new()
        generalInformationObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$generalInformation, auto_unbox = TRUE))
        self$`generalInformation` <- generalInformationObject
      }
      if (!is.null(ToxicologicalModelObject$`scope`)) {
        scopeObject <- ToxicologicalModelScope$new()
        scopeObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$scope, auto_unbox = TRUE))
        self$`scope` <- scopeObject
      }
      if (!is.null(ToxicologicalModelObject$`dataBackground`)) {
        dataBackgroundObject <- PredictiveModelDataBackground$new()
        dataBackgroundObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$dataBackground, auto_unbox = TRUE))
        self$`dataBackground` <- dataBackgroundObject
      }
      if (!is.null(ToxicologicalModelObject$`modelMath`)) {
        modelMathObject <- GenericModelModelMath$new()
        modelMathObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$modelMath, auto_unbox = TRUE))
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
    fromJSONString = function(ToxicologicalModelJson) {
      ToxicologicalModelObject <- jsonlite::fromJSON(ToxicologicalModelJson)
      self$`modelType` <- ToxicologicalModelObject$`modelType`
      PredictiveModelGeneralInformationObject <- PredictiveModelGeneralInformation$new()
      self$`generalInformation` <- PredictiveModelGeneralInformationObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$generalInformation, auto_unbox = TRUE))
      ToxicologicalModelScopeObject <- ToxicologicalModelScope$new()
      self$`scope` <- ToxicologicalModelScopeObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$scope, auto_unbox = TRUE))
      PredictiveModelDataBackgroundObject <- PredictiveModelDataBackground$new()
      self$`dataBackground` <- PredictiveModelDataBackgroundObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$dataBackground, auto_unbox = TRUE))
      GenericModelModelMathObject <- GenericModelModelMath$new()
      self$`modelMath` <- GenericModelModelMathObject$fromJSON(jsonlite::toJSON(ToxicologicalModelObject$modelMath, auto_unbox = TRUE))
    }
  )
)
