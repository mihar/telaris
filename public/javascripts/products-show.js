document.observe("dom:loaded", function() {
}) 

Event.addBehavior({
  "#table_nav li a:click" : function() {
    var current_table = this.href.substr(this.href.indexOf("#")+1)
    $$("#table_nav .active").invoke("removeClassName", "active")
    this.up().addClassName("active")
    $$(".tables .table").invoke("removeClassName", "active")
    $$(".tables .table." + current_table).invoke("addClassName", "active")
    return false
  }
})