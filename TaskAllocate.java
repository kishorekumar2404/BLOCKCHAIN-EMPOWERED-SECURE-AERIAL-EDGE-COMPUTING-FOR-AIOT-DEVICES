package OPTIMAL;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.TimerTask;
 
import java.util.Timer;
 
public class TaskAllocate extends TimerTask{
 
       String strObject;
 
       public TaskAllocate(String strObject){
 
           this.strObject = strObject;
 
       }
 
       public void run(){
 
           System.out.println("Inside Run task-" + strObject);
 
       }
}