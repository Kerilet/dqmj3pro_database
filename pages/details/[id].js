import Head from "next/head";
import { Inter } from "next/font/google";
import styles from "../../styles/Details.module.css";
import { useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/router";

const inter = Inter({ subsets: ["latin"] });

export default function Home() {
  const [monster, setMonster] = useState(null);

  const {
    query: { id },
  } = useRouter();

  useEffect(() => {
    if (id)
      fetch(`/api/details/${id}`)
        .then((x) => x.json())
        .then(setMonster);
  }, [id]);

  if (!monster) {
    return <div>Carregando...</div>;
  }

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
          <tbody>       
              <tr>
                <th>Name</th>
                <td>{monster.name}</td>
              </tr>
              <tr>
                <th>Rank</th>
                <td>{monster.rank}</td>
              </tr>
              <tr>
                <th>Size</th>
                <td>{monster.size}</td>
              </tr>
              <tr>
                <th>Family</th>
                <td>{monster.family}</td>
              </tr>
              <tr>
                <th>Recipe</th>
                <td>{monster.recipe}</td>
              </tr>
              <tr>
                <th>Skill</th>
                <td>{monster.skill}</td>
              </tr>
              <tr>
                <th>Traits</th>
                <td>{monster.traits}</td>
              </tr>
              <tr>
                <th>Obtainment Methods</th>
                <td>{monster.obtainment}</td>
              </tr>
              <tr>
                <th>Fusion Skill</th>
                <td>{monster.merging_skill}</td>
              </tr>
              <tr>
                <th>Fusion Trait</th>
                <td>{monster.merging_trait}</td>
              </tr>  
          </tbody>
        </table>

        <button className="backButton">
          <Link href={"/"} className="backLink">Go Back</Link>
        </button>
      </main>
    </>
  );
}
