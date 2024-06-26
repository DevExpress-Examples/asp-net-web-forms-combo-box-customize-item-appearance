<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128530660/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4100)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* **[Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))**
* [JScript.js](./CS/WebSite/Scripts/JScript.js) (VB: [JScript.js](./VB/WebSite/Scripts/JScript.js))
<!-- default file list end -->
# ASPxComboBox - How to change a color of text for certain items


<p><strong>Updated:<br></strong><br>Starting with version 16.2, this functionality is available out of the box. We implemented a new client-side API in ASPxComboBox, ASPxListBox and ASPxTokenBox that allows you to change style, tool-tip and structure of  items: the SetItemTooltip, AddItemCssClass, RemoveItemCssClass, and SetItemHtml methods.  </p>
<p><br><strong>For earlier versions:</strong><br><br>This example illustrates how to customize a style for each item. Since the color is changed for an HTML element, it is necessary to synchronize these settings on each round-trip to the server. To do this, handle the client-side combo box' Init and EndCallback event.</p>
<p><strong>Note:</strong> the <em>GetItemElement</em> and <em>GetItemRow</em> methods are undocumented and can be changed without any notification with future releases.</p>

<br/>


<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-combo-box-customize-item-appearance&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-combo-box-customize-item-appearance&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
