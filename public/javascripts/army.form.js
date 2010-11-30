function unit_sum(field)
{
	var unit = $(field).parents(".unit");
	var sum = 0;
	unit.find(".unit_option_points:visible").each(function() {
		console.log(this);
		var number = parseFloat($(this).val());
		console.log("number: " + number);
		if (!isNaN(number))
			sum += number;
	});
	console.log("unit_sum sum: " + sum);
	fade_text(unit.find(".unit_point_total"), sum);
	all_sum();
}

function all_sum()
{
	var total = $(".army_point_total");
	var sum = 0;
	$(".unit_point_total:visible").each(function() {
		console.log(this);
		var number = parseFloat($(this).text());
		console.log("number: " + number);
		if (!isNaN(number))
			sum += number;
	});
	console.log("all_sum sum: " + sum);
	var limit = 0;
	try {
		limit = parseFloat($("input#army_point_total").val());
	} catch (e) { limit = 0; }
	if (isNaN(limit))
		limit = 0;
	
	console.log("limit: " + limit)
	
	try {
	
		if (sum <= limit)
			total.removeClass('red').addClass('green');
		else
			total.removeClass('green').addClass('red');
	} catch (e) { console.log("Could not set red/green classes.")}
	
	total.text(sum);
}

function fade_text(element, text)
{
	element.text(text);
}			
	
$(document).ready(function() {
	all_sum();
});