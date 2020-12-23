import requests
import bs4
import os


difficulty_map = {
    1: "easy",
    2: "medium",
    3: "hard"
}


if __name__ == "__main__":

    base_address = "https://wiki.haskell.org"
    
    res = requests.get(base_address + "/H-99:_Ninety-Nine_Haskell_Problems")
    res.raise_for_status()

    soup = bs4.BeautifulSoup(res.text, 'lxml')
    
    for link in soup.select("a"):
        href = str(link.get("href"))
        if "99_questions/" in href and "Solutions" not in href:
            try:
                path = "Problems_" + href.split('/')[-1]
                os.mkdir(path)
            except (OSError, FileExistsError):
                print(f"Creation of directory {path} failed.")
            else:
                print(f"Successfully created directory {path}.")

            questions = requests.get(base_address + href)
            questions_soup = bs4.BeautifulSoup(questions.text, 'lxml')

            title, difficulty, description, examples, code_snippets, solution_link = "", "", "", [], [], ""

            for child in questions_soup.find(id="mw-content-text").children:

                if child.name == "h2":
                    if title and "Problem" in title:
                        title = title.replace(" ", "_")
                        try:
                            os.mkdir(f"{path}/{title}")
                        except (OSError, FileExistsError):
                            print(f"Creation of directory {path}/{title} failed.")
                        else:
                            print(f"Successfully created directory {path}/{title}.")

                        with open(f"{path}/{title}/{title}.md", "w") as file:
                            file.write(f"# {title}\n")
                            file.write(f"### Difficulty: {difficulty}\n")
                            file.write(f"{description}\n")

                            for i, e in enumerate(examples):
                                if len(examples) - len(code_snippets) > 0 and len(examples) - len(code_snippets) > i:
                                    continue
                                file.write(f"{e}\n")
                                file.write(f"```\n{code_snippets[i - (len(examples) - len(code_snippets))]}```\n")
                            file.write(f"[Solution]({base_address}{solution_link})\n")
                            
                        title, difficulty, description, examples, code_snippets, solution_link = child.string, "", "", [], [], ""
                    else:
                        title = child.string

                if child.name == "p":

                    if child.string:
                        if child.string.startswith("(*"):
                            stars = child.string[:5].count("*")
                            difficulty = difficulty_map.get(stars)
                            description += child.string[stars + 3:]

                        elif child.string.startswith("Example"):
                            examples.append(child.string)

                        else:
                            description += child.string
                    elif child.find("a"):
                        solution_link = child.find("a").get("href")

                if child.name == "div" or child.name == "pre":
                    if child.name == "div":
                        child = child.find("pre")
                    code = ""
                    for c in child.children:
                        code += c.string
                    code_snippets.append(code)