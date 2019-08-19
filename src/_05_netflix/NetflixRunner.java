package _05_netflix;

public class NetflixRunner {
	
	public static void main(String[] args) {
		
		Movie MovieA = new Movie("MovieA", 4);
		Movie MovieB = new Movie("MovieB", 5);
		Movie MovieC = new Movie("MovieC", 2);
		Movie MovieD = new Movie("MovieD", 3);
		Movie MovieE = new Movie("MovieE", 3);
		MovieA.getTicketPrice();
		MovieB.getTicketPrice();
		MovieC.getTicketPrice();
		MovieD.getTicketPrice();
		MovieE.getTicketPrice();
		NetflixQueue a = new NetflixQueue();
		a.addMovie(MovieA);
		a.addMovie(MovieB);
		a.addMovie(MovieC);
		a.addMovie(MovieD);
		a.addMovie(MovieE);
		a.sortMoviesByRating();
		a.printMovies();
		System.out.println("The best movie is " + a.getBestMovie());
		System.out.println("The second best movie is " + a.getMovie(1));
	}
}
