package in.ineuron.Handler;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;

public class HelloHandler implements Tag {
	PageContext pageContext;
	static {
		System.out.println("HelloHandler. class file is loading...");
	}

	public HelloHandler() {
		System.out.println("HelloHandler.HelloHandler() object is created");
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("HelloHandler.doEndTag()");
		return SKIP_PAGE;
	}

	@Override
	public int doStartTag() throws JspException{
		System.out.println("HelloHandler.doStartTag()");
		try {
		JspWriter out=  pageContext.getOut();
		out.println("<h1>Hello this is from Tag Handler Class</h1>");
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

	@Override
	public Tag getParent() {
		System.out.println("HelloHandler.getParent()");
		return null;
	}

	@Override
	public void release() {
		System.out.println("HelloHandler.release()");
		
	}

	@Override
	public void setPageContext(PageContext arg0) {
		this.pageContext=pageContext;
		System.out.println("HelloHandler.setPageContext()");
		
	}

	@Override
	public void setParent(Tag arg0) {
		System.out.println("HelloHandler.setParent()");
		
	}

}
