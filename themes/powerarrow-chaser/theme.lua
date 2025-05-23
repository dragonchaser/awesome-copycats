--[[

     Powerarrow Dark Awesome WM theme
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local dpi   = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

--local pulse = require("pulseaudio_widget")
--pulse.notification_timeout_seconds = 5

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-chaser"
theme.wallpaper                                 = theme.dir .. "/wall_yggdrasil.png"
theme.font                                      = "Terminus 8"
theme.fg_normal                                 = "#DDDDFF"
theme.fg_focus                                  = "#EA6F81"
theme.fg_focus                                  = "#7CA2EE"
theme.fg_urgent                                 = "#CC9393"
theme.bg_normal                                 = "#1A1A1A"
theme.bg_focus                                  = "#313131"
theme.bg_urgent                                 = "#1A1A1A"
theme.border_width                              = dpi(2)
theme.corner_radius                             = dpi(5)
--theme.border_normal                             = "#3F3F3F"
--theme.border_focus                              = "#7F7F7F"
theme.border_normal                             = "#252525"
theme.border_focus                              = "#7CA2EE"
theme.border_marked                             = "#CC9393"
theme.tasklist_bg_focus                         = "#1A1A1A"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.bg_systray                                = theme.bg_focus
theme.menu_height                               = dpi(16)
theme.menu_width                                = dpi(140)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_clock                              = theme.dir .. "/icons/clock.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.widget_net_wired                          = theme.dir .. "/icons/net_wired.png"
theme.gnome_icon                                = theme.dir .. "/icons/gnome.png"
theme.widget_keyboard                           = theme.dir .. "/icons/task.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = dpi(4)
theme.gap_single_client                         = true
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

local markup = lain.util.markup
local separators = lain.util.separators

local keyboardlayout = awful.widget.keyboardlayout:new()
local keyboardIcon = wibox.widget.imagebox(theme.widget_keyboard)

beautiful.hotkeys_shape = function(cr,w,h)
        gears.shape.rounded_rect(cr, w, h, theme.corner_radius)
end

beautiful.hotkeys_border_color = '#ff0000'
beautiful.hotkeys_border_width = theme.bg_width

local gnome_icon = wibox.widget.imagebox(theme.gnome_icon)
local gnome_button = awful.widget.button {
  image = theme.gnome_icon
}
gnome_button:buttons(gears.table.join(
  gnome_button:buttons(),
  awful.button({}, 1, nil, function()
    awful.util.mymainmenu:show()
  end)
))

-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
    --"date +'%a %d %b %R %S'", 1,
local clock = awful.widget.watch(
    "date +'%A %Y/%m/%d %R:%S'", 1,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
)

local countdown = awful.widget.watch(
  "/home/chaser/bin/probezeit.sh", 1,
  function(widget, stdout)
    widget:set_markup(" " .. markup.font(theme.font, stdout))
  end
)

local calendar_widget = require("awesome-wm-widgets.calendar-widget.calendar")
local cw = calendar_widget({
    theme = 'nord',
    placement = 'top_right',
    radius = theme.corner_radius
})
clock:connect_signal("button::press", 
                           function(_, _, _, button)
                             if button == 1 then cw.toggle() end
end)
-- Calendar
--[[theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "Terminus 9",
        fg   = theme.fg_focus,
        bg   = theme.bg_focus,
        shape = function(cr, w, h)
          gears.shape.infobubble(cr, w, h, theme.corner_radius)
        end,
    },
  })--]]


-- Mail IMAP check
local mailicon = wibox.widget.imagebox(theme.widget_mail)
--[[ commented because it needs to be set before use
mailicon:buttons(my_table.join(awful.button({ }, 1, function () awful.spawn(mail) end)))
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            widget:set_markup(markup.font(theme.font, " " .. mailcount .. " "))
            mailicon:set_image(theme.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(theme.widget_mail)
        end
    end
})
--]]

-- MPD
local musicplr = awful.util.terminal .. " -title Music -g 130x34-320+16 -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    awful.button({ }, 1, function ()
        os.execute("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 2, function ()
        os.execute("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ }, 3, function ()
        os.execute("mpc next")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
        elseif mpd_now.state == "pause" then
            artist = " mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            mpdicon:set_image(theme.widget_music)
        end

        widget:set_markup(markup.font(theme.font, markup("#EA6F81", artist) .. title))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    end
})

