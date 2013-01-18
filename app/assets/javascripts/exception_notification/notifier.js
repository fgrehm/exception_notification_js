window.ExceptionNotification = {
  notify: function(evt) {
    console.log("Caught[via 'error' event]:  '" + evt.message + "' from " + evt.filename + ":" + evt.lineno);
    console.log(evt); // has srcElement / target / etc
  }
}
