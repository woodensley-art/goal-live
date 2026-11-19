
import React from "react";

export default function App() {
  return (
    <main style={{
      background: "#080D14",
      color: "white",
      minHeight: "100vh",
      padding: "30px",
      fontFamily: "Arial"
    }}>
      <h1 style={{fontSize: 35}}>
        GOAL <span style={{color: "#00E676"}}>SCORE</span>
      </h1>

      <p>LE FOOTBALL EN DIRECT ⚽</p>

      <h2>Matchs du jour</h2>

      <section style={{
        background: "#14202D",
        padding: 20,
        borderRadius: 15,
        maxWidth: 450
      }}>
        <p>LIGUE DES CHAMPIONS</p>
        <h3>Real Madrid</h3>
        <h1 style={{color: "#00E676"}}>2 - 1</h1>
        <h3>Manchester City</h3>
        <p style={{color: "#00E676"}}>75' EN DIRECT</p>
      </section>

      <p style={{color: "#00E676", marginTop: 30}}>
        Tous les matchs. Tous les scores.
      </p>
    </main>
  );
}
