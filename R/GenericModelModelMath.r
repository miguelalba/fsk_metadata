# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GenericModelModelMath Class
#'
#' @field parameter 
#' @field qualityMeasures 
#' @field modelEquation 
#' @field fittingProcedure 
#' @field exposure 
#' @field event 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GenericModelModelMath <- R6::R6Class(
  'GenericModelModelMath',
  public = list(
    `parameter` = NULL,
    `qualityMeasures` = NULL,
    `modelEquation` = NULL,
    `fittingProcedure` = NULL,
    `exposure` = NULL,
    `event` = NULL,
    initialize = function(`parameter`, `qualityMeasures`, `modelEquation`, `fittingProcedure`, `exposure`, `event`){
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
      if (!missing(`exposure`)) {
        stopifnot(is.list(`exposure`), length(`exposure`) != 0)
        lapply(`exposure`, function(x) stopifnot(R6::is.R6(x)))
        self$`exposure` <- `exposure`
      }
      if (!missing(`event`)) {
        stopifnot(is.list(`event`), length(`event`) != 0)
        lapply(`event`, function(x) stopifnot(is.character(x)))
        self$`event` <- `event`
      }
    },
    toJSON = function() {
      GenericModelModelMathObject <- list()
      if (!is.null(self$`parameter`)) {
        GenericModelModelMathObject[['parameter']] <- lapply(self$`parameter`, function(x) x$toJSON())
      }
      if (!is.null(self$`qualityMeasures`)) {
        GenericModelModelMathObject[['qualityMeasures']] <- lapply(self$`qualityMeasures`, function(x) x$toJSON())
      }
      if (!is.null(self$`modelEquation`)) {
        GenericModelModelMathObject[['modelEquation']] <- lapply(self$`modelEquation`, function(x) x$toJSON())
      }
      if (!is.null(self$`fittingProcedure`)) {
        GenericModelModelMathObject[['fittingProcedure']] <- self$`fittingProcedure`
      }
      if (!is.null(self$`exposure`)) {
        GenericModelModelMathObject[['exposure']] <- lapply(self$`exposure`, function(x) x$toJSON())
      }
      if (!is.null(self$`event`)) {
        GenericModelModelMathObject[['event']] <- self$`event`
      }

      GenericModelModelMathObject
    },
    fromJSON = function(GenericModelModelMathJson) {
      GenericModelModelMathObject <- jsonlite::fromJSON(GenericModelModelMathJson)
      if (!is.null(GenericModelModelMathObject$`parameter`)) {
        self$`parameter` <- lapply(GenericModelModelMathObject$`parameter`, function(x) {
          parameterObject <- Parameter$new()
          parameterObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          parameterObject
        })
      }
      if (!is.null(GenericModelModelMathObject$`qualityMeasures`)) {
        self$`qualityMeasures` <- lapply(GenericModelModelMathObject$`qualityMeasures`, function(x) {
          qualityMeasuresObject <- QualityMeasures$new()
          qualityMeasuresObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          qualityMeasuresObject
        })
      }
      if (!is.null(GenericModelModelMathObject$`modelEquation`)) {
        self$`modelEquation` <- lapply(GenericModelModelMathObject$`modelEquation`, function(x) {
          modelEquationObject <- ModelEquation$new()
          modelEquationObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          modelEquationObject
        })
      }
      if (!is.null(GenericModelModelMathObject$`fittingProcedure`)) {
        self$`fittingProcedure` <- GenericModelModelMathObject$`fittingProcedure`
      }
      if (!is.null(GenericModelModelMathObject$`exposure`)) {
        self$`exposure` <- lapply(GenericModelModelMathObject$`exposure`, function(x) {
          exposureObject <- Exposure$new()
          exposureObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          exposureObject
        })
      }
      if (!is.null(GenericModelModelMathObject$`event`)) {
        self$`event` <- GenericModelModelMathObject$`event`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "parameter": [%s],
           "qualityMeasures": [%s],
           "modelEquation": [%s],
           "fittingProcedure": %s,
           "exposure": [%s],
           "event": [%s]
        }',
        lapply(self$`parameter`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`qualityMeasures`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`modelEquation`, function(x) paste(x$toJSON(), sep=",")),
        self$`fittingProcedure`,
        lapply(self$`exposure`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`event`, function(x) paste(paste0('"', x, '"'), sep=","))
      )
    },
    fromJSONString = function(GenericModelModelMathJson) {
      GenericModelModelMathObject <- jsonlite::fromJSON(GenericModelModelMathJson)
      self$`parameter` <- lapply(GenericModelModelMathObject$`parameter`, function(x) Parameter$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`qualityMeasures` <- lapply(GenericModelModelMathObject$`qualityMeasures`, function(x) QualityMeasures$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`modelEquation` <- lapply(GenericModelModelMathObject$`modelEquation`, function(x) ModelEquation$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`fittingProcedure` <- GenericModelModelMathObject$`fittingProcedure`
      self$`exposure` <- lapply(GenericModelModelMathObject$`exposure`, function(x) Exposure$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`event` <- GenericModelModelMathObject$`event`
    }
  )
)