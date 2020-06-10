package Join;

public class GilDong {
   private String name = "HongGilDong";

   public String getName() // Read
   { // 변수의 첫 글자는 대문자 N
      return name;
   }

   public void setName(String name) // Write
   { // 변수의 첫 글자는 대문자 N
      this.name = name;
      // this는 현재 클래스의 name 값 임
   }
}