--	1.	What are all projects that use JavaScript?

SELECT project.name FROM project
	JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	JOIN tech ON project_uses_tech.tech_id = tech.id WHERE tech.id = 3;

--	2.	What are all technologies used by the Personal Website?

SELECT tech.name FROM project
	JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	JOIN tech ON project_uses_tech.tech_id = tech.id WHERE project.id = 4;

--3. Perform a left outer join from the tech table to the project_uses_tech table - which techs has no associated project? The answer is Ruby, JavaScript, Java.

SELECT * FROM tech
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id;

--4. Based on the previous query, get the count of the number of techs used by each project.

SELECT project.name, COUNT(tech.id) AS num_of_techs FROM project
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
	GROUP BY project.id;

--5. Perform a left outer join from the project table to the project_users_tech table - which projects has no associated tech? The answer is Whiteboard Exercises.

SELECT * FROM project
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id;

--6. Based on the previous query, get the count of the number of projects that use each tech.

SELECT tech.name, COUNT(project.id) AS num_of_projects FROM tech
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id
	LEFT OUTER JOIN project ON project_uses_tech.project_id = project.id
	GROUP BY tech.id;

--7. List all projects along with each technology used by it. You will need to do a three-way join.

SELECT * FROM Project
	JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	JOIN tech ON project_uses_tech.tech_id = tech.id;

--8. List all the distinct techs that are used by at least one project.

SELECT DISTINCT(tech.name) FROM tech
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id
	INNER JOIN project ON project_uses_tech.project_id = project.id
	GROUP BY tech.id;

--9. List all the distinct techs that are not used by any projects.

SELECT * FROM (SELECT DISTINCT(tech.name), COUNT(project.id) AS num_of_projects FROM tech
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id
	LEFT OUTER JOIN project ON project_uses_tech.project_id = project.id
	GROUP BY tech.id) AS projects_cnt WHERE projects_cnt.num_of_projects = 0;

-- 10. List all the distinct projects that use at least one tech.

SELECT DISTINCT(project.name) FROM project
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	INNER JOIN tech ON project_uses_tech.tech_id = tech.id
	GROUP BY project.id;

--11. List all the distinct projects that use no tech.

SELECT * FROM (SELECT DISTINCT(project.name), COUNT(tech.id) AS num_of_techs FROM project
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
	GROUP BY project.id) AS tech_count WHERE tech_count.num_of_techs = 0;

--12. Order the projects by how many techs it uses.

SELECT project.name, COUNT(tech.id) AS num_of_tech FROM project
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
	GROUP BY project.name
	ORDER BY num_of_tech DESC;

--13 Order the tech by how many projects use it.

SELECT tech.name, COUNT(project.id) AS num_of_projects FROM tech
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.tech_id = tech.id
	LEFT OUTER JOIN project ON project_uses_tech.project_id = project.id
	GROUP BY tech.name
	ORDER BY num_of_projects DESC;

--14. What is the average number of techs used by a project? The answer is 2.3

SELECT AVG(num_of_tech) FROM (SELECT project.name, COUNT(tech.id) AS num_of_tech FROM project
	LEFT OUTER JOIN project_uses_tech ON project_uses_tech.project_id = project.id
	LEFT OUTER JOIN tech ON project_uses_tech.tech_id = tech.id
	GROUP BY project.name
	ORDER BY num_of_tech DESC) AS average_num_of_techs WHERE average_num_of_techs.num_of_tech > 0;
