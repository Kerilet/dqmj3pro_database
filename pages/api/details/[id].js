import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function getMonster(id) {
  const monster = await prisma.monsters.findUnique({
    where: { id: Number(id) }
  });
  return monster;
}

export default async function handler(req, res) {
  const { id } = req.query;
  const monster = await getMonster(id);
  res.status(200).json(monster);
}
