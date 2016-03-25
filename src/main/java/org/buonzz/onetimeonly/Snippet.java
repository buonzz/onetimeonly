package org.buonzz.onetimeonly;

public class Snippet {
    public String contents;
    public int id;
    private SnippetService repo;

    public Snippet(){
        this.repo = new SnippetService();
    }
    
    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public void setContent(String v){        
        this.contents = v;
        this.id = repo.create(v);
    }
    
    
    public String getContent(){
        return this.contents;
    }
}
