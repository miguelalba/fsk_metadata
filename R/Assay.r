# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Assay Class
#'
#' @field name 
#' @field description 
#' @field moisturePercentage 
#' @field fatPercentage 
#' @field detectionLimit 
#' @field quantificationLimit 
#' @field leftCensoredData 
#' @field contaminationRange 
#' @field uncertaintyValue 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Assay <- R6::R6Class(
  'Assay',
  public = list(
    `name` = NULL,
    `description` = NULL,
    `moisturePercentage` = NULL,
    `fatPercentage` = NULL,
    `detectionLimit` = NULL,
    `quantificationLimit` = NULL,
    `leftCensoredData` = NULL,
    `contaminationRange` = NULL,
    `uncertaintyValue` = NULL,
    initialize = function(`name`, `description`, `moisturePercentage`, `fatPercentage`, `detectionLimit`, `quantificationLimit`, `leftCensoredData`, `contaminationRange`, `uncertaintyValue`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`moisturePercentage`)) {
        stopifnot(is.character(`moisturePercentage`), length(`moisturePercentage`) == 1)
        self$`moisturePercentage` <- `moisturePercentage`
      }
      if (!missing(`fatPercentage`)) {
        stopifnot(is.character(`fatPercentage`), length(`fatPercentage`) == 1)
        self$`fatPercentage` <- `fatPercentage`
      }
      if (!missing(`detectionLimit`)) {
        stopifnot(is.character(`detectionLimit`), length(`detectionLimit`) == 1)
        self$`detectionLimit` <- `detectionLimit`
      }
      if (!missing(`quantificationLimit`)) {
        stopifnot(is.character(`quantificationLimit`), length(`quantificationLimit`) == 1)
        self$`quantificationLimit` <- `quantificationLimit`
      }
      if (!missing(`leftCensoredData`)) {
        stopifnot(is.character(`leftCensoredData`), length(`leftCensoredData`) == 1)
        self$`leftCensoredData` <- `leftCensoredData`
      }
      if (!missing(`contaminationRange`)) {
        stopifnot(is.character(`contaminationRange`), length(`contaminationRange`) == 1)
        self$`contaminationRange` <- `contaminationRange`
      }
      if (!missing(`uncertaintyValue`)) {
        stopifnot(is.character(`uncertaintyValue`), length(`uncertaintyValue`) == 1)
        self$`uncertaintyValue` <- `uncertaintyValue`
      }
    },
    toJSON = function() {
      AssayObject <- list()
      if (!is.null(self$`name`)) {
        AssayObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        AssayObject[['description']] <- self$`description`
      }
      if (!is.null(self$`moisturePercentage`)) {
        AssayObject[['moisturePercentage']] <- self$`moisturePercentage`
      }
      if (!is.null(self$`fatPercentage`)) {
        AssayObject[['fatPercentage']] <- self$`fatPercentage`
      }
      if (!is.null(self$`detectionLimit`)) {
        AssayObject[['detectionLimit']] <- self$`detectionLimit`
      }
      if (!is.null(self$`quantificationLimit`)) {
        AssayObject[['quantificationLimit']] <- self$`quantificationLimit`
      }
      if (!is.null(self$`leftCensoredData`)) {
        AssayObject[['leftCensoredData']] <- self$`leftCensoredData`
      }
      if (!is.null(self$`contaminationRange`)) {
        AssayObject[['contaminationRange']] <- self$`contaminationRange`
      }
      if (!is.null(self$`uncertaintyValue`)) {
        AssayObject[['uncertaintyValue']] <- self$`uncertaintyValue`
      }

      AssayObject
    },
    fromJSON = function(AssayJson) {
      AssayObject <- jsonlite::fromJSON(AssayJson)
      if (!is.null(AssayObject$`name`)) {
        self$`name` <- AssayObject$`name`
      }
      if (!is.null(AssayObject$`description`)) {
        self$`description` <- AssayObject$`description`
      }
      if (!is.null(AssayObject$`moisturePercentage`)) {
        self$`moisturePercentage` <- AssayObject$`moisturePercentage`
      }
      if (!is.null(AssayObject$`fatPercentage`)) {
        self$`fatPercentage` <- AssayObject$`fatPercentage`
      }
      if (!is.null(AssayObject$`detectionLimit`)) {
        self$`detectionLimit` <- AssayObject$`detectionLimit`
      }
      if (!is.null(AssayObject$`quantificationLimit`)) {
        self$`quantificationLimit` <- AssayObject$`quantificationLimit`
      }
      if (!is.null(AssayObject$`leftCensoredData`)) {
        self$`leftCensoredData` <- AssayObject$`leftCensoredData`
      }
      if (!is.null(AssayObject$`contaminationRange`)) {
        self$`contaminationRange` <- AssayObject$`contaminationRange`
      }
      if (!is.null(AssayObject$`uncertaintyValue`)) {
        self$`uncertaintyValue` <- AssayObject$`uncertaintyValue`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "description": %s,
           "moisturePercentage": %s,
           "fatPercentage": %s,
           "detectionLimit": %s,
           "quantificationLimit": %s,
           "leftCensoredData": %s,
           "contaminationRange": %s,
           "uncertaintyValue": %s
        }',
        self$`name`,
        self$`description`,
        self$`moisturePercentage`,
        self$`fatPercentage`,
        self$`detectionLimit`,
        self$`quantificationLimit`,
        self$`leftCensoredData`,
        self$`contaminationRange`,
        self$`uncertaintyValue`
      )
    },
    fromJSONString = function(AssayJson) {
      AssayObject <- jsonlite::fromJSON(AssayJson)
      self$`name` <- AssayObject$`name`
      self$`description` <- AssayObject$`description`
      self$`moisturePercentage` <- AssayObject$`moisturePercentage`
      self$`fatPercentage` <- AssayObject$`fatPercentage`
      self$`detectionLimit` <- AssayObject$`detectionLimit`
      self$`quantificationLimit` <- AssayObject$`quantificationLimit`
      self$`leftCensoredData` <- AssayObject$`leftCensoredData`
      self$`contaminationRange` <- AssayObject$`contaminationRange`
      self$`uncertaintyValue` <- AssayObject$`uncertaintyValue`
    }
  )
)
