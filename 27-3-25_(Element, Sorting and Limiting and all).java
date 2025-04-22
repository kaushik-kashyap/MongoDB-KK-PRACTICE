import com.mongodb.client.*;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Sorts;
import org.bson.Document;
import java.util.Arrays;

public class MongoDBOperations {
    public static void main(String[] args) {
        
        String uri = "mongodb://localhost:27017";
        try (MongoClient mongoClient = MongoClients.create(uri)) {

            
            MongoDatabase database = mongoClient.getDatabase("vit");
            MongoCollection<Document> collection = database.getCollection("students");

            
            collection.insertMany(Arrays.asList(
                new Document("name", "Ravi").append("age", 22).append("marks", 85),
                new Document("name", "Anita").append("age", 20).append("marks", 91),
                new Document("name", "Vikram").append("age", 23).append("marks", 78),
                new Document("name", "Sneha").append("age", 21).append("marks", 88)
            ));

            System.out.println("Documents inserted.");

            
            System.out.println("\nSorted by marks (descending):");
            FindIterable<Document> sortedDocs = collection.find()
                    .sort(Sorts.descending("marks"));

            for (Document doc : sortedDocs) {
                System.out.println(doc.toJson());
            }

            
            System.out.println("\nTop 2 students by marks:");
            FindIterable<Document> top2Docs = collection.find()
                    .sort(Sorts.descending("marks"))
                    .limit(2);

            for (Document doc : top2Docs) {
                System.out.println(doc.toJson());
            }

            
            System.out.println("\nStudents with marks > 80:");
            FindIterable<Document> filteredDocs = collection.find(Filters.gt("marks", 80));
            for (Document doc : filteredDocs) {
                System.out.println(doc.toJson());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
