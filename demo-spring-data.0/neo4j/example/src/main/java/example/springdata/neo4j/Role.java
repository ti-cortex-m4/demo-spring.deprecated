// Generated by delombok at Tue Jul 30 22:24:54 MSK 2019
/*
 * Copyright 2015-2018 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package example.springdata.neo4j;

import org.neo4j.ogm.annotation.EndNode;
import org.neo4j.ogm.annotation.GeneratedValue;
import org.neo4j.ogm.annotation.Id;
import org.neo4j.ogm.annotation.RelationshipEntity;
import org.neo4j.ogm.annotation.StartNode;

/**
 * A Role relationship entity between an actor and movie.
 *
 * @author Luanne Misquitta
 * @author Michael J. Simons
 */
@RelationshipEntity(type = "ACTED_IN")
public class Role {
	@Id
	@GeneratedValue
	private Long id;
	@StartNode
	private Actor actor;
	private String role;
	@EndNode
	private Movie movie;

	Role(Actor actor, String role, Movie movie) {
		this.actor = actor;
		this.role = role;
		this.movie = movie;
	}

	@SuppressWarnings("all")
	private Role() {
	}

	@SuppressWarnings("all")
	public Long getId() {
		return this.id;
	}

	@SuppressWarnings("all")
	public Actor getActor() {
		return this.actor;
	}

	@SuppressWarnings("all")
	public String getRole() {
		return this.role;
	}

	@SuppressWarnings("all")
	public Movie getMovie() {
		return this.movie;
	}
}
