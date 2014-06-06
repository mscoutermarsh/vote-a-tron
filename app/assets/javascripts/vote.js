$(document).ready(function() {
  var voteid=0;
  // get # of votes for contestant
  function updateVotes() {
    $.ajax({
      type: "GET",
      cache: false,
      url: "api/polls/1",
      success: function(data) {
        $("#votes1").html(data['contestants'][0].votes + " Votes");
        $("#votes2").html(data['contestants'][1].votes + " Votes");
        $("#votes3").html(data['contestants'][2].votes + " Votes");

        $("#name1").html(data['contestants'][0].name);
        $("#name2").html(data['contestants'][1].name);
        $("#name3").html(data['contestants'][2].name);
      },
      error: function(data) {

      }
    });
  }
  //
  // Submit a vote
  function submitVote(id) {
    $.ajax({
      type: "POST",
      url: "api/polls/1/vote?contestant_id="+id,
      success: function(data) {
        alert('hi');
        $("#question"+id).html(data.question);
        voteid = data.id;
        $("#confirm"+id).show();
      },
      error: function(data) {
        $("#confirm"+id).hide();
        var obj = jQuery.parseJSON(data.responseText);
        $("#message"+id).html(obj.message);
        $("#message"+id).show('fast');
      }
    });
  }

  // Submit the answer to the math problem.
function confirmVote(id) {
    event.preventDefault();
    $("#confirm"+id).hide();

    $.ajax({
       type: "POST",
       url: "api/polls/1/confirm_vote?vote_id="+voteid+"&answer=" + $("#math"+id).val(),
       success: function(data) {
          $("#confirm"+id).html(data.message);
          $("#confirm"+id).show('fast');
          updateVotes(id);
          $.cookie('pm2014', true, { expires: 7 });
       },
       error: function(data) {
          $("#confirm"+id).hide();
          var obj = jQuery.parseJSON(data.responseText);
          $("#message"+id).html(obj.message);
          $("#message"+id).show('fast');
          setTimeout(function() {$('#message'+id).hide();$('#confirm'+id).show();} , 2100);
       }
     });
  }
  // load vote counts
  updateVotes();

  $("#confirm1").hide();
  $("#message1").hide();

  $("#confirm2").hide();
  $("#message2").hide();

  $("#confirm3").hide();
  $("#message3").hide();

  if ($.cookie('pm2014')) {
    $("#contestant1").hide();
    $("#contestant2").hide();
    $("#contestant3").hide();

    $("#confirm1").html('Thanks for voting!');
    $("#confirm1").show('fast');
    $("#confirm2").html('Thanks for voting!');
    $("#confirm2").show('fast');
    $("#confirm3").html('Thanks for voting!');
    $("#confirm3").show('fast');
  }

  // Submit vote
  $('#contestant1').click(function(event) {
    event.preventDefault();
    if(!$('#contestant1').hasClass('disabled')){
      $("#contestant1").hide();
      $("#contestant2").addClass('disabled');
      $("#contestant3").addClass('disabled');
      submitVote(1);
    }
  });

  $('#contestant2').click(function(event) {
    event.preventDefault();
    if(!$('#contestant2').hasClass('disabled')){
      $("#contestant2").hide();
      $("#contestant1").addClass('disabled');
      $("#contestant3").addClass('disabled');
      submitVote(2);
    }
  });

  $('#contestant3').click(function(event) {
    event.preventDefault();
    if(!$('#contestant3').hasClass('disabled')){
      $("#contestant3").hide();
      $("#contestant1").addClass('disabled');
      $("#contestant2").addClass('disabled');
      submitVote(3);
    }
  });

  $('#submitMath1').click(function(event) {
    confirmVote(1);
  });
  $('#submitMath2').click(function(event) {
    confirmVote(2);
  });
  $('#submitMath3').click(function(event) {
    confirmVote(3);
  });
});
