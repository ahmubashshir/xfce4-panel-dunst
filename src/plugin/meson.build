cfg_dunst = configuration_data()
cfg_dunst.set('DATADIR', join_paths(get_option('prefix'),get_option('datadir')))
cfg_dunst.set('PKGDATADIR', join_paths(get_option('prefix'),get_option('datadir'),'xfce4-panel-dunst'))
cfg_dunst.set('GETTEXT_PACKAGE', 'xfce4-panel-dunst')
cfg_dunst.set('RELEASE_NAME', 'xfce4-panel-dunst')
cfg_dunst.set('PREFIX', get_option('prefix'))
cfg_dunst.set('VERSION', version + git_rev)
cfg_dunst.set('TESTSRCDIR', meson.source_root())

cfgfile_3 = configure_file(
	input: 'Config.vala.base',
	output: 'Config.vala',
	configuration: cfg_dunst)

dunst_deps = [libxfce4panel_2_0_dep]
dunst_deps += [glib_2_0_dep]
dunst_deps += [gobject_2_0_dep]
dunst_sources = [cfgfile_3]
dunst_sources += ['dunst.vala']
dunst_dependencies = [dunstWidget_library]
dunst_link_args = ['-rdynamic']
dunst_hfolders = ['../../src/widget']

shared_library('dunst', dunst_sources,
    dependencies: dunst_deps,
    link_args: dunst_link_args,
    link_with: dunst_dependencies,
    include_directories: include_directories(dunst_hfolders),
    install: true,
    install_dir: 'lib/xfce4/panel/plugins')
