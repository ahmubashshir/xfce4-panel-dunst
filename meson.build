project(
  'xfce4-panel-dunst',
  ['c','vala'],
  version : run_command(
    [find_program('sh'), 'meson_scripts/version.sh']
  ).stdout(),
  license : 'GPL2',
  default_options : ['buildtype=debugoptimized', 'b_ndebug=if-release']
)

add_global_arguments('-DGETTEXT_PACKAGE="xfce4-panel-dunst"',language: 'c')

version = run_command(
  [find_program('sh'), 'meson_scripts/version.sh']
).stdout()

git_rev = run_command(
  [find_program('sh'), 'meson_scripts/git_revision.sh']
).stdout()

find_program ('g-ir-compiler')
libxfce4panel_2_0_dep = dependency('libxfce4panel-2.0')
atk_dep = dependency('atk')
cairo_gobject_dep = dependency('cairo-gobject')
gdk_3_0_dep = dependency('gdk-3.0')
gdk_pixbuf_2_0_dep = dependency('gdk-pixbuf-2.0')
gio_2_0_dep = dependency('gio-2.0')
glib_2_0_dep = dependency('glib-2.0')
gobject_2_0_dep = dependency('gobject-2.0')
gtk_3_0_dep = dependency('gtk+-3.0')
pango_dep = dependency('pango')
x11_dep = dependency('x11')

meson.add_install_script(join_paths(meson.current_source_dir(),'meson_scripts','install_data.sh'),join_paths(get_option('prefix'),'share/xfce4/panel/plugins/'),join_paths(meson.current_source_dir(),'data/panel-plugins','dunst.desktop'))

subdir('src/widget')
subdir('src/plugin')
subdir('src')
