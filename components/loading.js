import Image from "next/image";
import PsaroGif from "../public/psaro_dqmj2_animated.gif";
import styles from "@/styles/Loading.module.css";
import { useEffect, useState } from "react";


export default function Loading() {
  const [phrase, setPhrase] = useState();
  useEffect(() => {
    const phrases = [
      "Plucking out Yggdrasill leaves",
      "Learning how to use the Secret of Evolution",
      "Sealing Rhapthorne in the Godbird Sceptre",
      "Collecting crystals to make a Darkonium Orb",
      "Becoming one with those who don't understand real strength",
      "Creating a fake paradise to imprison heros",
      "Plotting against the upcoming Legendary Hero",
      "Going out to seal and cast all the lands in darkness",
      "Working to take over the Real and Dream Worlds",
      "Plunging Alefgard deeply into darkness ",
      "Being summoned by a maniacal priest to eradicate Torland",
    ];
    const selector = Math.floor(Math.random() * 12);
    setPhrase(phrases[selector]);
  }, []);

  return (
    <div className={styles.loadingDiv}>
      <p className={styles.loadingQuotes}>{phrase}...</p>
      <Image
        src={PsaroGif}
        alt="Loading Psaro"
        className={styles.loadingImage}
        priority={true}
      />
    </div>
  );
}
