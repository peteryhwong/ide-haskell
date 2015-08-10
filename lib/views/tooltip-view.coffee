class TooltipMessage
  constructor: (@text) ->

class TooltipView extends HTMLElement
  setMessage: (message) ->
    @inner.textContent = message.text
    @

  createdCallback: ->
    @appendChild @inner = document.createElement 'div'

  attachedCallback: ->
    @parentElement.classList.add 'ide-haskell'

TooltipElement =
  document.registerElement 'ide-haskell-tooltip',
    prototype: TooltipView.prototype

module.exports = {
  TooltipMessage,
  TooltipElement
}
