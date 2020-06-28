CREATE DATABASE IF NOT EXISTS student_cms_plusplus CHARACTER SET `utf8mb4`;
use student_cms_plusplus;
CREATE TABLE student(
	`id` INT(6) AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(30) NOT NULL,
	`mssv` VARCHAR(10) NOT NULL,
	`password` VARCHAR(30) NOT NULL,
	`phone` VARCHAR(20) NOT NULL,
	`address` VARCHAR(50) NOT NULL,
	`age` INT(6) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`created_timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`last_updated_timestamp` TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE class(
	`id` INT(6) AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(30) NOT NULL,
	`major` VARCHAR(50) NOT NULL,
	`total_student` INT(6) NOT NULL,
	`teacher_name` VARCHAR(30) NOT NULL,
	`teacher_phone` VARCHAR(20) NOT NULL,
	`created_timestamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`last_updated_timestamp` TIMESTAMP NOT NULL ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE student_class(
	`student_id` INT(6),
	CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES student(id),
	`class_id` INT(6),
	CONSTRAINT fk_class FOREIGN KEY (class_id) REFERENCES class(id)
);
INSERT INTO `student_cms_plusplus`.`student` (`id`, `name`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('1', 'NGOC', '2019600110', '123', '098753121', 'Ninh Binh', '18', 'ngoc@gmail.com', 'CURRENT_TIMESTAMP(6)', 'CURRENT_TIMESTAMP(6)');
INSERT INTO `student_cms_plusplus`.`student` (`id`, `name`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('2', 'TUAN', '2019600110', '123', '098753221', 'Ninh Binh', '18', 'tuan@gmail.com', 'CURRENT_TIMESTAMP(6)', 'CURRENT_TIMESTAMP(6)');
INSERT INTO `student_cms_plusplus`.`student` (`id`, `name`, `mssv`, `password`, `phone`, `address`, `age`, `email`, `created_timestamp`, `last_updated_timestamp`) VALUES ('3', 'LINH', '2019600110', '123', '098755323', 'Ninh Binh', '18', 'linh@gmail.com', 'CURRENT_TIMESTAMP(6)', 'CURRENT_TIMESTAMP(6)');
INSERT INTO `student_cms_plusplus`.`class` (`id`, `name`, `major`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('4', 'CNTT', 'CNTT', '22002', 'Tr?nh Vãn Minh', '093123122', 'CURRENT_TIMESTAMP(6)', 'CURRENT_TIMESTAMP(6)');
INSERT INTO `student_cms_plusplus`.`class` (`id`, `name`, `major`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('5', 'KHMT', 'CNTT', '22002', 'Tr?nh Khánh Tung', '099323122', 'CURRENT_TIMESTAMP(6)', 'CURRENT_TIMESTAMP(6)');
INSERT INTO `student_cms_plusplus`.`class` (`id`, `name`, `major`, `total_student`, `teacher_name`, `teacher_phone`, `created_timestamp`, `last_updated_timestamp`) VALUES ('6', 'QTKT', 'QTKD', '22002', 'Tr?nh Vãn Khang', '099321422', 'CURRENT_TIMESTAMP(6)', 'CURRENT_TIMESTAMP(6)');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('1', '2');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('3', '4');
INSERT INTO `student_cms_plusplus`.`student_class` (`student_id`, `class_id`) VALUES ('5', '6');
