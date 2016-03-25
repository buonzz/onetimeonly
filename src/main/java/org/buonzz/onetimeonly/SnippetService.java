package org.buonzz.onetimeonly;

import java.util.concurrent.ConcurrentMap;
import org.mapdb.*;

public class SnippetService {
    private final DB db;
    
    public SnippetService(){
       this.db = DBMaker.memoryDB().make();
    }
    public int create(String snippet){
        ConcurrentMap map = db.hashMap("map").make();
        int key = snippet.hashCode();
        map.put(key, snippet);
        return key;
    }
}
