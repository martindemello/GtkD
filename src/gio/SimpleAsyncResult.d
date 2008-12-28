/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GSimpleAsyncResult.html
 * outPack = gio
 * outFile = SimpleAsyncResult
 * strct   = GSimpleAsyncResult
 * realStrct=
 * ctorStrct=
 * clss    = SimpleAsyncResult
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- AsyncResultIF
 * prefixes:
 * 	- g_simple_async_result_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- glib.ErrorG
 * 	- glib.GException
 * 	- gobject.ObjectG
 * 	- gio.Cancellable
 * 	- gobject.ObjectG
 * 	- gio.AsyncResultIF
 * 	- gio.AsyncResultT
 * structWrap:
 * 	- GCancellable* -> Cancellable
 * 	- GError* -> ErrorG
 * 	- GObject* -> ObjectG
 * module aliases:
 * local aliases:
 * overrides:
 */

module gio.SimpleAsyncResult;

public  import gtkc.giotypes;

private import gtkc.gio;
private import glib.ConstructionException;


private import glib.Str;
private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import gio.Cancellable;
private import gobject.ObjectG;
private import gio.AsyncResultIF;
private import gio.AsyncResultT;



private import gobject.ObjectG;

/**
 * Description
 * Implements GAsyncResult for simple cases. Most of the time, this
 * will be all an application needs, and will be used transparently.
 * Because of this, GSimpleAsyncResult is used throughout GIO for
 * handling asynchronous functions.
 * GSimpleAsyncResult handles GAsyncReadyCallbacks, error
 * reporting, operation cancellation and the final state of an operation,
 * completely transparent to the application. Results can be returned
 * as a pointer e.g. for functions that return data that is collected
 * asynchronously, a boolean value for checking the success or failure
 * of an operation, or a gssize for operations which return the number
 * of bytes modified by the operation; all of the simple return cases
 * are covered.
 * Most of the time, an application will not need to know of the details
 * of this API; it is handled transparently, and any necessary operations
 * are handled by GAsyncResult's interface. However, if implementing a
 * new GIO module, for writing language bindings, or for complex
 * applications that need better control of how asynchronous operations
 * are completed, it is important to understand this functionality.
 * GSimpleAsyncResults are tagged with the calling function to ensure
 * that asynchronous functions and their finishing functions are used
 * together correctly.
 * To create a new GSimpleAsyncResult, call g_simple_async_result_new().
 * If the result needs to be created for a GError, use
 * g_simple_async_result_new_from_error(). If a GError is not available
 * (e.g. the asynchronous operation's doesn't take a GError argument),
 * but the result still needs to be created for an error condition, use
 * g_simple_async_result_new_error() (or g_simple_async_result_set_error_va()
 * if your application or binding requires passing a variable argument list
 * directly), and the error can then be propegated through the use of
 * g_simple_async_result_propagate_error().
 * An asynchronous operation can be made to ignore a cancellation event by
 * calling g_simple_async_result_set_handle_cancellation() with a
 * GSimpleAsyncResult for the operation and FALSE.
 * GSimpleAsyncResult can integrate into GLib's event loop, GMainLoop,
 * or it can use GThreads if available.
 * g_simple_async_result_complete() will finish an I/O task directly within
 * the main event loop. g_simple_async_result_complete_in_idle() will
 * integrate the I/O task into the main event loop as an idle function and
 * g_simple_async_result_run_in_thread() will run the job in a separate
 * thread.
 * To set the results of an asynchronous function,
 * g_simple_async_result_set_op_res_gpointer(),
 * g_simple_async_result_set_op_res_gboolean(), and
 * g_simple_async_result_set_op_res_gssize()
 * are provided, setting the operation's result to a gpointer, gboolean, or
 * gssize, respectively.
 * Likewise, to get the result of an asynchronous function,
 * g_simple_async_result_get_op_res_gpointer(),
 * g_simple_async_result_get_op_res_gboolean(), and
 * g_simple_async_result_get_op_res_gssize() are
 * provided, getting the operation's result as a gpointer, gboolean, and
 * gssize, respectively.
 */
public class SimpleAsyncResult : ObjectG, AsyncResultIF
{
	
