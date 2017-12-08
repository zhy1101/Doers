package com.doers.filter;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

class EnhanceRequest extends HttpServletRequestWrapper
{
  private HttpServletRequest request;

  public EnhanceRequest(HttpServletRequest request)
  {
    super(request);
    this.request = request;
  }

  public String getParameter(String name)
  {
    String parameter = this.request.getParameter(name);
    try {
      parameter = new String(parameter.getBytes("iso8859-1"), "UTF-8");
    } catch (UnsupportedEncodingException e) {
      e.printStackTrace();
    }
    return parameter;
  }
}
