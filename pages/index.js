import Head from "next/head";
import { Inter } from "next/font/google";
import styles from "@/styles/Home.module.css";
import { useEffect, useState } from "react";
import Link from "next/link";

const inter = Inter({ subsets: ["latin"] });

export default function Home() {
  const [monsters, setMonsters] = useState(null);

  useEffect(() => {
    fetch("/api/monsters/monsters")
      .then((x) => x.json())
      .then(setMonsters);
  }, []);

  return (
    <>
      <Head>
        <title>DQMJ3PRO Database</title>
        <meta name="description" content="Generated by create next app" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="icon" href="/Dqm_j3p_icon.webp" />
      </Head>
      <main className={`${styles.main} ${inter.className}`}>
        <table className={styles.infoTable}>
          <thead>
            <tr>
              <th>Name</th>
              <th>Rank</th>
              <th>Size</th>
              <th>Family</th>
              <th>Recipe</th>
              <th>Detailed Info</th>
            </tr>
          </thead>
          <tbody>
            {monsters?.map((x) => (
              <tr key={x.id}>
                <td>{x.name}</td>
                <td>{x.rank}</td>
                <td>{x.size}</td>
                <td>{x.family}</td>
                <td>{x.recipe}</td>
                <td>
                  {/* <Link href={`/api/details/${x.id}`}>More Info</Link> */}
                  <Link href={`/details/${x.id}`}>More Info</Link>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </main>
    </>
  );
}