	/** the main Gtk struct */
	protected GSimpleAsyncResult* gSimpleAsyncResult;
	
	
	public GSimpleAsyncResult* getSimpleAsyncResultStruct()
	{
		return gSimpleAsyncResult;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gSimpleAsyncResult;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GSimpleAsyncResult* gSimpleAsyncResult)
	{
		if(gSimpleAsyncResult is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gSimpleAsyncResult);
		if( ptr !is null )
		{
			this = cast(SimpleAsyncResult)ptr;
			return;
		}
		super(cast(GObject*)gSimpleAsyncResult);
		this.gSimpleAsyncResult = gSimpleAsyncResult;
	}
	
	// add the AsyncResult capabilities
	mixin AsyncResultT!(GSimpleAsyncResult);
	
	/**
	 */
	
	/**
	 * Creates a GSimpleAsyncResult.
	 * Params:
	 * sourceObject =  a GObject the asynchronous function was called with.
	 * callback =  a GAsyncReadyCallback.
	 * userData =  user data passed to callback.
	 * sourceTag =  the asynchronous function.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectG sourceObject, GAsyncReadyCallback callback, void* userData, void* sourceTag)
	{
		// GSimpleAsyncResult* g_simple_async_result_new (GObject *source_object,  GAsyncReadyCallback callback,  gpointer user_data,  gpointer source_tag);
		auto p = g_simple_async_result_new((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, sourceTag);
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_async_result_new((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, sourceTag)");
		}
		this(cast(GSimpleAsyncResult*) p);
	}
	
	/**
	 * Creates a GSimpleAsyncResult from an error condition.
	 * Params:
	 * sourceObject =  a GObject.
	 * callback =  a GAsyncReadyCallback.
	 * userData =  user data passed to callback.
	 * error =  a GError location.
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this (ObjectG sourceObject, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		// GSimpleAsyncResult* g_simple_async_result_new_from_error  (GObject *source_object,  GAsyncReadyCallback callback,  gpointer user_data,  GError *error);
		auto p = g_simple_async_result_new_from_error((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());
		if(p is null)
		{
			throw new ConstructionException("null returned by g_simple_async_result_new_from_error((sourceObject is null) ? null : sourceObject.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct())");
		}
		this(cast(GSimpleAsyncResult*) p);
	}
	
	/**
	 * Sets the operation result within the asynchronous result to a pointer.
	 * Params:
	 * opRes =  a pointer result from an asynchronous function.
	 * destroyOpRes =  a GDestroyNotify function.
	 */
	public void setOpResGpointer(void* opRes, GDestroyNotify destroyOpRes)
	{
		// void g_simple_async_result_set_op_res_gpointer  (GSimpleAsyncResult *simple,  gpointer op_res,  GDestroyNotify destroy_op_res);
		g_simple_async_result_set_op_res_gpointer(gSimpleAsyncResult, opRes, destroyOpRes);
	}
	
	/**
	 * Gets a pointer result as returned by the asynchronous function.
	 * Returns: a pointer from the result.
	 */
	public void* getOpResGpointer()
	{
		// gpointer g_simple_async_result_get_op_res_gpointer  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_op_res_gpointer(gSimpleAsyncResult);
	}
	
	/**
	 * Sets the operation result within the asynchronous result to
	 * the given op_res.
	 * Params:
	 * opRes =  a gssize.
	 */
	public void setOpResGssize(int opRes)
	{
		// void g_simple_async_result_set_op_res_gssize  (GSimpleAsyncResult *simple,  gssize op_res);
		g_simple_async_result_set_op_res_gssize(gSimpleAsyncResult, opRes);
	}
	
	/**
	 * Gets a gssize from the asynchronous result.
	 * Returns: a gssize returned from the asynchronous function.
	 */
	public int getOpResGssize()
	{
		// gssize g_simple_async_result_get_op_res_gssize  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_op_res_gssize(gSimpleAsyncResult);
	}
	
	/**
	 * Sets the operation result to a boolean within the asynchronous result.
	 * Params:
	 * opRes =  a gboolean.
	 */
	public void setOpResGboolean(int opRes)
	{
		// void g_simple_async_result_set_op_res_gboolean  (GSimpleAsyncResult *simple,  gboolean op_res);
		g_simple_async_result_set_op_res_gboolean(gSimpleAsyncResult, opRes);
	}
	
	/**
	 * Gets the operation result boolean from within the asynchronous result.
	 * Returns: TRUE if the operation's result was TRUE, FALSE  if the operation's result was FALSE.
	 */
	public int getOpResGboolean()
	{
		// gboolean g_simple_async_result_get_op_res_gboolean  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_op_res_gboolean(gSimpleAsyncResult);
	}
	
