function remove_fields(link) {
	$(link).prev("input[type=hidden]").val("1");
	var fields = $(link).closest(".fields");
	fields.hide();
	fields.next(".add").hide();
}
	

function add_fields(link, association, content) {
	var new_id = new Date().getTime();
	var regexp = new RegExp("new_" + association, "g");
	var target = $(link).parent().prev(":visible");
	if (target.length == 0)
		target = $(link).parent();
	target.append(content.replace(regexp, new_id));
}