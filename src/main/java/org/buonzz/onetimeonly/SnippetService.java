package org.buonzz.onetimeonly;

import java.util.concurrent.ConcurrentMap;
import org.mapdb.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SnippetService {
    public static final DB db = DBMaker.memoryDB().make();
    public static final ConcurrentMap map = db.hashMap("onetimeonly").make();
    
    public static String create(String snippet) throws NoSuchAlgorithmException{
        
        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(snippet.getBytes());
        byte byteData[] = md.digest();
        
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < byteData.length; i++) {
         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
        }
        
        String key = sb.toString();
        map.put(key, snippet);
        return key;
    }
    
    public static String get(String key){
        return (String) map.remove(key);
    }
}
