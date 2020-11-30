mergeInto(LibraryManager.library, {
  PlayerWin: function () {
    window.alert("O jogador venceu!");
  },

  Tie: function () {
    window.alert("Empate");
  },

  AIWin: function () {
    window.alert("Vitória da inteligência artificial!");
  },
});