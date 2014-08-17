$(function() {
	$("input").keypress(function(e) {
		var keyCode = e.keyCode ? e.keyCode : e.which ? e.which : e.charCode;
		if (keyCode == 13) {
			var i;
			for (i = 0; i < this.form.elements.length; i++)
				if (this == this.form.elements[i])
					break;
			i = (i + 1) % this.form.elements.length;
			this.form.elements[i].focus();
			return false;
		} else
			return true;
	});

});