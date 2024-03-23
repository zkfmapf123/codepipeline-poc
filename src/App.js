import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1> hello world v{process.env.REACT_APP_VERSION}</h1>
      </header>
    </div>
  );
}

export default App;
