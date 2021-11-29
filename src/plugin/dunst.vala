using dunstWidget;

public class dunstPlugin: Xfce.PanelPlugin {
	private Box 			box;
	public override void @construct () {
		box		= new Box(this.get_orientation());

		menu_show_about ();
		about.connect (() => {
			Gtk.show_about_dialog (null,
				"program-name", "Dunst",
				"comments", _("Dunst plugin for the Xfce4 Panel"),
				"authors", new string[] {"Ahmad Hasan Mubashshir <ahmubashshir@gmail.com>"},
				"copyright", "Copyright © 2021 Ahmad Hasan Mubashshir",
				"license-type", Gtk.License.GPL_2_0,
				"logo-icon-name", "notification-symbolic",
				"version", VERSION,
				"website", "https://ahmubashshir.github.io/xfce4-panel-dunst",
				"website-label", "Project Page",
				null);
		});

		add_action_widget(box);
		destroy.connect (Gtk.main_quit);

		show_all();
	}
}

[ModuleInit]
public Type xfce_panel_module_init (TypeModule module) {
	Intl.setlocale(LocaleCategory.CTYPE,"");
	Intl.bindtextdomain(GETTEXT_PACKAGE, Path.build_filename(DATADIR,"locale"));
	Intl.bind_textdomain_codeset(GETTEXT_PACKAGE,"UTF-8");
	Intl.textdomain(GETTEXT_PACKAGE);

	return typeof (dunstPlugin);
}
