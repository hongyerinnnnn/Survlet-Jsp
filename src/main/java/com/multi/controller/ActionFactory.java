package com.multi.controller;

//Mapper 역할을 수행하는 부분
public class ActionFactory {
    private static ActionFactory actionFactory;

    //싱글패턴 (단 한번생성)
    public static ActionFactory getInstance() {
        if (actionFactory == null) {
            actionFactory = new ActionFactory();
        }
        return actionFactory;
    }
    //DispatcherServlet으로부터 cmd를 전달받아서 명령과 관련된 객체 생성
    public Action getAction(String cmd) {
        Action action = null;
        if(cmd.equals("write")) {
            action = new WriteAction("list.do?cmd=list",true);
        }else if(cmd.equals("list")) { //*.do라는 url이면 getAction 호출
            action = new ListAction("view/mvclist.jsp",false);
            //new ListAction을 생성할 때 path, redirect는 ActionForward로 저장해서 return
        }else if(cmd.equals("loginui")) {
            action = new UIAction("view/mvclogin.jsp",false);
        }else if (cmd.equals("loginprocess")) {
            action = new LoginProcessAction("list.do?cmd=list", true);
        }
        return action;
    }

}