-- CreateTable
CREATE TABLE `monsters` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    `rank` ENUM('F', 'E', 'D', 'C', 'B', 'A', 'S', 'SS') NOT NULL,
    `size` ENUM('S', 'M', 'G', 'U') NOT NULL,
    `family` ENUM('Slime', 'Nature', 'Beast', 'Material', 'Undead', 'Devil', 'Dragon', 'Break', 'Unknown') NOT NULL,
    `hp` INTEGER NOT NULL,
    `mp` INTEGER NOT NULL,
    `atk` INTEGER NOT NULL,
    `def` INTEGER NOT NULL,
    `agi` INTEGER NOT NULL,
    `int` INTEGER NOT NULL,
    `recipe` VARCHAR(90) NOT NULL,
    `skill` VARCHAR(30) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

