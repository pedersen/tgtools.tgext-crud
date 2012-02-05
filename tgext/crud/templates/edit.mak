<%inherit file="local:templates.master"/>
<%namespace name="menu_items" file="tgext.crud.templates.menu_items"/>

<%def name="title()">
${tmpl_context.title} - ${model}
</%def>

<%def name="body_class()">tundra</%def>
<%def name="header()">
  ${menu_items.menu_style()}
  ${parent.header()}
</%def>
  <div id="main_content">
    ${menu_items.menu_items(pk_count)}
  <div style="float:left;" class="crud_edit">
    <h2 style="margin-top:1px;">Edit ${model}</h2>
     ${tmpl_context.widget(value=value, action='./') | n}
  </div>
  <div style="height:0px; clear:both;"> &nbsp; </div>
  </div> <!-- end main_content -->