	/**
	 * Gets the source tag for the GSimpleAsyncResult.
	 * Returns: a gpointer to the source object for the GSimpleAsyncResult.
	 */
	public void* getSourceTag()
	{
		// gpointer g_simple_async_result_get_source_tag  (GSimpleAsyncResult *simple);
		return g_simple_async_result_get_source_tag(gSimpleAsyncResult);
	}
	
	/**
	 * Sets whether to handle cancellation within the asynchronous operation.
	 * Params:
	 * handleCancellation =  a gboolean.
	 */
	public void setHandleCancellation(int handleCancellation)
	{
		// void g_simple_async_result_set_handle_cancellation  (GSimpleAsyncResult *simple,  gboolean handle_cancellation);
		g_simple_async_result_set_handle_cancellation(gSimpleAsyncResult, handleCancellation);
	}
	
	/**
	 * Completes an asynchronous I/O job.
	 */
	public void complete()
	{
		// void g_simple_async_result_complete (GSimpleAsyncResult *simple);
		g_simple_async_result_complete(gSimpleAsyncResult);
	}
	
	/**
	 * Completes an asynchronous function in the main event loop using
	 * an idle function.
	 */
	public void completeInIdle()
	{
		// void g_simple_async_result_complete_in_idle  (GSimpleAsyncResult *simple);
		g_simple_async_result_complete_in_idle(gSimpleAsyncResult);
	}
	
	/**
	 * Runs the asynchronous job in a separated thread.
	 * Params:
	 * func =  a GSimpleAsyncThreadFunc.
	 * ioPriority =  the io priority of the request.
	 * cancellable =  optional GCancellable object, NULL to ignore.
	 */
	public void runInThread(GSimpleAsyncThreadFunc func, int ioPriority, Cancellable cancellable)
	{
		// void g_simple_async_result_run_in_thread (GSimpleAsyncResult *simple,  GSimpleAsyncThreadFunc func,  int io_priority,  GCancellable *cancellable);
		g_simple_async_result_run_in_thread(gSimpleAsyncResult, func, ioPriority, (cancellable is null) ? null : cancellable.getCancellableStruct());
	}
	
	/**
	 * Sets the result from a GError.
	 * Params:
	 * error =  GError.
	 */
	public void setFromError(ErrorG error)
	{
		// void g_simple_async_result_set_from_error  (GSimpleAsyncResult *simple,  GError *error);
		g_simple_async_result_set_from_error(gSimpleAsyncResult, (error is null) ? null : error.getErrorGStruct());
	}
	
	/**
	 * Propagates an error from within the simple asynchronous result to
	 * a given destination.
	 * Returns: TRUE if the error was propegated to dest. FALSE otherwise.
	 * Throws: GException on failure.
	 */
	public int propagateError()
	{
		// gboolean g_simple_async_result_propagate_error  (GSimpleAsyncResult *simple,  GError **dest);
		GError* err = null;
		
		auto p = g_simple_async_result_propagate_error(gSimpleAsyncResult, &err);
		
		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
		
		return p;
	}
	
	/**
	 * Sets an error within the asynchronous result without a GError.
	 * Unless writing a binding, see g_simple_async_result_set_error().
	 * Params:
	 * domain =  a GQuark (usually G_IO_ERROR).
	 * code =  an error code.
	 * format =  a formatted error reporting string.
	 * args =  va_list of arguments.
	 */
	public void setErrorVa(GQuark domain, int code, string format, void* args)
	{
		// void g_simple_async_result_set_error_va (GSimpleAsyncResult *simple,  GQuark domain,  gint code,  const char *format,  va_list args);
		g_simple_async_result_set_error_va(gSimpleAsyncResult, domain, code, Str.toStringz(format), args);
	}
	
	/**
	 * Reports an error in an idle function. Similar to
	 * g_simple_async_report_error_in_idle(), but takes a GError rather
	 * than building a new one.
	 * Params:
	 * object =  a GObject.
	 * callback =  a GAsyncReadyCallback.
	 * userData =  user data passed to callback.
	 * error =  the GError to report
	 */
	public static void gSimpleAsyncReportGerrorInIdle(ObjectG object, GAsyncReadyCallback callback, void* userData, ErrorG error)
	{
		// void g_simple_async_report_gerror_in_idle  (GObject *object,  GAsyncReadyCallback callback,  gpointer user_data,  GError *error);
		g_simple_async_report_gerror_in_idle((object is null) ? null : object.getObjectGStruct(), callback, userData, (error is null) ? null : error.getErrorGStruct());
	}
}