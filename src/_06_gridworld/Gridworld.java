package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	
	public static void main(String[] args) {
		World world = new World();
		world.show();
		Location location1 = new Location(5, 7);
		world.add(location1, new Bug());
		Location location2 = world.getRandomEmptyLocation();
		Bug bug = new Bug();
		world.add(location2, bug);
		bug.setColor(new Color(10, 150, 175));
		bug.turn();
		bug.turn();
		int a = location2.getRow();
		int b = location2.getCol();
		Location location3 = new Location(a - 1, b);
		Location location4 = new Location(a + 1, b);
		world.add(location3, new Flower());
		world.add(location4, new Flower());
		for (int i = 0; i < 96; i++) {
			Location location5 = world.getRandomEmptyLocation();
			world.add(location5, new Flower());
		}
	}
}
