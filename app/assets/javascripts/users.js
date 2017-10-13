$(document).ready(function() {
   var code = $('.codemirror-textarea')[0];
    window.editor = CodeMirror.fromTextArea(code, {
     lineNumbers :true,
     mode: "text/x-ruby"
   })

   $('form').on("ajax:success",function(e, data,status,xhr){
    $('#result').html(e.detail[0]);
   });


});
