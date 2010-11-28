function remove_fields(link) {
	$(link).prev("input[type=hidden]").val("1");
	var fields = $(link).closest(".fields");
	fields.next(".add").hide();
	fields.fadeOut();
}
	

function add_fields(link, association, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_" + association, "g");
	var target = $(link).parent().prev(":visible");
	if (target.length == 0)
		target = $(link).parent();
	var new_fields = $(content.replace(regexp, new_id));
	new_fields.hide().appendTo(target).fadeIn();
	//$(content.replace(regexp, new_id)).appendTo(target).fadeIn(); //.slideDown('slow');
	//target.append(content.replace(regexp, new_id)).slideDown('slow');
}