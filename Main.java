package OPTIMAL;


import java.io.*;
import java.applet.*;
import java.awt.*;
import java.awt.color.*;
import java.awt.image.*;
import java.awt.font.*;
import java.awt.event.*;
import javax.swing.*;

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.*;



public class Main extends JFrame implements ActionListener
	{
	
	 Statement stmt;
         Connection con;
	 JFrame frame;
	 private JPanel loginpanel;
	 JLabel namelabel,pwdlabel,wrd;
	 JLabel lbl1,lbl2,lbl3,lbl4;
	
	 java.util.Random ra1=new java.util.Random();
	 java.util.Random ra2=new java.util.Random();
	 java.util.Random ra3=new java.util.Random();
	 java.util.Random ra4=new java.util.Random();
	 java.util.Date dt1=new java.util.Date();
         java.util.Date dt2=new java.util.Date();

	 JLabel lbna1,lbna2,lbna3,lbna4;
	 Timer timer1;
         SimpleDateFormat format = new SimpleDateFormat("yyyy:MM:dd  HH:mm:ss");  
             
         java.util.Date d1 = null;
         java.util.Date d2 = null;

            
	public Main()
	{
		
		frame=new JFrame("BOOMERANG");
		 loginpanel=new JPanel();
		 loginpanel.setLayout(null);
		 
		 loginpanel = new ImageView(new ImageIcon("./images/bg.png").getImage());//new JPanel();

			
		 wrd=new JLabel("");
		 wrd.setBounds(50,20,300,30);
		 loginpanel.add(wrd);
		 wrd.setForeground(Color.DARK_GRAY);
		 
		 lbna1=new JLabel("A");
		 lbna1.setBounds(580,50,80,80);
		 lbna1.setForeground(Color.RED);
		 loginpanel.add(lbna1);
		 //bottom
		 lbl1=new JLabel("");
		 lbl1=new JLabel(new ImageIcon("./images/m4.png"));
		 lbl1.setBounds(600,50,60,60);
		 loginpanel.add(lbl1);
		 
		 
		 
		 lbna2=new JLabel("B");
		 lbna2.setBounds(480,500,80,80);
		 lbna2.setForeground(Color.RED);
		 loginpanel.add(lbna2);
		 //top
		 lbl2=new JLabel("");
		 lbl2=new JLabel(new ImageIcon("./images/m3.PNG"));
		 lbl2.setBounds(510,500,60,60);
		 lbl2.setForeground(Color.BLUE);
		 loginpanel.add(lbl2);

		 lbna3=new JLabel("C");
		 lbna3.setBounds(0,200,80,80);
		 lbna3.setForeground(Color.RED);
		 loginpanel.add(lbna3);

		 //left
		 lbl3=new JLabel("");
		 lbl3=new JLabel(new ImageIcon("./images/m1.PNG"));
		 lbl3.setBounds(5,190,60,60);
		 loginpanel.add(lbl3);
		 
		//right 
		 lbna4=new JLabel("D");
		 lbna4.setBounds(1080,240,80,80);
		 lbna4.setForeground(Color.RED);
		 loginpanel.add(lbna4);
		 
		 lbl4=new JLabel("");
		 lbl4=new JLabel(new ImageIcon("./images/m2.PNG"));
		 lbl4.setBounds(1100,260,60,60);
		 loginpanel.add(lbl4);
		 
		 pwdlabel=new JLabel("");
		 
		 pwdlabel.setBounds(30,150,150,30);
		 loginpanel.add(pwdlabel);
		 
		 
		 frame.add(loginpanel);
		 frame.setSize(1250,650);
		 frame.setLocation(0,0);
		 frame.setVisible(true);
		 
                 
                 try {
                        String url="jdbc:mysql://localhost:3306/boomerang";
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection(url,"root","root");
                        stmt=con.createStatement();
                        //stmt = con.createStatement();
         
                        String qry1="delete from routing";
                        stmt.executeUpdate(qry1);
                     }
                 catch(ClassNotFoundException | SQLException ex)
                 {}
                     
                 try{
                        d1 = format.parse(getDATE().toString());
                    }
                    catch(Exception ex){}
                 
		 timer1 = new Timer(35, this);
		    timer1.start();
	
                
        }
	 

	int a,b,c,d;
	public void actionPerformed(ActionEvent e)  {
            
            try{
            d2 = format.parse(getDATE().toString());
            }
            catch(Exception ex){}
            
		a=ra1.nextInt(10);
		b=ra2.nextInt(10);
		c=ra3.nextInt(10);
		d=ra4.nextInt(10);
		 
		//lbl2.setLocation(lbl2.getX(),lbl2.getY()+1);
		lbl2.setLocation(lbl2.getX(),lbl2.getY()+a);
		if(lbl2.getY()>500)
		        lbl2.setLocation(lbl2.getX(),5);
		    
		    
		//lbl1.setLocation(lbl1.getX(),lbl1.getY()-1);
		lbl1.setLocation(lbl1.getX(),lbl1.getY()-b);
		
		if(lbl1.getY()<5)
		        lbl1.setLocation(lbl1.getX(),500);
		   
		    
		 //lbl3.setLocation(lbl3.getX()-1,lbl3.getY());
		 lbl3.setLocation(lbl3.getX()-c,lbl3.getY());
		 if(lbl3.getX()<5)
		     lbl3.setLocation(1100,lbl3.getY());
		    
		 //lbl4.setLocation(lbl4.getX()+1,lbl4.getY());
		 lbl4.setLocation(lbl4.getX()+d,lbl4.getY());
		 if(lbl4.getX()>1100)
		     lbl4.setLocation(10,lbl4.getY());
		    
		 if(lbl1.getY()<5)
			 lbl1.setLocation(lbl1.getX(),500);
		   
		 if(lbl3.getX()>600)
			   lbna3.setText("G"); 
		 else
			   lbna3.setText("C");
		   
		 if(lbl4.getX()>600)
			   lbna4.setText("D"); 
		 else
			   lbna4.setText("H");
		   
		 if(lbl1.getY()>200)
			   lbna1.setText("A"); 
		 else
			   lbna1.setText("E");
		   
		 if(lbl2.getY()>200)
			   lbna2.setText("B"); 
		 else
			   lbna2.setText("F");
		   
		 lbna1.setLocation(lbl1.getX()-10, lbl1.getY());
		 lbna2.setLocation(lbl2.getX()-10, lbl2.getY());
		 lbna3.setLocation(lbl3.getX()-10, lbl3.getY());
		 lbna4.setLocation(lbl4.getX()-10, lbl4.getY());
                 long s=d2.getTime()-d1.getTime();
                  long diffSeconds = s/ 1000;       

                 
                
                if(diffSeconds >1)
                 {
                insert_Route("1",String.valueOf(a),lbna1.getText(),lbl1.getX()+","+lbl1.getY());
                insert_Route("2",String.valueOf(b),lbna2.getText(),lbl2.getX()+","+lbl2.getY());
                insert_Route("3",String.valueOf(c),lbna3.getText(),lbl3.getX()+","+lbl3.getY());
                insert_Route("4",String.valueOf(d),lbna4.getText(),lbl4.getX()+","+lbl4.getY());
                  try{
                    d1 = format.parse(getDATE().toString());
                    }
            catch(Exception ex){}
                 }
                
                 
	}

        public void insert_Route(String slno,String speed,String lbname,String loc)
        {
            String qry="insert into routing values('"+slno+"','"+speed+"','"+lbname+"','"+loc+"','"+getDATE()+"')";
                try 
                {
                    stmt.executeUpdate(qry);
                } 
                catch (SQLException ex) 
                {
                    Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
                }
        
        }
        public static String getDATE()
		{

		java.util.Date date12 = new java.util.Date();
		String strDateFormat = "yyyy:MM:dd  HH:mm:ss";
		SimpleDateFormat sdf = new SimpleDateFormat(strDateFormat);
		String date1 = sdf.format(date12.getTime());
		return date1;
		}
	public static void main(String ar[])
	{
	new Main();
	}
	}
