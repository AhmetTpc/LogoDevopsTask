import logo from './Logo-logosu.png';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} style={{width: "1000px",height: "500px"}} alt="logo" />
        <br/>
        <p>
          React App for Logo Final Task
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
