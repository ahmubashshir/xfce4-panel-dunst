using Gtk;

namespace dunstWidget {
	public class Box: Gtk.ButtonBox {
		private Image   		paused;
		private Image			active;
		private Image			active_new;
		private Image			paused_new;

		private Button			label;
		private Button		    toggle;
		public Gtk.Orientation  orientation {
			get { return base.orientation;}
			set { base.orientation = value;}
		}

		public Box(Gtk.Orientation orientation) {
			this.spacing = 0;
			this.layout_style = ButtonBoxStyle.START;
			stdout.printf(this.orientation.to_string() + "\n");

			toggle	= new Button();
			label	= new Button();

			active = new Image.from_icon_name(
							"notification-symbolic",
							IconSize.LARGE_TOOLBAR);
			paused = new Image.from_icon_name(
							"notification-disabled-symbolic",
							IconSize.LARGE_TOOLBAR);
			active_new = new Image.from_icon_name(
								"notification-new-symbolic",
								IconSize.LARGE_TOOLBAR);
			paused_new = new Image.from_icon_name(
								"notification-disabled-new-symbolic",
								IconSize.LARGE_TOOLBAR);

			this.pack_start(toggle);
			this.pack_start(label);
		}
	}
}

// vim: ts=4:noet:
