package model;

import java.util.ArrayList;
import java.util.Iterator;

import org.bson.types.ObjectId;

import com.mongodb.client.FindIterable;
import com.mongodb.client.model.Filters;

public class Music extends Model {
	private ObjectId _id;
	private String productCode;
	private String songName;
	private String fileName;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public ObjectId get_id() {
		return _id;
	}

	public void set_id(ObjectId _id) {
		this._id = _id;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getSongName() {
		return songName;
	}

	public void setSongName(String songName) {
		this.songName = songName;
	}

	public static ArrayList<Music> GetMusicByProductCode(String productCode) {
		FindIterable<Music> cursor = Model.MUSIC.find(Filters.eq("productCode", productCode));
		Iterator<Music> it = cursor.iterator();

		ArrayList<Music> listSongs = new ArrayList<Music>();
		if (it.hasNext()) {
			while (it.hasNext()) {
				listSongs.add(it.next());
			}
		}
		return listSongs;

	}

}
