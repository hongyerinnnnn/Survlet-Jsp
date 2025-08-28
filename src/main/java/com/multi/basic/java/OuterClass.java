package com.multi.basic.java;
//MemberInnerClass
public class OuterClass {
    private int outerValue;
    public OuterClass() {//외부생성자
        System.out.println("OuterClass()");
    }
    private void showOuter(){
        System.out.println("InnerClass.showOuter()");
    }
    public class InnerClass {
        private int innerValue;

        public InnerClass() {// 내부생성자
            System.out.println("InnerClass()");
            innerValue = 1;//자기 자신을 private라도 접근가능
            outerValue=10;//내부에서 외부에 instance변수나 Method를 private이어도 접근 가능
        }
        public void showInner(){//innerClass Method
            showOuter();//OuterClass Method Call
        }
    }

    public static void main(String[] args) {
        //new InnerClass(); 내부 생성만 불가
        OuterClass.InnerClass inner = new OuterClass().new InnerClass();
        inner.showInner();

    }

}