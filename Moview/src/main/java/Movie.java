
public class Movie {
	
	protected String id;

	protected String movieName;

	protected String movieImage;

	protected String trailer;
	
	public Movie (String id, String movieName, String movieImage, String trailer, String description, String genre, String ageRating) {
		super(); 
		this.id = id;
		this.movieName = movieName;
		this.movieImage = movieImage;
		this.trailer = trailer;
		this.description = description;
		this.genre = genre;
		this.ageRating = ageRating;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getMovieImage() {
		return movieImage;
	}

	public void setMovieImage(String movieImage) {
		this.movieImage = movieImage;
	}

	public String getTrailer() {
		return trailer;
	}

	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getAgeRating() {
		return ageRating;
	}

	public void setAgeRating(String ageRating) {
		this.ageRating = ageRating;
	}

	protected String description;

	protected String genre; 

	protected String ageRating;
	

}
