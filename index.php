<?php

$bdd = new PDO('mysql:host=localhost;dbname=auto_ecole', 'root', '');
$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$bdd->exec("set names utf8");

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (isset($_POST['student_submit'])) {
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $birthday = $_POST['birthday'];
    $adress = $_POST['adress'];
    if (!empty($firstname) && !empty($lastname) && !empty($birthday) && !empty($adress)) {
        $req = $bdd->prepare('INSERT INTO student (firstname, lastname, birthday, adress) VALUES (?,?,?,?)');
        $req = $req->execute(array($firstname, $lastname, $birthday, $adress));
    }
}

if (isset($_POST['serie_submit'])) {
    $cd_id = $_POST['cd_rom_id'];
    $serie_id = $_POST['serie_id'];
    if (!empty($cd_id) && !empty($serie_id)) {
        $req = $bdd->prepare('INSERT INTO serie (cd_rom_id, cd_rom_serie_number) VALUES (?,?)');
        $req = $req->execute(array($cd_id, $serie_id));
    }
}

if (isset($_POST['session_submit'])) {
    $date = $_POST['date'];
    $serie_id = $_POST['serie_id'];
    if (!empty($date) && !empty($serie_id)) {
        $req = $bdd->prepare('INSERT INTO session (date, serie_id) VALUES (?,?)');
        $req = $req->execute(array($date, $serie_id));
    }
}

if (isset($_POST['session_submit'])) {
    $date = $_POST['date'];
    $serie_id = $_POST['serie_id'];
    if (!empty($date) && !empty($serie_id)) {
        $req = $bdd->prepare('INSERT INTO session (date, serie_id) VALUES (?,?)');
        $req = $req->execute(array($date, $serie_id));
    }
}

if (isset($_POST['session_grade_submit'])) {
    $session_id = $_POST['session_id'];
    $student_id = $_POST['student_id'];
    $grade = $_POST['grade'];
    if (!empty($session_id) && !empty($student_id) && !empty($grade)) {
        $req = $bdd->prepare('INSERT INTO student_has_session (student_id, session_id, grade) VALUES (?, ?,?)');
        $req = $req->execute(array($student_id, $session_id, $grade));
    }
}

if (isset($_POST['examen_grade_submit'])) {
    $examen_id = $_POST['examen_id'];
    $student_id = $_POST['student_id'];
    $grade = $_POST['grade'];
    if (!empty($examen_id) && !empty($student_id) && !empty($grade)) {
        $req = $bdd->prepare('INSERT INTO student_has_exam (student_id, examen_id, grade) VALUES (?, ?,?)');
        $req = $req->execute(array($student_id, $examen_id, $grade));
    }
}

if (isset($_POST['question_submit'])) {
    $theme_id = $bdd->prepare('SELECT * FROM theme');
    $theme_id->execute();
    $theme_id = $theme_id->fetchAll();
    $themeCount = count($theme_id);
    for ($i = 0; $i < 320; $i++) {
        $question = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consectetur ?";
        $theme = mt_rand(1, $themeCount);
        $difficulty = mt_rand(2, 6);
        $req = $bdd->prepare('INSERT INTO question (title, difficulty, theme_id) VALUES (?, ?, ?)');
        $req = $req->execute(array($question, $difficulty, $theme));
    }
}

if (isset($_POST['answer_submit'])) {
    $questions = $bdd->prepare('SELECT * FROM question');
    $questions->execute();
    $questions = $questions->fetchAll();
    foreach ($questions as $question) {
        $array = [];
        for ($i = 0; $i < 4; $i++) {
            $answer = "Lorem ipsum dolor sit amet";
            $is_good_answer = mt_rand(0, 1);
            $array[] = $is_good_answer;
            if ($i !== 0 && $array[$i - 1] === 1) {
                $array[$i] = 0;
            }
            $req = $bdd->prepare('INSERT INTO answer (title, is_good_answer, question_id) VALUES (?, ?, ?)');
            $req = $req->execute(array($answer, $array[$i], $question['id']));
        }
    }
}

if (isset($_POST['question_answer_submit'])) {
    $series = $bdd->prepare('SELECT * FROM serie');
    $series->execute();
    $series = $series->fetchAll();
    $seriesCount = count($series);
    $questions = $bdd->prepare('SELECT * FROM question');
    $questions->execute();
    $questions = $questions->fetchAll();
    $questionsCount = count($questions);
    $order = 1;
    foreach ($series as $serie) {
        for ($i = 0; $i < 40; $i++) {
            $rand = randRange(1, $questionsCount, $questionsCount);
            $req = $bdd->prepare('INSERT INTO question_has_serie (question_id, serie_id, question_order) VALUES (?, ?, ?)');
            $req = $req->execute(array($rand[$i], $serie['id'], $i + 1));
        }
    }
}

