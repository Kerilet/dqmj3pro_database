import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function getMonsters() {
  const monsters = await prisma.monsters.findMany();
  return monsters;
}

export default async function handler(req, res) {
  if (req.method === "POST") {
    const data = JSON.parse(req.body);
    const monster = await prisma.monsters.create({
      data: {
        name: data.name,
        rank: data.rank,
        size: data.size,
        family: data.family,
        hp: parseInt(data.hp),
        mp: parseInt(data.mp),
        atk: parseInt(data.atk),
        def: parseInt(data.def),
        agi: parseInt(data.agi),
        int: parseInt(data.int),
        recipe: data.recipe,
        skill: data.skill,
        traits: data.traits,
        obtainment: data.obtainment,
        merging_skill: data.merging_skill,
        merging_trait: data.merging_trait,
      },
    });
  }
  const monsters = await getMonsters();
  res.status(200).json(monsters);
}
