package org.buonzz.onetimeonly;

public class SnippetService {
    public String contents;
    public String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public void setContent(String v){
        this.contents = v;
        System.out.println(v);
    }
    
    
    public String getContent(){
        return this.contents;
    }
}
