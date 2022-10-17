Modifier = require './modifier'
i18next = require 'i18next'

class ModifierPrimalProtection extends Modifier

  type: "ModifierPrimalProtection"
  @type: "ModifierPrimalProtection"

  @modifierName:i18next.t("modifiers.primal_protection_name")
  @description:i18next.t("modifiers.primal_protection_def")

  @isHiddenToUI: true

  @createContextObject: (options) ->
    contextObject = super(options)
    modifiersContextObjects = [Modifier.createContextObject()]
    modifiersContextObjects[0].description = @description
    modifiersContextObjects[0].modifierName = @modifierName
    contextObject.activeInHand = false
    contextObject.activeInDeck = false
    contextObject.activeInSignatureCards = false
    contextObject.activeOnBoard = true
    contextObject.modifiersContextObjects = modifiersContextObjects
    contextObject.isAura = true
    contextObject.auraIncludeSelf = false
    contextObject.auraIncludeAlly = true
    contextObject.auraIncludeEnemy = false
    contextObject.auraIncludeGeneral = false
    contextObject.auraRadius = 0
    return contextObject

module.exports = ModifierPrimalProtection
