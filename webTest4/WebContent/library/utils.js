function makeid(len) {
	var text = "";
	var char_list = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
	for (var i = 0; i < len; i++) {
		text += char_list.charAt(Math.floor(Math.random()
				* char_list.length));
	}
	return text;
}