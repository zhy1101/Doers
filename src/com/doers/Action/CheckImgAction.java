package com.doers.Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Map;
import java.util.Random;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;

public class CheckImgAction extends ActionSupport
{
  public String execute()
    throws IOException
  {
    int width = 120;
    int height = 30;

    BufferedImage bufferedImage = new BufferedImage(width, height, 
      1);

    Graphics graphics = bufferedImage.getGraphics();

    graphics.setColor(getRandColor(200, 250));
    graphics.fillRect(0, 0, width, height);

    graphics.setColor(Color.WHITE);
    graphics.drawRect(0, 0, width - 1, height - 1);

    Graphics2D graphics2d = (Graphics2D)graphics;

    graphics2d.setFont(new Font("Î¢ÈíÑÅºÚ", 1, 18));

    String words = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
    Random random = new Random();

    StringBuffer sb = new StringBuffer();

    int x = 10;
    for (int i = 0; i < 4; i++)
    {
      graphics2d.setColor(
        new Color(20 + random.nextInt(110), 20 + random
        .nextInt(110), 20 + random.nextInt(110)));

      int jiaodu = random.nextInt(60) - 30;

      double theta = jiaodu * 3.141592653589793D / 180.0D;

      int index = random.nextInt(words.length());

      char c = words.charAt(index);
      sb.append(c);

      graphics2d.rotate(theta, x, 20.0D);
      graphics2d.drawString(String.valueOf(c), x, 20);
      graphics2d.rotate(-theta, x, 20.0D);
      x += 30;
    }

    ActionContext.getContext().getSession().put("checkcode", sb.toString());

    graphics.setColor(getRandColor(160, 200));

    for (int i = 0; i < 20; i++) {
      int x1 = random.nextInt(width);
      int x2 = random.nextInt(12);
      int y1 = random.nextInt(height);
      int y2 = random.nextInt(12);
      graphics.drawLine(x1, y1, x1 + x2, x2 + y2);
    }

    graphics.dispose();
    ImageIO.write(bufferedImage, "jpg", ServletActionContext.getResponse().getOutputStream());

    return "none";
  }

  private Color getRandColor(int fc, int bc) {
    Random random = new Random();
    if (fc > 255) {
      fc = 255;
    }
    if (bc > 255) {
      bc = 255;
    }
    int r = fc + random.nextInt(bc - fc);
    int g = fc + random.nextInt(bc - fc);
    int b = fc + random.nextInt(bc - fc);
    return new Color(r, g, b);
  }
}