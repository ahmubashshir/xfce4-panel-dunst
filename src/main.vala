/*
 *
 * Copyright <year> Ahmad Hasan Mubashshir <ahmubashshir@gmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 *
 *
 */
using Gtk;

public static int main(string[] args)
{
	Gtk.init(ref args);

	var window = new Window();

	window.title = "Hello DUNST";
	window.set_default_size(100, 70);
	window.destroy.connect (Gtk.main_quit);

	var child = new dunstWidget.Box(Orientation.VERTICAL);

	window.add (child);
	window.show_all();

	Gtk.main();
	return 0;
}
