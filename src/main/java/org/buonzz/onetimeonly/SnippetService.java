package org.buonzz.onetimeonly;

import java.util.concurrent.ConcurrentMap;
import org.mapdb.*;

public class SnippetService {
    private final DB db;
    private final ConcurrentMap map;
    public SnippetService(){
       this.db = DBMaker.memoryDB().make();
       this.map = this.db.hashMap("onetimeonly").make();
    }
    public int create(String snippet){
        int key = snippet.hashCode();
        map.put(key, snippet);
        return key;
    }
    
    public String get(int key){
        return (String) this.map.get(key);
    }
}
