---

---

class ViewModel
  constructor: ->
    @loading = ko.observable false
    @sessionToken = ko.observable null
    @currentUser = ko.observable(
      isAdmin: true
    )

window.viewModel = new ViewModel

$(document).ready => 
  ko.applyBindings viewModel
  viewModel.sessionToken $.cookie('session_token')

