namespace dunst {
[DBus (name = "org.dunstproject.cmd0")]
interface Interface: Object {

	[DBus (name = "paused")]
	public abstract bool paused { owned get; owned set;}

	[DBus (name = "displayedLength")]
	public abstract uint32 visible { owned get;}

	[DBus (name = "waitingLength")]
	public abstract uint32 pending { owned get;}

	[DBus (name = "historyLength")]
	public abstract uint32 instack { owned get;}
}

}
