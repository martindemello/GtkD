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
 * inFile  = GAsyncResult.html
 * outPack = gio
 * outFile = AsyncResultIF
 * strct   = GAsyncResult
 * realStrct=
 * ctorStrct=
 * clss    = AsyncResultT
 * interf  = AsyncResultIF
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_async_result_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- gobject.ObjectG
 * structWrap:
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.AsyncResultIF;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import gobject.ObjectG;




/**
 * Description
 * Provides a base class for implementing asynchronous function results.
 * Asynchronous operations are broken up into two separate operations
 * which are chained together by a GAsyncReadyCallback. To begin
 * an asynchronous operation, provide a GAsyncReadyCallback to the
 * asynchronous function. This callback will be triggered when the
 * operation has completed, and will be passed a GAsyncResult instance
 * filled with the details of the operation's success or failure, the
 * object the asynchronous function was started for and any error codes
 * returned. The asynchronous callback function is then expected to call
 * the corresponding "_finish()" function, passing the object the
 * function was called for, the GAsyncResult instance, and (optionally)
 * an error to grab any error conditions that may have occurred.
 * The "_finish()" function for an operation takes the generic result
 * (of type GAsyncResult) and returns the specific result that the
 * operation in question yields (e.g. a GFileEnumerator for a
 * "enumerate children" operation). If the result or error status of the
 * operation is not needed, there is no need to call the "_finish()"
 * function; GIO will take care of cleaning up the result and error
 * information after the GAsyncReadyCallback returns. Applications may
 * also take a reference to the GAsyncResult and call "_finish()"
 * later; however, the "_finish()" function may be called at most once.
 * Example of a typical asynchronous operation flow:
 * $(DDOC_COMMENT example)
 * The callback for an asynchronous operation is called only once, and is
 * always called, even in the case of a cancelled operation. On cancellation
 * the result is a G_IO_ERROR_CANCELLED error.
 * Some asynchronous operations are implemented using synchronous calls.
 * These are run in a separate thread, if GThread has been initialized, but
 * otherwise they are sent to the Main Event Loop and processed in an idle
 * function. So, if you truly need asynchronous operations, make sure to
 * initialize GThread.
 */
public interface AsyncResultIF
{
	
	
	public GAsyncResult* getAsyncResultTStruct();
	
	/** the main Gtk struct as a void* */
	protected void* getStruct();
	
	
	/**
	 */
	
	/**
	 * Gets the user data from a GAsyncResult.
	 * Returns: the user data for res. [transfer full]
	 */
	public void* getUserData();
	
	/**
	 * Gets the source object from a GAsyncResult.
	 * Returns: a new reference to the source object for the res, or NULL if there is none. [transfer full]
	 */
	public ObjectG getSourceObject();
}
