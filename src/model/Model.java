package model;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;

import org.bson.Document;
import org.bson.codecs.configuration.CodecRegistries;
import org.bson.codecs.configuration.CodecRegistry;
import org.bson.codecs.pojo.PojoCodecProvider;
import org.bson.codecs.pojo.annotations.BsonIgnore;
import org.bson.types.ObjectId;

import com.mongodb.BasicDBObject;
import com.mongodb.ConnectionString;
import com.mongodb.MongoClientOptions;
import com.mongodb.MongoClientSettings;
import com.mongodb.MongoClientOptions.Builder;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;

public class Model {
	public static ConnectionString connectionString = new ConnectionString("mongodb+srv://tranbaoduy4:laptrinhweb@cluster0.sbpvz.mongodb.net/webfit");
	
	public static CodecRegistry pojoCodecRegistry = CodecRegistries.fromProviders(PojoCodecProvider.builder().automatic(true).build());
	public static CodecRegistry codecRegistry = CodecRegistries.fromRegistries(MongoClientSettings.getDefaultCodecRegistry(), pojoCodecRegistry);
//	MongoClient mongoClient = MongoClients.create(MongoClientSettings.builder()
//            .codecRegistry(pojoCodecRegistry).build());
	public static MongoClientSettings clientSettings = MongoClientSettings.builder()
            .applyConnectionString(connectionString)
            .codecRegistry(codecRegistry)
            .build();
	public static MongoClient mongoClient = MongoClients.create(clientSettings);
    public static MongoDatabase db = mongoClient.getDatabase("Group2");
	
    @BsonIgnore
	public static MongoCollection<User> USER = db.getCollection("USER", User.class);
    @BsonIgnore
    public static MongoCollection<Product> PRODUCT = db.getCollection("PRODUCT", Product.class);
    @BsonIgnore
    public static MongoCollection<Music> MUSIC = db.getCollection("MUSIC", Music.class);
	Logger logger = Logger.getLogger("org.mongodb.driver");

	public Model() {
		logger.setLevel(Level.SEVERE);
	}
}