# RAKIP Generic model
#
# TODO
#
# OpenAPI spec version: 1.0.4
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Product Class
#'
#' @field name 
#' @field description 
#' @field unit 
#' @field method 
#' @field packaging 
#' @field treatment 
#' @field originCountry 
#' @field originArea 
#' @field fisheriesArea 
#' @field productionDate 
#' @field expiryDate 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Product <- R6::R6Class(
  'Product',
  public = list(
    `name` = NULL,
    `description` = NULL,
    `unit` = NULL,
    `method` = NULL,
    `packaging` = NULL,
    `treatment` = NULL,
    `originCountry` = NULL,
    `originArea` = NULL,
    `fisheriesArea` = NULL,
    `productionDate` = NULL,
    `expiryDate` = NULL,
    initialize = function(`name`, `description`, `unit`, `method`, `packaging`, `treatment`, `originCountry`, `originArea`, `fisheriesArea`, `productionDate`, `expiryDate`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`unit`)) {
        stopifnot(is.character(`unit`), length(`unit`) == 1)
        self$`unit` <- `unit`
      }
      if (!missing(`method`)) {
        stopifnot(is.list(`method`), length(`method`) != 0)
        lapply(`method`, function(x) stopifnot(is.character(x)))
        self$`method` <- `method`
      }
      if (!missing(`packaging`)) {
        stopifnot(is.list(`packaging`), length(`packaging`) != 0)
        lapply(`packaging`, function(x) stopifnot(is.character(x)))
        self$`packaging` <- `packaging`
      }
      if (!missing(`treatment`)) {
        stopifnot(is.list(`treatment`), length(`treatment`) != 0)
        lapply(`treatment`, function(x) stopifnot(is.character(x)))
        self$`treatment` <- `treatment`
      }
      if (!missing(`originCountry`)) {
        stopifnot(is.character(`originCountry`), length(`originCountry`) == 1)
        self$`originCountry` <- `originCountry`
      }
      if (!missing(`originArea`)) {
        stopifnot(is.character(`originArea`), length(`originArea`) == 1)
        self$`originArea` <- `originArea`
      }
      if (!missing(`fisheriesArea`)) {
        stopifnot(is.character(`fisheriesArea`), length(`fisheriesArea`) == 1)
        self$`fisheriesArea` <- `fisheriesArea`
      }
      if (!missing(`productionDate`)) {
        stopifnot(is.character(`productionDate`), length(`productionDate`) == 1)
        self$`productionDate` <- `productionDate`
      }
      if (!missing(`expiryDate`)) {
        stopifnot(is.character(`expiryDate`), length(`expiryDate`) == 1)
        self$`expiryDate` <- `expiryDate`
      }
    },
    toJSON = function() {
      ProductObject <- list()
      if (!is.null(self$`name`)) {
        ProductObject[['name']] <- self$`name`
      }
      if (!is.null(self$`description`)) {
        ProductObject[['description']] <- self$`description`
      }
      if (!is.null(self$`unit`)) {
        ProductObject[['unit']] <- self$`unit`
      }
      if (!is.null(self$`method`)) {
        ProductObject[['method']] <- self$`method`
      }
      if (!is.null(self$`packaging`)) {
        ProductObject[['packaging']] <- self$`packaging`
      }
      if (!is.null(self$`treatment`)) {
        ProductObject[['treatment']] <- self$`treatment`
      }
      if (!is.null(self$`originCountry`)) {
        ProductObject[['originCountry']] <- self$`originCountry`
      }
      if (!is.null(self$`originArea`)) {
        ProductObject[['originArea']] <- self$`originArea`
      }
      if (!is.null(self$`fisheriesArea`)) {
        ProductObject[['fisheriesArea']] <- self$`fisheriesArea`
      }
      if (!is.null(self$`productionDate`)) {
        ProductObject[['productionDate']] <- self$`productionDate`
      }
      if (!is.null(self$`expiryDate`)) {
        ProductObject[['expiryDate']] <- self$`expiryDate`
      }

      ProductObject
    },
    fromJSON = function(ProductJson) {
      ProductObject <- jsonlite::fromJSON(ProductJson)
      if (!is.null(ProductObject$`name`)) {
        self$`name` <- ProductObject$`name`
      }
      if (!is.null(ProductObject$`description`)) {
        self$`description` <- ProductObject$`description`
      }
      if (!is.null(ProductObject$`unit`)) {
        self$`unit` <- ProductObject$`unit`
      }
      if (!is.null(ProductObject$`method`)) {
        self$`method` <- ProductObject$`method`
      }
      if (!is.null(ProductObject$`packaging`)) {
        self$`packaging` <- ProductObject$`packaging`
      }
      if (!is.null(ProductObject$`treatment`)) {
        self$`treatment` <- ProductObject$`treatment`
      }
      if (!is.null(ProductObject$`originCountry`)) {
        self$`originCountry` <- ProductObject$`originCountry`
      }
      if (!is.null(ProductObject$`originArea`)) {
        self$`originArea` <- ProductObject$`originArea`
      }
      if (!is.null(ProductObject$`fisheriesArea`)) {
        self$`fisheriesArea` <- ProductObject$`fisheriesArea`
      }
      if (!is.null(ProductObject$`productionDate`)) {
        self$`productionDate` <- ProductObject$`productionDate`
      }
      if (!is.null(ProductObject$`expiryDate`)) {
        self$`expiryDate` <- ProductObject$`expiryDate`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "description": %s,
           "unit": %s,
           "method": [%s],
           "packaging": [%s],
           "treatment": [%s],
           "originCountry": %s,
           "originArea": %s,
           "fisheriesArea": %s,
           "productionDate": %s,
           "expiryDate": %s
        }',
        self$`name`,
        self$`description`,
        self$`unit`,
        lapply(self$`method`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`packaging`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`treatment`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`originCountry`,
        self$`originArea`,
        self$`fisheriesArea`,
        self$`productionDate`,
        self$`expiryDate`
      )
    },
    fromJSONString = function(ProductJson) {
      ProductObject <- jsonlite::fromJSON(ProductJson)
      self$`name` <- ProductObject$`name`
      self$`description` <- ProductObject$`description`
      self$`unit` <- ProductObject$`unit`
      self$`method` <- ProductObject$`method`
      self$`packaging` <- ProductObject$`packaging`
      self$`treatment` <- ProductObject$`treatment`
      self$`originCountry` <- ProductObject$`originCountry`
      self$`originArea` <- ProductObject$`originArea`
      self$`fisheriesArea` <- ProductObject$`fisheriesArea`
      self$`productionDate` <- ProductObject$`productionDate`
      self$`expiryDate` <- ProductObject$`expiryDate`
    }
  )
)