-- / fs
local fsicon = wibox.widget.imagebox(theme.widget_hdd)
-- commented because it needs Gio/Glib >= 2.54
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "Terminus 10" },
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. fs_now["/"].percentage .. "% "))
    end
})
--

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)
local bat = lain.widget.bat({
    settings = function()
        if bat_now.status and bat_now.status ~= "N/A" then
            if bat_now.ac_status == 1 then
                baticon:set_image(theme.widget_ac)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
                baticon:set_image(theme.widget_battery_empty)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 15 then
                baticon:set_image(theme.widget_battery_low)
            else
                baticon:set_image(theme.widget_battery)
            end
            widget:set_markup(markup.font(theme.font, " " .. bat_now.perc .. "% "))
        else
            widget:set_markup(markup.font(theme.font, " AC "))
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        if volume_now.status == "off" then
            volicon:set_image(theme.widget_vol_mute)
        elseif tonumber(volume_now.level) == 0 then
            volicon:set_image(theme.widget_vol_no)
        elseif tonumber(volume_now.level) <= 50 then
            volicon:set_image(theme.widget_vol_low)
        else
            volicon:set_image(theme.widget_vol)
        end

        widget:set_markup(markup.font(theme.font, " " .. volume_now.level .. "% "))
    end
})
theme.volume.widget:buttons(awful.util.table.join(
                               awful.button({}, 4, function ()
                                     awful.util.spawn("amixer set Master 1%+")
                                     theme.volume.update()
                               end),
                               awful.button({}, 5, function ()
                                     awful.util.spawn("amixer set Master 1%-")
                                     theme.volume.update()
                               end)
))

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    iface = network_interface,
    settings = function()
        widget:set_markup(markup.font(theme.font,
                          markup("#7AC82E", " " .. string.format("%06.1f", net_now.received))
                          .. " " ..
                          markup("#46A8C3", " " .. string.format("%06.1f", net_now.sent) .. " ")))
    end
})

-- vpn
local vpnicon = wibox.widget.imagebox(theme.widget_net_wired)
local vpn = awful.widget.watch(
    "/home/chaser/dotfiles/bin/vpn_detect.sh", 5,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
)

-- Separators
local spr     = wibox.widget.textbox(' ')
local arrl_dl = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld = separators.arrow_left("alpha", theme.bg_focus)

local arrl_dr = separators.arrow_right(theme.bg_focus, "alpha")
local arrl_rd = separators.arrow_right("alpha", theme.bg_focus)

