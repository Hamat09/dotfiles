--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "wlctl",
	float = true,
	size = { 1000, 800 },
	dim_around = true,
	match = { class = "kitty", title = "wlctl_tui_win" },
})

hl.window_rule({
	name = "wiremix",
	float = true,
	size = { 800, 700 },
	dim_around = true,
	match = { class = "kitty", title = "wiremix_tui_win" },
})

hl.window_rule({
	name = "btop",
	float = true,
	size = { 1000, 600 },
	dim_around = true,
	match = { class = "kitty", title = "btop_tui_win" },
})

hl.window_rule({
	name = "pywal",
	float = true,
	size = { 800, 300 },
	match = { class = "kitty", title = "pywal_tui_win" },
})

hl.window_rule({
	name = "termfilechooser",
	float = true,
	size = { 800, 700 },
	dim_around = true,
	match = { class = "kitty", title = "termfilechooser" },
})

hl.window_rule({
	name = "app-menu",
	float = true,
	size = { 800, 300 },
	match = { class = "kitty", title = "app-menu_tui_win" },
})

hl.window_rule({
	name = "kdeconnect-indicator",
	float = true,
	size = { 1000, 700 },
	match = { class = "org.kde.kdeconnect.app", title = "KDE Connect" },
})

hl.window_rule({
	name = "firefox",
	scrolling_width = 1.0,
	match = { class = "firefox", title = "Mozilla Firefox" },
})
--Layer Rules--

hl.layer_rule({
	match = { namespace = "rofi" },
	blur = true,
	blur_popups = true,
	ignore_alpha = 0.5,
})

hl.layer_rule({
	match = { namespace = "waybar" },
	blur = true,
	blur_popups = true,
	ignore_alpha = 0.5,
})

hl.layer_rule({
	match = { namespace = "notifications" },
	blur = true,
	blur_popups = true,
	ignore_alpha = 0.5,
})

hl.layer_rule({
	match = { namespace = "Zen Browser" },
	blur = true,
	blur_popups = true,
	ignore_alpha = 0.5,
})
