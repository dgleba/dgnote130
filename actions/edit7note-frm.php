<!DOCTYPE html>
<html>
	<head>
		<title>Edit Form Mobile</title>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
		<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
		<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>

	</head>

	<body>

		<form action="index.php" id="form7" method="POST" data-ajax="false">

			<div data-role="fieldcontain">
				<label for="notef2">Note:</label>
				<textarea cols="40" rows="8" name="notef2" id="notef2"> <?php echo $rrecord -> strval('note_fld'); ?> </textarea>
			</div>

			<div data-role="fieldcontain">
				<label for="text">TagsFld:</label>
				<input type="text"  name="tagsf2" id="tagsf2" value="<?php echo $rrecord -> strval('tags_fld'); ?>" />
			</div>

			<label for="select" class="select">Active:</label>
			<select name="active2" id="active1">
				<option value="Yes">Yes</option>
				<option value="No">No</option>
			</select>

			<input type="hidden" name="-action" value="edit7note" />
			<input type="hidden" name="recid" value="<?php echo $rid ?>" />
			<input type="hidden" name="urlsave" value="<?php echo $url ?>" />

			<input type="submit" value="Submit" id="submit" name="submit" data-theme="a" />
		</form>

	</body>

</html>
