<h1 style='color:red; text-align:center;'>Attribute Scope  .</h1><br><br>

<h1 style='color:blue; text-align:center;'>
page scope attribute is:: <%= pageContext.getAttribute("p") %>
</h1>
<h1 style='color:green; text-align:center;'>
request scope attribute is:: <%= request.getAttribute("r") %>
</h1>
<h1 style='color:orange; text-align:center;'>
session scope attribute is:: <%= session.getAttribute("s") %>
</h1>
<h1 style='color:cyan; text-align:center;'>
application scope attribute is:: <%= application.getAttribute("a") %>
</h1>

<h1 style='color:green; text-align:center;'>
Data retreive from particular scope ::  ${applicationScope.a }
</h1>
<h1 style='color:green; text-align:center;'>
Request Object is ::  ${pageContext.request.method }
</h1>