function theme.at_screen_connect(s)
    -- Quake application
    --s.quake = lain.util.quake({ app = awful.util.terminal })
    s.quake = lain.util.quake({ app = awful.util.terminal, border = 0, titlebars_enabled = false, width = 1000, height = 700 })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt{bg = theme.bg_normal }
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    --s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)
		s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        style   = {
            shape = gears.shape.powerline
        },
        --[[layout   = {
            spacing = -10,
            spacing_widget = {
                color  = theme.bg_focus,
                shape  = gears.shape.powerline,
                widget = wibox.widget.separator,
            },
            layout  = wibox.layout.fixed.horizontal
        },]]
        widget_template = {
            {
                {
                    {
                        {
                            {
                                id     = 'index_role',
                                widget = wibox.widget.textbox,
                            },
                            margins = dpi(0),
                            widget  = wibox.container.margin,
                        },
                        bg     = theme.border_focus,
                        shape  = gears.shape.circle,
                        widget = wibox.container.background,
                    },
                    {
                        {
                            id     = 'icon_role',
                            widget = wibox.widget.imagebox,
                        },
                        margins = dpi(2),
                        widget  = wibox.container.margin,
                    },
                    {
                        id     = 'text_role',
                        widget = wibox.widget.textbox,
                    },
                    layout = wibox.layout.fixed.horizontal,
                },
                left  = dpi(10),
                right = dpi(10),
                widget = wibox.container.margin
            },
            id     = 'background_role',
            widget = wibox.container.background,
            -- Add support for hover colors and an index label
            create_callback = function(self, c3, index, objects) --luacheck: no unused args
                --self:get_children_by_id('index_role')[1].markup = '<b> '..index..' </b>'
                self:connect_signal('mouse::enter', function()
                    if self.bg ~= theme.bg_focus then
                        self.backup     = self.bg
                        self.has_backup = true
                    end
                    self.bg = theme.bg_focus
                end)
                self:connect_signal('mouse::leave', function()
                    if self.has_backup then self.bg = self.backup end
                end)
            end,
            update_callback = function(self, c3, index, objects) --luacheck: no unused args
                --self:get_children_by_id('index_role')[1].markup = '<b> '..index..' </b>'
            end,
        },
        buttons = taglist_buttons
}

        -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({
      position = "top",
      screen = s,
      height = dpi(18),
      bg = theme.bg_normal,
      fg = theme.fg_normal,
      --border_width = theme.border_width,
      --border_color = theme.border_focus,
      opacity = 0.7,
      shape = function(cr, w, h)
        gears.shape.rounded_rect(cr, w, h, theme.corner_radius)
      end,
    })

    local github_activity_widget = require("awesome-wm-widgets.github-activity-widget.github-activity-widget")
    ghw = github_activity_widget {
      username = github_user_name
    }
    local github_contributions_widget = require("awesome-wm-widgets.github-contributions-widget.github-contributions-widget")
    ghcw = github_contributions_widget {
      username = github_user_name,
      theme = 'classic',
      color_of_empty_cells = theme.bg_systray
    }
    local calendar_widget = require("awesome-wm-widgets.calendar-widget.calendar")
    awmodoro = require("awmodoro")

    --pomodoro wibox
    pomowibox = awful.wibox({
        position = "bottom",
        screen = s,
        height=dpi(8),
        opacity = 0.7,
        shape = function(cr, w, h)
            gears.shape.rounded_rect(cr, w, h, theme.corner_radius)
        end,
    })
    pomowibox.visible = false
    local screen = screen
    pomodoro = awmodoro.new({
    	minutes 			= 25,
    	do_notify 			= true,
    	active_bg_color 	= '#313131',
    	paused_bg_color 	= '#7746D7',
    	fg_color			= {type = "linear", from = {0,0}, to = {pomowibox.width, 0}, stops = {{0, "#AECF96"},{0.5, "#88A175"},{1, "#FF5656"}}},
    	width 				= pomowibox.width,
    	height 				= pomowibox.height,

    	begin_callback = function()
            for s in screen do
                s.mywibox.visible = not s.mywibox.visible
                if s.mybottomwibox then
                    s.mybottomwibox.visible = not s.mybottomwibox.visible
                end
            end
    		--for screens = 1, screen.count() do
    		--	screens.mywibox.visible = false
    		--end
    		pomowibox.visible = true
    	end,

    	finish_callback = function()
    		--for screens = 1, screen.count() do
    		--	screens.mywibox.visible = true
    		--end
            awful.util.spawn("aplay ~/.emacs.d/elpa/27.1/develop/org-pomodoro-20190530.1445/resources/bell.wav")
            for s in screen do
                s.mywibox.visible = not s.mywibox.visible
                if s.mybottomwibox then
                    s.mybottomwibox.visible = not s.mybottomwibox.visible
                end
            end
    		pomowibox.visible = false
    	end})
    pomowibox:set_widget(pomodoro)

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            spr,
            gnome_button,
            s.mytaglist,
            arrl_rd,
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(wibox.widget.systray(), theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            arrl_dr,
            spr,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            s.mypromptbox,
            spr,
            --wibox.container.background(mpdicon, theme.bg_focus),
            --wibox.container.background(theme.mpd.widget, theme.bg_focus),
            arrl_ld,
            wibox.container.background(volicon, theme.bg_focus),
            wibox.container.background(theme.volume.widget, theme.bg_focus),
            --wibox.container.background(pulse, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            --wibox.container.background(mailicon, theme.bg_focus),
            --wibox.container.background(theme.mail.widget, theme.bg_focus),
            arrl_dl,
            wibox.container.background(memicon, theme.bg_normal),
            wibox.container.background(mem.widget,theme.bg_normal),
            wibox.container.background(spr, theme.bg_normal),
            arrl_ld,
            wibox.container.background(cpuicon, theme.bg_focus),
            wibox.container.background(cpu.widget, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            arrl_dl,
            wibox.container.background(tempicon, theme.bg_normal),
            wibox.container.background(temp.widget, theme.bg_normal),
            wibox.container.background(spr, theme.bg_normal),
            arrl_ld,
            --wibox.container.background(fsicon, theme.bg_focus),
            --wibox.container.background(theme.fs.widget, theme.bg_focus),
            wibox.container.background(baticon, theme.bg_focus),
            wibox.container.background(bat.widget, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            arrl_dl,
            wibox.container.background(neticon, theme.bg_normal),
            wibox.container.background(net.widget, theme.bg_normal),
            wibox.container.background(spr, theme.bg_normal),
            arrl_ld,
            wibox.container.background(vpnicon, theme.bg_focus),
            wibox.container.background(vpn, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            arrl_dl,
            wibox.container.background(spr, theme.bg_normal),
            wibox.container.background(ghw, theme.bg_normal),
            wibox.container.background(ghcw, theme.bg_normal),
            wibox.container.background(spr, theme.bg_normal),
            wibox.container.background(spr, theme.bg_normal),
            arrl_ld,
            wibox.container.background(keyboardIcon, theme.bg_focus),
            wibox.container.background(keyboardlayout, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            arrl_dl,
            wibox.container.background(clockicon, theme.bg_normal),
            wibox.container.background(countdown, theme.bg_normal),
            wibox.container.background(spr, theme.bg_normal),
            wibox.container.background(spr, theme.bg_normal),
            arrl_ld,
            wibox.container.background(clockicon, theme.bg_focus),
            wibox.container.background(clock, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            wibox.container.background(spr, theme.bg_focus),
            arrl_dl,
            wibox.container.background(s.mylayoutbox, theme.bg_normal),
        },
    }
end
--[[
awful.util.table.join(
-- Audio
  awful.key({ }, "XF86AudioRaiseVolume", pulse.volume_up),
  awful.key({ }, "XF86AudioLowerVolume", pulse.volume_down),
  awful.key({ }, "XF86AudioMute",  pulse.toggle_muted),
  -- Microphone
  awful.key({"Shift"}, "XF86AudioRaiseVolume", pulse.volume_up_mic),
  awful.key({"Shift"}, "XF86AudioLowerVolume", pulse.volume_down_mic),
  awful.key({ }, "XF86MicMute",  pulse.toggle_muted_mic)
)
]]--

return theme
