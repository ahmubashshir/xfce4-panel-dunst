cfg_dunst = configuration_data()
cfg_dunst.set('DATADIR', join_paths(get_option('prefix'),get_option('datadir')))
cfg_dunst.set('PKGDATADIR', join_paths(get_option('prefix'),get_option('datadir'),'xfce4-panel-dunst'))
cfg_dunst.set('GETTEXT_PACKAGE', 'xfce4-panel-dunst')
cfg_dunst.set('RELEASE_NAME', 'xfce4-panel-dunst')
cfg_dunst.set('PREFIX', get_option('prefix'))
cfg_dunst.set('VERSION', get_option('version')s)
cfg_dunst.set('TESTSRCDIR', meson.source_root())

cfgfile_1 = configure_file(
	input: 'Config.vala.base',
	output: 'Config.vala',
	configuration: cfg_dunst)

dunst_deps = [libxfce4panel_2_0_dep]
dunst_deps += [atk_dep]
dunst_deps += [cairo_gobject_dep]
dunst_deps += [gdk_3_0_dep]
dunst_deps += [gdk_pixbuf_2_0_dep]
dunst_deps += [gio_2_0_dep]
dunst_deps += [glib_2_0_dep]
dunst_deps += [gobject_2_0_dep]
dunst_deps += [gtk_3_0_dep]
dunst_deps += [pango_dep]
dunst_deps += [x11_dep]
dunst_sources = [cfgfile_1]
dunst_sources += ['dbus.vala']
dunst_sources += ['dunst.vala']
dunst_sources += ['plugin.vala']
dunst_link_args = ['-rdynamic']
INSTALL_LIBRARY_dunst = 'lib/xfce4/panel/plugins'
INSTALL_INCLUDE_dunst = 'lib/xfce4/panel/plugins'
INSTALL_VAPI_dunst = 'lib/xfce4/panel/plugins'
INSTALL_GIR_dunst = 'lib/xfce4/panel/plugins'
INSTALL_TYPELIB_dunst = 'lib/xfce4/panel/plugins'
INSTALL_PKGCONFIG_dunst = 'lib/xfce4/panel/plugins'

dunst_library = shared_library('dunst', dunst_sources,
    vala_gir: 'dunst-1.0.gir',
    dependencies: dunst_deps,
    link_args: dunst_link_args,
    version: '0.0.1',
    soversion: '0',
    install: true,
    install_dir: [INSTALL_LIBRARY_dunst, INSTALL_INCLUDE_dunst, INSTALL_VAPI_dunst, INSTALL_GIR_dunst])

g_ir_compiler = find_program('g-ir-compiler')
custom_target('dunst typelib', command: [g_ir_compiler, '--shared-library=libdunst', '--output', '@OUTPUT@',  join_paths(meson.current_build_dir(), 'dunst-1.0.gir')],
    output: 'dunst-1.0.typelib',
    depends: dunst_library,
    install: true,
    install_dir: INSTALL_TYPELIB_dunst)

dunst_requires = []
dunst_requires += ['libxfce4panel-2.0']
dunst_requires += ['atk']
dunst_requires += ['cairo-gobject']
dunst_requires += ['gdk-3.0']
dunst_requires += ['gdk-pixbuf-2.0']
dunst_requires += ['gio-2.0']
dunst_requires += ['glib-2.0']
dunst_requires += ['gobject-2.0']
dunst_requires += ['gtk+-3.0']
dunst_requires += ['pango']
dunst_requires += ['x11']
pkg_mod = import('pkgconfig')
pkg_mod.generate(libraries : dunst_library,
	version : '0.0.1',
	name : 'dunst',
	filebase : 'dunst',
	description : 'dunst',
	requires : dunst_requires)

install_data(join_paths(meson.current_source_dir(),'dunst.deps'),install_dir: join_paths(get_option('prefix'),'share','vala','vapi'))
