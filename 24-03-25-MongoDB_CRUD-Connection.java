// MongoDB_Connection
package practice;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;


public class MongoDB_Connection {
  public static void main(String[] args) {

    private static final String URI = "mongodb://localhost:27017";

    public static void main(String[] args) { 
      // Connect to MongoDB server
      try (MongoClient mongoClient = MongoClients.create(URI)) {

        // Access the database
        MonoDatabase database = mongoClient.getDatabase("vit");

        System.out.println("Connected to MongoDB database : " + database.getName());
      } catch (Exception e) {
          e.printStackTrace();
      }

      try (MongoClient mongoClient = MongoClients.create(URI)) {
            
            MongoDatabase database = mongoClient.getDatabase("mydb");
            MongoCollection<Document> collection = database.getCollection("employees");

            // Update the department of an employee with name "Ansh Sureka"
            collection.updateOne(Filters.eq("name", "Ansh Sureka"),
                                 Updates.set("department", "Engineering"));
            
            System.out.println("Document updated successfully.");
        } catch (Exception e) {
            e.printStackTrace();
        }
  }
}
