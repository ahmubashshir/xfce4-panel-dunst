using Gtk;
using Xfce;
namespace dunst {
public class Plugin: PanelPlugin {
	private Box 			box;

	private Image			paused;
	private Image			active;
	private Image			active_new;
	private Image			paused_new;

	private Button			label;
	private ToggleButton	toggle;

	public override void @construct () {

		Intl.setlocale(LocaleCategory.CTYPE,"");
		Intl.bindtextdomain(GETTEXT_PACKAGE, Path.build_filename(DATADIR,"locale"));
		Intl.bind_textdomain_codeset(GETTEXT_PACKAGE,"UTF-8");
		Intl.textdomain(GETTEXT_PACKAGE);

		box= new Box( this.get_orientation(), 0);

		toggle = new ToggleButton();
		label  = new Button();

		active = new Image.from_icon_name("notification-symbolic",
											IconSize.LARGE_TOOLBAR);
		paused = new Image.from_icon_name("notification-disabled-symbolic",
											IconSize.LARGE_TOOLBAR);
		active_new = new Image.from_icon_name("notification-new-symbolic",
												IconSize.LARGE_TOOLBAR);
		paused_new = new Image.from_icon_name("notification-disabled-new-symbolic",
												IconSize.LARGE_TOOLBAR);
		menu_show_about ();
		about.connect (() => {
			show_about_dialog (null,
				"program-name", "Dunst",
				"comments", _("Dunst plugin for the Xfce4 Panel"),
				"authors", new string[] {"Ahmad Hasan Mubashshir <ahmubashshir@gmail.com>"},
				"copyright", "Copyright © 2021 Ahmad Hasan Mubashshir",
				"license-type", License.GPL_2_0,
				"logo-icon-name", "notification-symbolic",
				"version", VERSION,
				"website", "https://ahmubashshir.github.io",
				"website-label", "Project Page",
				null);
		});

		box.pack_start(toggle);
		box.pack_start(label);
		add_action_widget(box);

		destroy.connect (() => { Gtk.main_quit (); });
		show_all();
	}
}
}
