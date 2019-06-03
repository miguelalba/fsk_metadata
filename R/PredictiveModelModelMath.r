# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' PredictiveModelModelMath Class
#'
#' @field parameter 
#' @field qualityMeasures 
#' @field modelEquation 
#' @field fittingProcedure 
#' @field event 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
PredictiveModelModelMath <- R6::R6Class(
  'PredictiveModelModelMath',
  public = list(
    `parameter` = NULL,
    `qualityMeasures` = NULL,
    `modelEquation` = NULL,
    `fittingProcedure` = NULL,
    `event` = NULL,
    initialize = function(`parameter`, `qualityMeasures`, `modelEquation`, `fittingProcedure`, `event`){
      if (!missing(`parameter`)) {
        stopifnot(is.list(`parameter`), length(`parameter`) != 0)
        lapply(`parameter`, function(x) stopifnot(R6::is.R6(x)))
        self$`parameter` <- `parameter`
      }
      if (!missing(`qualityMeasures`)) {
        stopifnot(is.list(`qualityMeasures`), length(`qualityMeasures`) != 0)
        lapply(`qualityMeasures`, function(x) stopifnot(R6::is.R6(x)))
        self$`qualityMeasures` <- `qualityMeasures`
      }
      if (!missing(`modelEquation`)) {
        stopifnot(is.list(`modelEquation`), length(`modelEquation`) != 0)
        lapply(`modelEquation`, function(x) stopifnot(R6::is.R6(x)))
        self$`modelEquation` <- `modelEquation`
      }
      if (!missing(`fittingProcedure`)) {
        stopifnot(is.character(`fittingProcedure`), length(`fittingProcedure`) == 1)
        self$`fittingProcedure` <- `fittingProcedure`
      }
      if (!missing(`event`)) {
        stopifnot(is.list(`event`), length(`event`) != 0)
        lapply(`event`, function(x) stopifnot(is.character(x)))
        self$`event` <- `event`
      }
    },
    toJSON = function() {
      PredictiveModelModelMathObject <- list()
      if (!is.null(self$`parameter`)) {
        PredictiveModelModelMathObject[['parameter']] <- lapply(self$`parameter`, function(x) x$toJSON())
      }
      if (!is.null(self$`qualityMeasures`)) {
        PredictiveModelModelMathObject[['qualityMeasures']] <- lapply(self$`qualityMeasures`, function(x) x$toJSON())
      }
      if (!is.null(self$`modelEquation`)) {
        PredictiveModelModelMathObject[['modelEquation']] <- lapply(self$`modelEquation`, function(x) x$toJSON())
      }
      if (!is.null(self$`fittingProcedure`)) {
        PredictiveModelModelMathObject[['fittingProcedure']] <- self$`fittingProcedure`
      }
      if (!is.null(self$`event`)) {
        PredictiveModelModelMathObject[['event']] <- self$`event`
      }

      PredictiveModelModelMathObject
    },
    fromJSON = function(PredictiveModelModelMathJson) {
      PredictiveModelModelMathObject <- jsonlite::fromJSON(PredictiveModelModelMathJson)
      if (!is.null(PredictiveModelModelMathObject$`parameter`)) {
        self$`parameter` <- lapply(PredictiveModelModelMathObject$`parameter`, function(x) {
          parameterObject <- Parameter$new()
          parameterObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          parameterObject
        })
      }
      if (!is.null(PredictiveModelModelMathObject$`qualityMeasures`)) {
        self$`qualityMeasures` <- lapply(PredictiveModelModelMathObject$`qualityMeasures`, function(x) {
          qualityMeasuresObject <- QualityMeasures$new()
          qualityMeasuresObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          qualityMeasuresObject
        })
      }
      if (!is.null(PredictiveModelModelMathObject$`modelEquation`)) {
        self$`modelEquation` <- lapply(PredictiveModelModelMathObject$`modelEquation`, function(x) {
          modelEquationObject <- ModelEquation$new()
          modelEquationObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          modelEquationObject
        })
      }
      if (!is.null(PredictiveModelModelMathObject$`fittingProcedure`)) {
        self$`fittingProcedure` <- PredictiveModelModelMathObject$`fittingProcedure`
      }
      if (!is.null(PredictiveModelModelMathObject$`event`)) {
        self$`event` <- PredictiveModelModelMathObject$`event`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "parameter": [%s],
           "qualityMeasures": [%s],
           "modelEquation": [%s],
           "fittingProcedure": %s,
           "event": [%s]
        }',
        lapply(self$`parameter`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`qualityMeasures`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`modelEquation`, function(x) paste(x$toJSON(), sep=",")),
        self$`fittingProcedure`,
        lapply(self$`event`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(PredictiveModelModelMathJson) {
      PredictiveModelModelMathObject <- jsonlite::fromJSON(PredictiveModelModelMathJson)
      self$`parameter` <- lapply(PredictiveModelModelMathObject$`parameter`, function(x) Parameter$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`qualityMeasures` <- lapply(PredictiveModelModelMathObject$`qualityMeasures`, function(x) QualityMeasures$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`modelEquation` <- lapply(PredictiveModelModelMathObject$`modelEquation`, function(x) ModelEquation$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`fittingProcedure` <- PredictiveModelModelMathObject$`fittingProcedure`
      self$`event` <- PredictiveModelModelMathObject$`event`
    }
  )
)
