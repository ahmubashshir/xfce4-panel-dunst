cfg_demo = configuration_data()
cfg_demo.set('DATADIR', join_paths(get_option('prefix'),get_option('datadir')))
cfg_demo.set('PKGDATADIR', join_paths(get_option('prefix'),get_option('datadir'),'xfce4-panel-dunst'))
cfg_demo.set('GETTEXT_PACKAGE', 'xfce4-panel-dunst')
cfg_demo.set('RELEASE_NAME', 'xfce4-panel-dunst')
cfg_demo.set('PREFIX', get_option('prefix'))
cfg_demo.set('VERSION', version + git_rev)
cfg_demo.set('TESTSRCDIR', meson.source_root())

cfgfile_1 = configure_file(
	input: 'Config.vala.base',
	output: 'Config.vala',
	configuration: cfg_demo)

demo_deps = [atk_dep]
demo_deps += [cairo_gobject_dep]
demo_deps += [gdk_3_0_dep]
demo_deps += [gdk_pixbuf_2_0_dep]
demo_deps += [gio_2_0_dep]
demo_deps += [glib_2_0_dep]
demo_deps += [gtk_3_0_dep]
demo_deps += [pango_dep]
demo_deps += [x11_dep]
demo_sources = [cfgfile_1]
demo_sources += ['main.vala']
demo_dependencies = [dunstWidget_library]
demo_link_args = ['-rdynamic']
demo_hfolders = ['../src/widget']

executable('demo',demo_sources,
    dependencies: demo_deps,
    link_args: demo_link_args,
    link_with: demo_dependencies,
    include_directories: include_directories(demo_hfolders),
    install: true)
