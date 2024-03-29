# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QraModel Class
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
QraModel <- R6::R6Class(
  'QraModel',
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
      QraModelObject <- list()
      if (!is.null(self$`modelType`)) {
        QraModelObject[['modelType']] <- self$`modelType`
      }
      if (!is.null(self$`generalInformation`)) {
        QraModelObject[['generalInformation']] <- self$`generalInformation`$toJSON()
      }
      if (!is.null(self$`scope`)) {
        QraModelObject[['scope']] <- self$`scope`$toJSON()
      }
      if (!is.null(self$`dataBackground`)) {
        QraModelObject[['dataBackground']] <- self$`dataBackground`$toJSON()
      }
      if (!is.null(self$`modelMath`)) {
        QraModelObject[['modelMath']] <- self$`modelMath`$toJSON()
      }

      QraModelObject
    },
    fromJSON = function(QraModelJson) {
      QraModelObject <- jsonlite::fromJSON(QraModelJson)
      if (!is.null(QraModelObject$`modelType`)) {
        self$`modelType` <- QraModelObject$`modelType`
      }
      if (!is.null(QraModelObject$`generalInformation`)) {
        generalInformationObject <- PredictiveModelGeneralInformation$new()
        generalInformationObject$fromJSON(jsonlite::toJSON(QraModelObject$generalInformation, auto_unbox = TRUE))
        self$`generalInformation` <- generalInformationObject
      }
      if (!is.null(QraModelObject$`scope`)) {
        scopeObject <- ExposureModelScope$new()
        scopeObject$fromJSON(jsonlite::toJSON(QraModelObject$scope, auto_unbox = TRUE))
        self$`scope` <- scopeObject
      }
      if (!is.null(QraModelObject$`dataBackground`)) {
        dataBackgroundObject <- GenericModelDataBackground$new()
        dataBackgroundObject$fromJSON(jsonlite::toJSON(QraModelObject$dataBackground, auto_unbox = TRUE))
        self$`dataBackground` <- dataBackgroundObject
      }
      if (!is.null(QraModelObject$`modelMath`)) {
        modelMathObject <- GenericModelModelMath$new()
        modelMathObject$fromJSON(jsonlite::toJSON(QraModelObject$modelMath, auto_unbox = TRUE))
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
    fromJSONString = function(QraModelJson) {
      QraModelObject <- jsonlite::fromJSON(QraModelJson)
      self$`modelType` <- QraModelObject$`modelType`
      PredictiveModelGeneralInformationObject <- PredictiveModelGeneralInformation$new()
      self$`generalInformation` <- PredictiveModelGeneralInformationObject$fromJSON(jsonlite::toJSON(QraModelObject$generalInformation, auto_unbox = TRUE))
      ExposureModelScopeObject <- ExposureModelScope$new()
      self$`scope` <- ExposureModelScopeObject$fromJSON(jsonlite::toJSON(QraModelObject$scope, auto_unbox = TRUE))
      GenericModelDataBackgroundObject <- GenericModelDataBackground$new()
      self$`dataBackground` <- GenericModelDataBackgroundObject$fromJSON(jsonlite::toJSON(QraModelObject$dataBackground, auto_unbox = TRUE))
      GenericModelModelMathObject <- GenericModelModelMath$new()
      self$`modelMath` <- GenericModelModelMathObject$fromJSON(jsonlite::toJSON(QraModelObject$modelMath, auto_unbox = TRUE))
    }
  )
)
