cfg_dunstWidget = configuration_data()
cfg_dunstWidget.set('DATADIR', join_paths(get_option('prefix'),get_option('datadir')))
cfg_dunstWidget.set('PKGDATADIR', join_paths(get_option('prefix'),get_option('datadir'),'xfce4-panel-dunst'))
cfg_dunstWidget.set('GETTEXT_PACKAGE', 'xfce4-panel-dunst')
cfg_dunstWidget.set('RELEASE_NAME', 'xfce4-panel-dunst')
cfg_dunstWidget.set('PREFIX', get_option('prefix'))
cfg_dunstWidget.set('VERSION', version + git_rev)
cfg_dunstWidget.set('TESTSRCDIR', meson.source_root())

cfgfile_2 = configure_file(
	input: 'Config.vala.base',
	output: 'Config.vala',
	configuration: cfg_dunstWidget)

dunstWidget_deps = [atk_dep]
dunstWidget_deps += [cairo_gobject_dep]
dunstWidget_deps += [gdk_3_0_dep]
dunstWidget_deps += [gdk_pixbuf_2_0_dep]
dunstWidget_deps += [gio_2_0_dep]
dunstWidget_deps += [glib_2_0_dep]
dunstWidget_deps += [gobject_2_0_dep]
dunstWidget_deps += [gtk_3_0_dep]
dunstWidget_deps += [pango_dep]
dunstWidget_deps += [x11_dep]
dunstWidget_sources = [cfgfile_2]
dunstWidget_sources += ['dbus.vala']
dunstWidget_sources += ['widget.vala']
dunstWidget_link_args = ['-rdynamic']

dunstWidget_library = shared_library('dunstWidget', dunstWidget_sources,
    dependencies: dunstWidget_deps,
    link_args: dunstWidget_link_args,
    version: version,
    soversion: '0',
    install: true,
    install_dir: [true])
