import com.mongodb.client.*;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import org.bson.Document;

public class MongoDBUpdate {
    public static void main(String[] args) {
        // Connection URI to local MongoDB server (used by MongoDB Compass)
        String uri = "mongodb://localhost:27017";

        
        try (MongoClient mongoClient = MongoClients.create(uri)) {

            
            MongoDatabase database = mongoClient.getDatabase("vit");

            
            MongoCollection<Document> collection = database.getCollection("students");

            
            Document filter = new Document("name", "Ansh");

            
            Document update = new Document("$set", new Document("age", 21));

            
            collection.updateOne(filter, update);

            System.out.println("Document updated successfully.");
        }
    }
}
