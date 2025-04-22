// InsertClass
package practice;


import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import org.bson.Document;

public class InsertClass {

    public static void main(String[] args) {
        try (MongoClient mongoClient = MongoClients.create("mongodb://localhost:27017")) {
            
            MongoDatabase database = mongoClient.getDatabase("vit");
            MongoCollection<Document> collection = database.getCollection("employees");

            // Create a new document
            Document employee = new Document("name", "Ansh Sureka")
                                .append("age", 21)
                                .append("department", "Engineering");
            
            // Insert the document
            collection.insertOne(employee);
            
            System.out.println("Document inserted: " + employee.toJson());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
