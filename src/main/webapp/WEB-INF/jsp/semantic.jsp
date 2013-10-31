<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Semantic</title>
<link rel="stylesheet" type="text/css" href="css/semantic.css">
</head>
<body>
<div class="ui menu">
  <a class="active item">
    <i class="home icon"></i> Home
  </a>
  <a class="item">
    <i class="mail icon"></i> Messages
  </a>
  <a class="item">
    <i class="user icon"></i> Friends
  </a>
  <div class="right menu">
    <div class="borderless vertically fitted item">
      <div class="ui icon input">
        <input type="text" placeholder="Search...">
        <i class="search link icon"></i>
      </div>
    </div>
    <div class="ui dropdown item">
      Language <i class="dropdown icon"></i>
      <div class="menu">
        <a class="item">English</a>
        <a class="item">Russian</a>
        <a class="item">Spanish</a>
      </div>
    </div>
  </div>
</div>

<div class="ui test modal transition hidden" style="margin-top: -164px;">
    <i class="close icon"></i>
    <div class="header">
      Profile Picture
    </div>
    <div class="content">
      <div class="left">
        <img class="ui fluid image" src="<%=request.getContextPath() %>/images/demo/avatar2.jpg">
      </div>
      <div class="right">
        <div class="ui header">Are you sure you want to upload that?</div>
        <p>I mean it's not really the best profile photo.</p>
        <p>It's resampled to like two times the size it's suppose to be. Our image detection software also says it might even be inappropriate.</p>
      </div>
    </div>
    <div class="actions">
      <div class="ui black button">
        Cancel
      </div>
      <div class="ui green right labeled icon button">
        Add Photo
        <i class="checkmark icon"></i>
      </div>
    </div>
  </div>

<div class="ui primary test button">Launch modal</div>
<div class="info message">The template for error messages can be modified by adjusting settings.template.error</div>
<div class="ui form segment">
  <p>Let's go ahead and get you signed up.</p>
  <div class="two fields">
    <div class="field">
      <label>First Name</label>
      <input placeholder="First Name" name="first-name" type="text">
    </div>
    <div class="field">
      <label>Last Name</label>
      <input placeholder="Last Name" name="last-name" type="text">
    </div>
  </div>
  <div class="field">
    <label>Username</label>
    <input placeholder="Username" name="username" type="text">
  </div>
  <div class="field">
    <label>Password</label>
    <input type="password" name="password">
  </div>
  <div class="inline field">
    <div class="ui checkbox">
      <input type="checkbox" name="terms">
      <label>I agree to the Terms and Conditions</label>
    </div>
  </div>
  <div class="ui blue submit button">Submit</div>
</div>

<table class="ui sortable table segment">
  <thead>
    <tr><th>Name</th>
    <th>Status</th>
    <th>Notes</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>John</td>
      <td>Approved</td>
      <td>None</td>
    </tr>
    <tr>
      <td>Jamie</td>
      <td>Approved</td>
      <td>Requires call</td>
    </tr>
    <tr>
      <td>Jill</td>
      <td>Denied</td>
      <td>None</td>
    </tr>
  </tbody>
  <tfoot>
    <tr><th colspan="3">
      <div class="ui blue labeled icon button"><i class="user icon"></i> Add User</div>
    </th>
  </tr></tfoot>
</table>

<br/>

<div class="ui circular rotate reveal image">
  <img class="visible content" src="<%=request.getContextPath() %>/images/demo/stickfigure.jpg">
  <img class="hidden content" src="<%=request.getContextPath() %>/images/demo/photo2.jpg">
</div>
<br/>
<div class="ui two column grid">
  <div class="column">
    <div class="ui piled blue segment">
      <h2 class="ui header">
        <i class="icon inverted circular blue comment"></i> Comments
      </h2>
      <div class="ui comments">
        <div class="comment">
          <a class="avatar">
            <img src="<%=request.getContextPath() %>/images/demo/avatar.jpg">
          </a>
          <div class="content">
            <a class="author">Dog Doggington</a>
            <div class="metadata">
              <span class="date">2 days ago</span>
            </div>
            <div class="text">
              I think this is a great idea and i am voting on it
            </div>
            <div class="actions">
              <a class="reply">Reply</a>
              <a class="delete">Delete</a>
            </div>
          </div>
        </div>
        <div class="comment">
          <a class="avatar">
            <img src="<%=request.getContextPath() %>/images/demo/avatar2.jpg">
          </a>
          <div class="content">
            <a class="author">Pawfin Dog</a>
            <div class="metadata">
              <span class="date">2 days ago</span>
            </div>
            <div class="text">
              I think this is a great idea and i am voting on it
            </div>
            <div class="actions">
              <a class="reply">Reply</a>
              <a class="delete">Delete</a>
            </div>
          </div>
        </div>
        <div class="comment">
          <a class="avatar">
            <img src="<%=request.getContextPath() %>/images/demo/avatar.jpg">
          </a>
          <div class="content">
            <a class="author">Dog Doggington</a>
            <div class="metadata">
              <span class="date">2 days ago</span>
            </div>
            <div class="text">
              I think this is a great idea and i am voting on it
            </div>
            <div class="actions">
              <a class="reply">Reply</a>
              <a class="delete">Delete</a>
            </div>
          </div>
        </div>
        <form class="ui reply form">
          <div class="field">
            <textarea></textarea>
          </div>
          <div class="ui fluid blue labeled submit icon button">
            <i class="icon edit"></i> Add Reply
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/semantic.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){


	  // selector cache
	  var
	    $menuItem = $('.menu a.item, .menu .link.item'),
	    $dropdown = $('.ui.dropdown'),
	    // alias
	    handler = {

	      activate: function() {
	        if(!$(this).hasClass('dropdown')) {
	          $(this)
	            .addClass('active')
	            .closest('.ui.menu')
	            .find('.item')
	              .not($(this))
	              .removeClass('active')
	          ;
	        }
	      }

	    }
	  ;

	  $dropdown
	    .dropdown({
	      on: 'hover'
	    })
	  ;

	  $menuItem
	    .on('click', handler.activate)
	  ;
	
	  $('.fade.icon')
	  .popup('setting', 'transition', 'fade up')
	  .popup('toggle')
	;
	  
$('.ui.form')
.form({
  firstName: {
    identifier  : 'first-name',
    rules: [
      {
        type   : 'empty',
        prompt : 'Please enter your first name'
      }
    ]
  },
  lastName: {
    identifier  : 'last-name',
    rules: [
      {
        type   : 'empty',
        prompt : 'Please enter your last name'
      }
    ]
  },
  username: {
    identifier : 'username',
    rules: [
      {
        type   : 'empty',
        prompt : 'Please enter a username'
      }
    ]
  },
  password: {
    identifier : 'password',
    rules: [
      {
        type   : 'empty',
        prompt : 'Please enter a password'
      },
      {
        type   : 'length[6]',
        prompt : 'Your password must be at least 6 characters'
      }
    ]
  },
  terms: {
    identifier : 'terms',
    rules: [
      {
        type   : 'checked',
        prompt : 'You must agree to the terms and conditions'
      }
    ]
  }
},{inline : true,
on     : 'blur'})

$('.button').click(function(){
	          $('.test.modal')
	            .modal('show')
	          ;
})
})
;

</script>
</body>
</html>