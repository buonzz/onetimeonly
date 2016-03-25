package org.buonzz.onetimeonly;

import java.security.NoSuchAlgorithmException;

public class Snippet {
    public String contents;
    public String id;
     
    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    public void setContent(String v) throws NoSuchAlgorithmException{        
        this.contents = v;
        this.id = SnippetService.create(v);
    }
    
    
    public String getContent(){
        return this.contents;
    }
}
