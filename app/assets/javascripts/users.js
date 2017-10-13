$(document).ready(function() {
   var code = $('.codemirror-textarea')[0];
    window.editor = CodeMirror.fromTextArea(code, {
     lineNumbers :true,
     mode: "text/x-ruby"
   })


});
// putting outside document ready so that submitstuff is in global scope
window.submitstuff = function(){
  event.preventDefault();
  var values = getFormValues();
  console.log(values);
  $.ajax({
    url: '/users',
    method: 'POST',
    dataType: 'JSON',
    data: values
  }).done(function(responseData){
    console.log(responseData);
  })
}

window.getFormValues = function getFormValues() {
var value = window.editor.getValue()
return {
  "code": value
}
}
