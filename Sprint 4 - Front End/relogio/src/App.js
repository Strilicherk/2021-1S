import React from 'react';
import './App.css';

function DataFormatada(props) {
  return <h2>Horário Atual: {props.date.toLocaleTimeString()}</h2>
}

// Define a classe Clock que será chamada na renderização dentro do App
class Clock extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      // Define p estadp date pegando a data e a hora atual.
      date : new Date()
    };
  }
  // Toda vez que Clock for chamado, o que está dentro dessa função irá acontecer.
  // Ciclo de vida que ocorre quando o Clock é inserido na DOM.
  // Através da setInterval, o relógio é criado (com um timerID atrelado)
  // Chama a função thick() a cada 1000ms (1s)
  componentDidMount(){
    this.timerID = setInterval( () => {
      this.thick()
    }, 1000 );

    // Exibe no console o ID de cada relógio
    console.log("eu sou o relógio" + this.timerID)
  }

  // Ciclo de vida que ocorre quando o componente é removido da DOM.
  // Quando isso ocorre, a função clearInterval limpa o relógio criado pelo setInterval
  componentWillUnmount(){
    clearInterval(this.timerID);
  }

  thick(){
    this.setState({
      date : new Date() // = DateTime.Now
    });
  }

  pause(){
    clearInterval(this.timerID)
    console.log(`Relógio ${(this.timerID)} pausado!`)
  }

  resume(){
    this.timerID = setInterval(() => {
      this.thick()
    }, 1000);
    console.log(`Relógio retomado!`)
    console.log(`Agora eu sou o relógio ${(this.timerID)}`)
  }

  // Renderiza na tela o h1
  render(){
    return(
      <div>
        <h1>Relógio</h1>
        <button style={{color: "white", height: "25px", fontWeight: "600", margin: "20px", backgroundColor: "red"}} onClick={() => this.pause()}>Pause</button>
        <button style={{color: "white", height: "25px", fontWeight: "600", margin: "20px", backgroundColor: "green"}} onClick={() => this.resume()}>Resume</button>
        <DataFormatada date={this.state.date} />
      </div>
    )
  }
}


function App() {
  return (
    <div className="App">
      <header className="App-header">
        <Clock />
        <Clock />
      </header>
    </div>
  );
}

export default App;
