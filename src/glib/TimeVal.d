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
 * inFile  = glib-Date-and-Time-Functions.html
 * outPack = glib
 * outFile = TimeVal
 * strct   = GTimeVal
 * realStrct=
 * ctorStrct=
 * clss    = TimeVal
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- g_time_val_
 * 	- g_
 * omit structs:
 * omit prefixes:
 * 	- g_date_
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * structWrap:
 * module aliases:
 * local aliases:
 * overrides:
 */

module glib.TimeVal;

public  import gtkc.glibtypes;

private import gtkc.glib;
private import glib.ConstructionException;


private import glib.Str;




/**
 * Description
 * The GDate data structure represents a day between January 1, Year 1,
 * and sometime a few thousand years in the future (right now it will go
 * to the year 65535 or so, but g_date_set_parse() only parses up to the
 * year 8000 or so - just count on "a few thousand"). GDate is meant to
 * represent everyday dates, not astronomical dates or historical dates
 * or ISO timestamps or the like. It extrapolates the current Gregorian
 * calendar forward and backward in time; there is no attempt to change
 * the calendar to match time periods or locations. GDate does not store
 * time information; it represents a day.
 * The GDate implementation has several nice features; it is only a
 * 64-bit struct, so storing large numbers of dates is very efficient. It
 * can keep both a Julian and day-month-year representation of the date,
 * since some calculations are much easier with one representation or the
 * other. A Julian representation is simply a count of days since some
 * fixed day in the past; for GDate the fixed day is January 1, 1 AD.
 * ("Julian" dates in the GDate API aren't really Julian dates in the
 * technical sense; technically, Julian dates count from the start of the
 * Julian period, Jan 1, 4713 BC).
 * GDate is simple to use. First you need a "blank" date; you can get a
 * dynamically allocated date from g_date_new(), or you can declare an
 * automatic variable or array and initialize it to a sane state by
 * calling g_date_clear(). A cleared date is sane; it's safe to call
 * g_date_set_dmy() and the other mutator functions to initialize the
 * value of a cleared date. However, a cleared date is initially
 * invalid, meaning that it doesn't represent a day
 * that exists. It is undefined to call any of the date calculation
 * routines on an invalid date. If you obtain a date from a user or other
 * unpredictable source, you should check its validity with the
 * g_date_valid() predicate. g_date_valid() is also used to check for
 * errors with g_date_set_parse() and other functions that can
 * fail. Dates can be invalidated by calling g_date_clear() again.
 * It is very important to use the API to access the GDate
 * struct. Often only the day-month-year or only the Julian
 * representation is valid. Sometimes neither is valid. Use the API.
 * GLib also features GDateTime which represents a precise time.
 */
public class TimeVal
{
	
	/** the main Gtk struct */
	protected GTimeVal* gTimeVal;
	
	
	public GTimeVal* getTimeValStruct()
	{
		return gTimeVal;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gTimeVal;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GTimeVal* gTimeVal)
	{
		if(gTimeVal is null)
		{
			this = null;
			return;
		}
		this.gTimeVal = gTimeVal;
	}
	
	/**
	 */
	
	/**
	 * Equivalent to the UNIX gettimeofday() function, but portable.
	 * You may find g_get_real_time() to be more convenient.
	 */
	public void getCurrentTime()
	{
		// void g_get_current_time (GTimeVal *result);
		g_get_current_time(gTimeVal);
	}
	
	/**
	 * Pauses the current thread for the given number of microseconds. There
	 * are 1 million microseconds per second (represented by the
	 * G_USEC_PER_SEC macro). g_usleep() may have limited precision,
	 * depending on hardware and operating system; don't rely on the exact
	 * length of the sleep.
	 * Params:
	 * microseconds = number of microseconds to pause
	 */
	public static void usleep(gulong microseconds)
	{
		// void g_usleep (gulong microseconds);
		g_usleep(microseconds);
	}
	
	/**
	 * Adds the given number of microseconds to time_. microseconds can
	 * also be negative to decrease the value of time_.
	 * Params:
	 * microseconds = number of microseconds to add to time
	 */
	public void add(glong microseconds)
	{
		// void g_time_val_add (GTimeVal *time_,  glong microseconds);
		g_time_val_add(gTimeVal, microseconds);
	}
	
	/**
	 * Converts a string containing an ISO 8601 encoded date and time
	 * to a GTimeVal and puts it into time_.
	 * Since 2.12
	 * Params:
	 * isoDate = an ISO 8601 encoded date string
	 * time = a GTimeVal
	 * Returns: TRUE if the conversion was successful.
	 */
	public static int fromIso8601(string isoDate, GTimeVal* time)
	{
		// gboolean g_time_val_from_iso8601 (const gchar *iso_date,  GTimeVal *time_);
		return g_time_val_from_iso8601(Str.toStringz(isoDate), time);
	}
	
	/**
	 * Converts time_ into an ISO 8601 encoded string, relative to the
	 * Coordinated Universal Time (UTC).
	 * Since 2.12
	 * Returns: a newly allocated string containing an ISO 8601 date
	 */
	public string toIso8601()
	{
		// gchar * g_time_val_to_iso8601 (GTimeVal *time_);
		return Str.toString(g_time_val_to_iso8601(gTimeVal));
	}
	
	/**
	 * Queries the system monotonic time, if available.
	 * On POSIX systems with clock_gettime() and CLOCK_MONOTONIC this call
	 * is a very shallow wrapper for that. Otherwise, we make a best effort
	 * that probably involves returning the wall clock time (with at least
	 * microsecond accuracy, subject to the limitations of the OS kernel).
	 * Note that, on Windows, "limitations of the OS kernel" is a rather
	 * substantial statement. Depending on the configuration of the system,
	 * the wall clock time is updated as infrequently as 64 times a second
	 * (which is approximately every 16ms).
	 * Since 2.28
	 * Returns: the monotonic time, in microseconds
	 */
	public static long getMonotonicTime()
	{
		// gint64 g_get_monotonic_time (void);
		return g_get_monotonic_time();
	}
	
	/**
	 * Queries the system wall-clock time.
	 * This call is functionally equivalent to g_get_current_time() except
	 * that the return value is often more convenient than dealing with a
	 * GTimeVal.
	 * You should only use this call if you are actually interested in the real
	 * wall-clock time. g_get_monotonic_time() is probably more useful for
	 * measuring intervals.
	 * Since 2.28
	 * Returns: the number of microseconds since January 1, 1970 UTC.
	 */
	public static long getRealTime()
	{
		// gint64 g_get_real_time (void);
		return g_get_real_time();
	}
}
