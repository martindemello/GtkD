/*
 * This file is part of duit.
 *
 * duit is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * duit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with duit; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * outPack = glib
 * outFile = ArrayG
 * strct   = GArray
 * realStrct=
 * clss    = ArrayG
 * extend  = 
 * prefixes:
 * 	- g_array_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.ListG
 * structWrap:
 * 	- GArray* -> ArrayG
 * local aliases:
 */

module glib.ArrayG;

private import glib.typedefs;

private import lib.glib;

private import glib.ListG;
/**
 * Description
 * Arrays are similar to standard C arrays, except that they grow automatically
 * as elements are added.
 * Array elements can be of any size (though all elements of one array are the
 * same size), and the array can be automatically cleared to '0's and
 * zero-terminated.
 * To create a new array use g_array_new().
 * To add elements to an array, use g_array_append_val(), g_array_append_vals(),
 * g_array_prepend_val(), and g_array_prepend_vals().
 * To access an element of an array, use g_array_index().
 * To set the size of an array, use g_array_set_size().
 * To free an array, use g_array_free().
 * Example5.Using a GArray to store gint values
 *  GArray *garray;
 *  gint i;
 *  /+* We create a new array to store gint values.
 *  We don't want it zero-terminated or cleared to 0's. +/
 *  garray = g_array_new (FALSE, FALSE, sizeof (gint));
 *  for (i = 0; i < 10000; i++)
 *  g_array_append_val (garray, i);
 *  for (i = 0; i < 10000; i++)
 *  if (g_array_index (garray, gint, i) != i)
 *  g_print ("ERROR: got %d instead of %d\n",
 *  g_array_index (garray, gint, i), i);
 *  g_array_free (garray, TRUE);
 */
public class ArrayG
{
	
	/** the main Gtk struct */
	protected GArray* gArray;
	
	
	public GArray* getArrayGStruct()
	{
		return gArray;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gArray;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GArray* gArray)
	{
		this.gArray = gArray;
	}
	
	/**
	 */
	
	
	/**
	 * Creates a new GArray.
	 * zero_terminated:
	 * TRUE if the array should have an extra element at the end
	 * which is set to 0.
	 * clear_:
	 * TRUE if GArray elements should be automatically cleared to 0
	 * when they are allocated.
	 * element_size:
	 * the size of each element in bytes.
	 * Returns:
	 * the new GArray.
	 */
	public this (int zeroTerminated, int clear, uint elementSize)
	{
		// GArray* g_array_new (gboolean zero_terminated,  gboolean clear_,  guint element_size);
		this(cast(GArray*)g_array_new(zeroTerminated, clear, elementSize) );
	}
	
	/**
	 * Creates a new GArray with reserved_size elements
	 * preallocated. This avoids frequent reallocation, if you are going to
	 * add many elements to the array. Note however that the size of the
	 * array is still 0.
	 * zero_terminated:
	 * TRUE if the array should have an extra element at the end with all bits cleared.
	 * clear_:
	 * TRUE if all bits in the array should be cleared to 0 on allocation.
	 * element_size:
	 * size of each element in the array.
	 * reserved_size:
	 * number of elements preallocated.
	 * Returns:
	 * the new GArray.
	 */
	public static ArrayG sizedNew(int zeroTerminated, int clear, uint elementSize, uint reservedSize)
	{
		// GArray* g_array_sized_new (gboolean zero_terminated,  gboolean clear_,  guint element_size,  guint reserved_size);
		return new ArrayG( g_array_sized_new(zeroTerminated, clear, elementSize, reservedSize) );
	}
	
	
	/**
	 * Adds len elements onto the end of the array.
	 * array:
	 * a GArray.
	 * data:
	 * a pointer to the elements to append to the end of the array.
	 * len:
	 * the number of elements to append.
	 * Returns:
	 * the GArray.
	 */
	public ArrayG appendVals(void* data, uint len)
	{
		// GArray* g_array_append_vals (GArray *array,  gconstpointer data,  guint len);
		return new ArrayG( g_array_append_vals(gArray, data, len) );
	}
	
	
	/**
	 * Adds len elements onto the start of the array.
	 * This operation is slower than g_array_append_vals() since the existing elements
	 * in the array have to be moved to make space for the new elements.
	 * array:
	 * a GArray.
	 * data:
	 * a pointer to the elements to prepend to the start of the array.
	 * len:
	 * the number of elements to prepend.
	 * Returns:
	 * the GArray.
	 */
	public ArrayG prependVals(void* data, uint len)
	{
		// GArray* g_array_prepend_vals (GArray *array,  gconstpointer data,  guint len);
		return new ArrayG( g_array_prepend_vals(gArray, data, len) );
	}
	
	
	/**
	 * Inserts len elements into a GArray at the given index.
	 * array:
	 * a GArray.
	 * index_:
	 * the index to place the elements at.
	 * data:
	 * a pointer to the elements to insert.
	 * len:
	 * the number of elements to insert.
	 * Returns:
	 * the GArray.
	 */
	public ArrayG insertVals(uint index, void* data, uint len)
	{
		// GArray* g_array_insert_vals (GArray *array,  guint index_,  gconstpointer data,  guint len);
		return new ArrayG( g_array_insert_vals(gArray, index, data, len) );
	}
	
