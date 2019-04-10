'use strict';
/* globals $, app */

define('admin/plugins/tigertown', ['settings'], function(Settings) {

	var ACP = {};

	ACP.init = function() {
		Settings.load('tigertown', $('.tigertown-settings'));

		$('#save').on('click', function() {
			Settings.save('tigertown', $('.tigertown-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'tigertown-saved',
					title: 'Settings Saved',
					message: 'Tigertown settings saved'
				});
			});
		});
	};

	return ACP;
});