/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkLinkButton.html
 * outPack = gtk
 * outFile = LinkButton
 * strct   = GtkLinkButton
 * realStrct=
 * ctorStrct=
 * clss    = LinkButton
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_link_button_
 * 	- gtk_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Widget
 * structWrap:
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * overrides:
 */

module gtk.LinkButton;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;


private import glib.Str;
private import gtk.Widget;



private import gtk.Button;

/**
 * Description
 * A GtkLinkButton is a GtkButton with a hyperlink, similar to the one
 * used by web browsers, which triggers an action when clicked. It is useful
 * to show quick links to resources.
 * A link button is created by calling either gtk_link_button_new() or
 * gtk_link_button_new_with_label(). If using the former, the URI you pass
 * to the constructor is used as a label for the widget.
 * The URI bound to a GtkLinkButton can be set specifically using
 * gtk_link_button_set_uri(), and retrieved using gtk_link_button_get_uri().
 * GtkLinkButton offers a global hook, which is called when the used clicks
 * on it: see gtk_link_button_set_uri_hook().
 * GtkLinkButton was added in GTK+ 2.10.
 */
public class LinkButton : Button
{
	
	/** the main Gtk struct */
	protected GtkLinkButton* gtkLinkButton;
	
	
	public GtkLinkButton* getLinkButtonStruct()
	{
		return gtkLinkButton;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkLinkButton;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkLinkButton* gtkLinkButton)
	{
		if(gtkLinkButton is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkLinkButton);
		if( ptr !is null )
		{
			this = cast(LinkButton)ptr;
			return;
		}
		super(cast(GtkButton*)gtkLinkButton);
		this.gtkLinkButton = gtkLinkButton;
	}
	
	protected override void setStruct(GObject* obj)
	{
		super.setStruct(obj);
		gtkLinkButton = cast(GtkLinkButton*)obj;
	}
	
	/**
	 */
	
	/**
	 * Creates a new GtkLinkButton with the URI as its text.
	 * Since 2.10
	 * Params:
	 * uri = a valid URI
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string uri)
	{
		// GtkWidget * gtk_link_button_new (const gchar *uri);
		auto p = gtk_link_button_new(Str.toStringz(uri));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_link_button_new(Str.toStringz(uri))");
		}
		this(cast(GtkLinkButton*) p);
	}
	
	/**
	 * Creates a new GtkLinkButton containing a label.
	 * Since 2.10
	 * Params:
	 * uri = a valid URI
	 * label = the text of the button. [allow-none]
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (string uri, string label)
	{
		// GtkWidget * gtk_link_button_new_with_label (const gchar *uri,  const gchar *label);
		auto p = gtk_link_button_new_with_label(Str.toStringz(uri), Str.toStringz(label));
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_link_button_new_with_label(Str.toStringz(uri), Str.toStringz(label))");
		}
		this(cast(GtkLinkButton*) p);
	}
	
	/**
	 * Retrieves the URI set using gtk_link_button_set_uri().
	 * Since 2.10
	 * Returns: a valid URI. The returned string is owned by the link button and should not be modified or freed.
	 */
	public string getUri()
	{
		// const gchar * gtk_link_button_get_uri (GtkLinkButton *link_button);
		return Str.toString(gtk_link_button_get_uri(gtkLinkButton));
	}
	
	/**
	 * Sets uri as the URI where the GtkLinkButton points. As a side-effect
	 * this unsets the 'visited' state of the button.
	 * Since 2.10
	 * Params:
	 * uri = a valid URI
	 */
	public void setUri(string uri)
	{
		// void gtk_link_button_set_uri (GtkLinkButton *link_button,  const gchar *uri);
		gtk_link_button_set_uri(gtkLinkButton, Str.toStringz(uri));
	}
	
	/**
	 * Warning
	 * gtk_link_button_set_uri_hook has been deprecated since version 2.24 and should not be used in newly-written code. Use the "clicked" signal instead
	 * Sets func as the function that should be invoked every time a user clicks
	 * a GtkLinkButton. This function is called before every callback registered
	 * for the "clicked" signal.
	 * If no uri hook has been set, GTK+ defaults to calling gtk_show_uri().
	 * Since 2.10
	 * Params:
	 * func = a function called each time a GtkLinkButton is clicked, or NULL. [allow-none]
	 * data = user data to be passed to func, or NULL. [allow-none]
	 * destroy = a GDestroyNotify that gets called when data is no longer needed, or NULL. [allow-none]
	 * Returns: the previously set hook function.
	 */
	public static GtkLinkButtonUriFunc setUriHook(GtkLinkButtonUriFunc func, void* data, GDestroyNotify destroy)
	{
		// GtkLinkButtonUriFunc gtk_link_button_set_uri_hook (GtkLinkButtonUriFunc func,  gpointer data,  GDestroyNotify destroy);
		return gtk_link_button_set_uri_hook(func, data, destroy);
	}
	
	/**
	 * Retrieves the 'visited' state of the URI where the GtkLinkButton
	 * points. The button becomes visited when it is clicked. If the URI
	 * is changed on the button, the 'visited' state is unset again.
	 * The state may also be changed using gtk_link_button_set_visited().
	 * Since 2.14
	 * Returns: TRUE if the link has been visited, FALSE otherwise
	 */
	public int getVisited()
	{
		// gboolean gtk_link_button_get_visited (GtkLinkButton *link_button);
		return gtk_link_button_get_visited(gtkLinkButton);
	}
	
	/**
	 * Sets the 'visited' state of the URI where the GtkLinkButton
	 * points. See gtk_link_button_get_visited() for more details.
	 * Since 2.14
	 * Params:
	 * visited = the new 'visited' state
	 */
	public void setVisited(int visited)
	{
		// void gtk_link_button_set_visited (GtkLinkButton *link_button,  gboolean visited);
		gtk_link_button_set_visited(gtkLinkButton, visited);
	}
}