	/**
	 * Removes the element at the given index from a GArray.
	 * The following elements are moved down one place.
	 * array:
	 * a GArray.
	 * index_:
	 * the index of the element to remove.
	 * Returns:
	 * the GArray.
	 */
	public ArrayG removeIndex(uint index)
	{
		// GArray* g_array_remove_index (GArray *array,  guint index_);
		return new ArrayG( g_array_remove_index(gArray, index) );
	}
	
	/**
	 * Removes the element at the given index from a GArray.
	 * The last element in the array is used to fill in the space, so this function
	 * does not preserve the order of the GArray. But it is faster than
	 * g_array_remove_index().
	 * array:
	 * a GArray.
	 * index_:
	 * the index of the element to remove.
	 * Returns:
	 * the GArray.
	 */
	public ArrayG removeIndexFast(uint index)
	{
		// GArray* g_array_remove_index_fast (GArray *array,  guint index_);
		return new ArrayG( g_array_remove_index_fast(gArray, index) );
	}
	
	/**
	 * Removes the given number of elements starting at the given index from a
	 * GArray. The following elements are moved to close the gap.
	 * array:
	 * a GArray.
	 * index_:
	 * the index of the first element to remove.
	 * length:
	 * the number of elements to remove.
	 * Returns:
	 * the GArray.
	 * Since 2.4
	 */
	public ArrayG removeRange(uint index, uint length)
	{
		// GArray* g_array_remove_range (GArray *array,  guint index_,  guint length);
		return new ArrayG( g_array_remove_range(gArray, index, length) );
	}
	
	/**
	 * Sorts a GArray using compare_func which should be a qsort()-style comparison
	 * function (returns less than zero for first arg is less than second arg,
	 * zero for equal, greater zero if first arg is greater than second arg).
	 * If two array elements compare equal, their order in the sorted array is
	 * undefined.
	 * array:
	 * a GArray.
	 * compare_func:
	 * comparison function.
	 */
	public void sort(GCompareFunc compareFunc)
	{
		// void g_array_sort (GArray *array,  GCompareFunc compare_func);
		g_array_sort(gArray, compareFunc);
	}
	
	/**
	 * Like g_array_sort(), but the comparison function receives an extra user data
	 * argument.
	 * array:
	 * a GArray.
	 * compare_func:
	 * comparison function.
	 * user_data:
	 * data to pass to compare_func.
	 */
	public void sortWithData(GCompareDataFunc compareFunc, void* userData)
	{
		// void g_array_sort_with_data (GArray *array,  GCompareDataFunc compare_func,  gpointer user_data);
		g_array_sort_with_data(gArray, compareFunc, userData);
	}
	
	
	/**
	 * Sets the size of the array, expanding it if necessary.
	 * If the array was created with clear_ set to TRUE, the new elements are set to 0.
	 * array:
	 * a GArray.
	 * length:
	 * the new size of the GArray.
	 * Returns:
	 * the GArray.
	 */
	public ArrayG setSize(uint length)
	{
		// GArray* g_array_set_size (GArray *array,  guint length);
		return new ArrayG( g_array_set_size(gArray, length) );
	}
	
	/**
	 * Frees the memory allocated for the GArray.
	 * If free_segment is TRUE it frees the memory block holding the elements
	 * as well. Pass FALSE if you want to free the GArray wrapper but preserve
	 * the underlying array for use elsewhere.
	 * Note
	 * If array elements contain dynamically-allocated memory, they should be freed
	 * first.
	 * array:
	 * a GArray.
	 * free_segment:
	 * if TRUE the actual element data is freed as well.
	 * Returns:
	 * the element data if free_segment is FALSE, otherwise NULL
	 */
	public char[] free(int freeSegment)
	{
		// gchar* g_array_free (GArray *array,  gboolean free_segment);
		return std.string.toString(g_array_free(gArray, freeSegment) );
	}
}