(function() {
  var ViewModel;

  ViewModel = (function() {
    function ViewModel() {
      this.loading = ko.observable(false);
      this.sessionToken = ko.observable(null);
    }

    return ViewModel;

  })();

  window.viewModel = new ViewModel;

  $(document).ready((function(_this) {
    return function() {
      ko.applyBindings(viewModel);
      return viewModel.sessionToken($.cookie('session_token'));
    };
  })(this));

}).call(this);
