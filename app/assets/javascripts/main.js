// function next_question() {
//   console.log('clicked!');
//   // $('.question').next().css('display', '')
//   $('.question:not(.hidden)').next().show();
// }

$.fn.bels_awesome_func = function(e){
  e.preventDefault();
  answer = $('input').val();
  if answer === ('<%= @question.answers.first.to_json %>'){
    $(this).parent().next('.question').show();
    $(this).parent().hide();
  // };
// };

$(function() {
  $('.button').on('click', function() {
    $(this).bels_awesome_func();
  });

    $('#logo-pic').on('mouseenter', function(){
    Sonifizer_array([10, 10, 10, 1000], Sonifizer_play)
  })

});