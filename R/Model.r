# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Model Class
#'
#' @field modelType 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Model <- R6::R6Class(
  'Model',
  public = list(
    `modelType` = NULL,
    initialize = function(`modelType`){
      if (!missing(`modelType`)) {
        stopifnot(is.character(`modelType`), length(`modelType`) == 1)
        self$`modelType` <- `modelType`
      }
    },
    toJSON = function() {
      ModelObject <- list()
      if (!is.null(self$`modelType`)) {
        ModelObject[['modelType']] <- self$`modelType`
      }

      ModelObject
    },
    fromJSON = function(ModelJson) {
      ModelObject <- jsonlite::fromJSON(ModelJson)
      if (!is.null(ModelObject$`modelType`)) {
        self$`modelType` <- ModelObject$`modelType`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "modelType": %s
        }',
        self$`modelType`
      )
    },
    fromJSONString = function(ModelJson) {
      ModelObject <- jsonlite::fromJSON(ModelJson)
      self$`modelType` <- ModelObject$`modelType`
    }
  )
)