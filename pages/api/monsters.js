import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function getMonsters() {
  const monsters = await prisma.monsters.findMany();
  return monsters;
}

export default async function handler(req, res) {
  const monsters = await getMonsters();
  res.status(200).json(monsters);
}
