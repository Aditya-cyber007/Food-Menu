<html>
<body>
<pre>
<%! String[] app; %>
<center>Your Order From Appetizers Menu: 
<% 
   int a;
   a=0;
   app = request.getParameterValues("app");
   if (app != null) 
   {
      for (int i = 0; i < app.length; i++) 
      {
         out.println ("<b>"+"  "+app[i]+" "+"Price: `100;"+"<b>");
	 a = 100+a;
      }
   }
   else out.println ("<b>Nothing From This Menu<b>");
out.println("Total Price For This Menu:"+"  "+"`"+a);
out.println("____________________________________________");
%>
</center>
<%! String[] dish; %>
<center>Your Order From Dishes Menu: 
<%
   int b;
   b=0;
   dish = request.getParameterValues("dish");
   if (dish != null) 
   {
      for (int j = 0; j < dish.length; j++) 
      {
         out.println ("<b>"+"  "+dish[j]+" "+"Price: `200;"+"<b>");
         b = 200+b;
      }
   }
   else out.println ("<b>Nothing From This Menu<b>");
out.println("Total Price For This Menu:"+"  "+"`"+b);
out.println("____________________________________________");
%>
</center>
<%! String[] des; %>
<center>Your Order From Desert Menu: 
<%
  int c;
   c=0;
  des = request.getParameterValues("des");
   if (des != null) 
   {
      for (int k = 0; k < des.length; k++) 
      {
         out.println ("<b>"+"  "+des[k]+" "+"Price: `70;"+"<b>");
         c = 70+c;
      }
   }
   else out.println ("<b>Nothing From This Menu<b>");
out.println("Total Price For This Menu:"+"  "+"`"+c);
out.println("____________________________________________");
%>
</center>
<%! String[] drink; %>
<center>Your Order From Drinks Menu: 
<%
  int d;
   d=0;
  drink = request.getParameterValues("drink");
   if (drink != null) 
   {
      for (int l = 0; l < drink.length; l++) 
      {
         out.println ("<b>"+"  "+drink[l]+" "+"Price: `50;"+"<b>");
         d = 50+d;
      }
   }
   else out.println ("<b>Nothing From This Menu<b>");
out.println("Total Price For This Menu:"+"  "+"`"+d);
out.println("____________________________________________");
%>
</center>
<%
int t=a+b+c+d;
if(t<=1000)
{
out.println("Total Price to Pay For This Order:"+"  "+"`"+t);
}
else if(t>1000)
{
t=t-(t/10);
out.println("Total Price to Pay For This Order After Applying 10% Discount:"+"  "+"`"+t);
}
%>

</pre>
</body>
</html>
