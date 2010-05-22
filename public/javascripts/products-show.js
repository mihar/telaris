document.observe("dom:loaded", function() {
}) 

function transition(hide, show) {
  new Effect.Opacity(hide, {from: 1.0, to: 0.0, duration: 0.25, afterFinish: function() {
      hide.removeClassName("active")
      show.addClassName("active")
      show.setOpacity("0.0")
      new Effect.Opacity(show, {from: 0.0, to: 1.0, duration: 0.25, afterFinish: function() {
      }})
  }})
}

Event.addBehavior({
  "#table_nav li a:click" : function() {
    var current_table = this.href.substr(this.href.indexOf("#")+1)
    $$("#table_nav .active").invoke("removeClassName", "active")
    this.up().addClassName("active")
    hide = $$(".tables .table.active").first()
    show = $$(".tables .table." + current_table).first()
    transition(hide, show)
    return false
  },
  
  "#addon_nav li a:click" : function() {
    var current_table = this.href.substr(this.href.indexOf("#")+1)
    $$("#addon_nav .active").invoke("removeClassName", "active")
    this.up().addClassName("active")
    hide = $$(".addon_category.active").first()
    show = $$(".addon_category." + current_table).first()
    transition(hide, show)
    return false
  }
})