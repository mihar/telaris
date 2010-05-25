document.observe("dom:loaded", function() {
  $$(".lang").invoke("hide")
  $$(".lang.sl").first().show()
  $$("#local_lang .sl").first().hide()
}) 

Event.addBehavior({
  "#local_lang li a:click" : function() {
    var current_lang = this.href.substr(this.href.indexOf("#")+1, 2)
    // Control buttons
    $$("#local_lang li a").invoke("show")
    $$("#local_lang li a."+current_lang).first().hide()
    // Control inputs
    $$(".lang").invoke("hide")
    appear = $$(".lang."+current_lang).first()
    new Effect.Appear(appear, {duration: 0.25})
    
    return false
  },
  
  "#product_system_photo_remove:click" : function() {
    if (confirm("Ste prepričani?")) {
      this.hide()
      this.previous().hide()
      this.up().previous().hide()
      blank_hidden_input = new Element('input', {type: 'hidden', name: 'product[remove_system_photo]', value: 'true'})
      this.up().insert(blank_hidden_input, {position: 'bottom'})
    }
    
    return false 
  },

  "#product_technical_photo_remove:click" : function() {
    if (confirm("Ste prepričani?")) {
      this.hide()
      this.previous().hide()
      this.up().previous().hide()
      blank_hidden_input = new Element('input', {type: 'hidden', name: 'product[remove_technical_photo]', value: 'true'})
      this.up().insert(blank_hidden_input, {position: 'bottom'})
    }

    return false 
  }
})