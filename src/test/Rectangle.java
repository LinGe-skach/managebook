/*程序题：创建一个Rectangle类，在类中：
（1）定义双精度成员变量width,height表示长、宽；
（2）定义一个方法setRectangle(int w,int h)对长、宽进行初始化，要求长、宽大于零，输出错误提示。
（3）定义一个方法getArea()求长方形的面积。
     创建主类时，在主方法中，创建一个矩形对象rect,通过setRectangle(int w, int h)初始化该矩形对象的长、宽为5，6.求此时长方形面积并输出。
*/
public class Rectangle {
    private double width;
    private double height;
    private double Are;
    double length;
    //得到返回值，定义方法并求面积
    public void getArea(){
        this.Are=this.width*this.height;
        System.out.println(Are);
    }
    public void setRectangle(int w,int h){
        if (w>0){
            this.width=w;
        }else {
            System.out.println("宽度要大于0");
        }
       if (h>0){
           this.height=h;
       }else {
           System.out.println("长度要大于0");
       }

    }

    public static void main(String[] args) {
        Rectangle rectangle=new Rectangle();
        rectangle.setRectangle(5,6);
        rectangle.getArea();

    }
}
