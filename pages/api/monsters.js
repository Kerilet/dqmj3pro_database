import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

let names = [];

async function main() {
    const allUsers = await prisma.monsters.findMany()
    for (let i = 0; i < allUsers.length; i++) {
        const name = allUsers[i].name;
        names = names + ", " + name;
        // console.log(names)
    }
}

main()
    .then(async () => {
        await prisma.$disconnect()
    })
    .catch(async (e) => {
        console.error(e)
        await prisma.$disconnect()
        process.exit(1)
    })

export default async function handler(req, res) {
    await main()
    res.status(200).json({ message: names })
    names;
}