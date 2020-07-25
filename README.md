# CodingInterview

Programming task

Using jsp create a web-page.

Header bar with title from session attribute = "page_title".
Menus based on data in a 3D array.
		
Rules for 3D menu array:
	If the sub-array contains just 1 item then create that item as a clickable link that navigates to the specified url.
	If sub-array contains more than 1 item then create a nested menu that has the name specified by the first item in the array
		and contains clickable links based on the rest of the items in the sub-array.

Example:
	{
		{{"display this text" , "navigate to this url when clicked"}},
		{{display this}	, {show when "menu3" is clicked, navigate to this when clicked}	, etc...	
	};
	

Here's an array for testing:
	
String[][][] menus = new String[][][]
		{
			{{"menu1","menu1_link_url"}},
			{{"menu3"}, {"submenu3_1", "submenu3_1_link_url"}, {"submenu3_2", "submenu3_2_link_url"}},
			{{"menu2"},{"submenu2_1", "submenu2_1_link_url"}, {"submenu2_2", "submenu2_2_link_url"}, {"submenu2_3", "submenu2_3_link_url"}}
		};
		
We will be looking at: coding style, variable naming convention and code commenting.

Extra credit:
	Design a system like the one above except it can create any number of submenus based off a data structure (HashMap/linkedlist/array).
	ie - a data structure that can be used to define a potentially infinite list of menus and potentially infinitely nested submenus within each menu.
	The data structure must meet these requirements:
		-it must be possible to add a new item to it (in the code) without needing to redefine the datastructure.
		-any item in any layer of the data structure can define either: 1) a clickeable link 2) a submenu - based on the rules above for defining links/submenus.


