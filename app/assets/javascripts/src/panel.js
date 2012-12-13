max_height = 200;

$(document).ready(function(){
	$(".show-panel").bind('click', showPanel);
	$(".hide-panel").bind('click', hidePanel);
})

function togglePanel() {
	if ($('#profile-panel').css('height') == max_height+'px') {
		hidePanel();
	} else {
		showPanel();
	}
}

function showPanel() {
	if ($('#profile-panel').css('height') == '0px') {
		$('#profile-panel').animate({
			height: '+='+max_height
		}, 1000, function() {
		});
	}
}

function hidePanel() {
	if ($('#profile-panel').css('height') == max_height+'px') {
		$('#profile-panel').animate({
			height: '-='+max_height
		}, 1000, function() {
		});
	}
}