$cd_rom_id = $bdd->prepare('SELECT * FROM cd_rom');
$cd_rom_id->execute();
$cd = $cd_rom_id->fetchAll();
$cdCount = count($cd);

$serie_id = $bdd->prepare('SELECT * FROM serie');
$serie_id->execute();
$serie = $serie_id->fetchAll();
$serieCount = count($serie);

$student = $bdd->prepare('SELECT * FROM student');
$student->execute();
$student = $student->fetchAll();
$studentCount = count($student);

$session_id = $bdd->prepare('SELECT * FROM session');
$session_id->execute();
$session_id = $session_id->fetchAll();
$sessionCount = count($session_id);

$examen_id = $bdd->prepare('SELECT * FROM examen');
$examen_id->execute();
$examen_id = $examen_id->fetchAll();
$examenCount = count($examen_id);

function randRange($min, $max, $count)
{
    $numbers = range($min, $max);
    shuffle($numbers);
    return array_slice($numbers, 0, $count);
}

?>

<form action="" method="post">
    <input type="text" name="firstname" placeholder="firstname">
    <input type="text" name="lastname" placeholder="lastname">
    <input type="date" name="birthday" placeholder="birthday">
    <input type="text" name="adress" placeholder="adress">
    <input type="submit" value="student_submit" name="student_submit">
</form>

<form action="" method="post">
    <label for="cd_rom_id">Cd rom Id</label>
    <select name="cd_rom_id" id="">
        <?php for ($i = 1; $i <= $cdCount; $i++) : ?>
            <option value="<?= $i ?>">Cd rom n° <?= $i ?></option>
        <?php endfor ?>
    </select>
    <label for="serie_id">Serie Id</label>
    <select name="serie_id" id="serie_id">
        <?php for ($i = 1; $i <= 6; $i++) : ?>
            <option value="<?= $i ?>">Série de question n° <?= $i ?></option>
        <?php endfor ?>
    </select>
    <input type="submit" value="serie_submit" name="serie_submit">
</form>

<form action="" method="post">
    <label for="date">Date</label>
    <input type="date" name="date" id="date">
    <label for="serie_id">Serie Id</label>
    <select name="serie_id" id="serie_id">
        <?php for ($i = 1; $i <= $serieCount; $i++) : ?>
            <option value="<?= $i ?>">Série n° <?= $i ?></option>
        <?php endfor ?>
    </select>
    <input type="submit" value="session_submit" name="session_submit">
</form>

<form action="" method="post">
    <label for="session_id">Session Id</label>
    <select name="session_id" id="session_id">
        <?php for ($i = 1; $i <= $sessionCount; $i++) : ?>
            <option value="<?= $i ?>">Session n° <?= $i ?></option>
        <?php endfor ?>
    </select>
    <label for="student_id">Student name</label>
    <select name="student_id" id="student_id">
        <?php for ($i = 0; $i <= $studentCount - 1; $i++) : ?>
            <option value="<?= $i + 1 ?>"><?= $student[$i]['firstname'] ?></option>
        <?php endfor ?>
    </select>
    <label for="grade">Points</label>
    <select name="grade" id="grade">
        <?php for ($i = 1; $i <= 40; $i++) : ?>
            <option value="<?= $i ?>"><?= $i ?></option>
        <?php endfor ?>
    </select>
    <input type="submit" value="session_grade_submit" name="session_grade_submit">
</form>

<form action="" method="post">
    <label for="student_id">Student Id</label>
    <select name="student_id" id="student_id">
        <?php for ($i = 0; $i <= $studentCount - 1; $i++) : ?>
            <option value="<?= $i + 1 ?>"><?= $student[$i]['firstname'] ?></option>
        <?php endfor ?>
    </select>
    <label for="examen_id">Examen id</label>
    <select name="examen_id" id="examen_id">
        <?php for ($i = 1; $i <= $examenCount; $i++) : ?>
            <option value="<?= $i ?>">Examen n° <?= $i ?></option>
        <?php endfor ?>
    </select>
    <label for="grade">Points</label>
    <select name="grade" id="grade">
        <?php for ($i = 1; $i <= 40; $i++) : ?>
            <option value="<?= $i ?>"><?= $i ?></option>
        <?php endfor ?>
    </select>
    <input type="submit" value="examen_grade_submit" name="examen_grade_submit">
</form>

<form action="" method="post">
    <input type="submit" value="question_submit" name="question_submit">
</form>

<form action="" method="post">
    <input type="submit" value="answer_submit" name="answer_submit">
</form>

<form action="" method="post">
    <input type="submit" value="question_answer_submit" name="question_answer_submit">
</form>