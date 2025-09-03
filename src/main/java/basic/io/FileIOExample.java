package basic.io;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

/*
Stream은 흐름을 말함
Byte를 가지고 흘러가면 ByteStream
 */
public class FileIOExample { //ByteStream관련
    public static void main(String[] args) {
        try{
            FileOutputStream fos = new FileOutputStream("c:\\iowrite.txt");
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            String content = "Hello World!";
            bos.write(content.getBytes());
            bos.flush();

        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
