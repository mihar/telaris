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
  }
})