<script>
export default {}
</script>

<template>
  <div class="container">
    <div class="status-container">
        <img class="status-container-creeper" src="/static/images/creeper.svg" alt="">
        <div class="status-container-status">
          <h2 class="status-container-status-code">503</h2>
          <span class="status-container-status-code-meaning">Service Unavailable</span>
        </div>
    </div>
    <div class="message-container">
      <h5 class="message-container-title">What a doozy.</h5>
      <span class="message-container-message">
        The new GoMint website isn't quite ready yet, but
        we're working on it! In the meanwhile, if you were
        looking for the latest GoMint releases, the documentation,
        or a place to get in touch with the GoMint community,
        the interactables down below will certainly help you out.
      </span>
      <div class="message-container-interactables">
        <a class="message-container-interactable message-container-interactable-solid" href="https://github.com/gomint/gomint">Latest release</a>
        <a class="message-container-interactable" href="https://docs.gomint.io">Documentation</a>
        <a class="message-container-interactable" href="https://discord.com/invite/qC4nJVN">Discord server</a>
      </div>      
    </div>
  </div>
</template>

<style lang="scss">
  html, body {
    margin: 0;
    padding: 0;
    height: 100%;
  }

  body {
    padding: 0 100px;
    max-width: 1440px;
    display: flex;
    align-items: center;
    margin: 0 auto;
    height: 100%;
  }

  h2 {
    font-size: 8em;
    font-weight: 800;
  }

  h3 {
    font-size: 6em;
    font-weight: 800;
  }

  h4 {
    font-size: 4em;
    font-weight: 800;
  }

  h5 {
    font-size: 3em;
    font-weight: 800;
  }

  .container {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 50px;
  }

  .container > * {
    flex: 1 1 520px;
  }

  .status-container {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    gap: 40px;
    align-items: center;
  }

  .status-container-creeper {
    max-height: 320px;
    -webkit-transform: scaleX(-1);
    transform: scaleX(-1);
  }
  
  .status-container-status-code-meaning {
    font-weight: 800;
  }
  
  .message-container {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
  }

  .message-container > * {
    flex: 1 1 1440px;
  }

  .message-container-message {
    margin: 30px 0;
    text-align: justify;
    line-height: 28px;
    font-weight: 500;
    font-size: 1.1em;
  }

  .message-container-interactables {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    text-align: center;
    align-items: center;
  }

  .message-container-interactables > * {
    flex: 1 1 120px;
  }

  .message-container-interactable {
    border: 2px solid var(--color-deep-navy);
    border-radius: 20px;
    padding: 10px 20px;
    font-weight: 600;
    color:white;
  }

  .message-container-interactable-solid {
    background-color: var(--color-deep-navy);
  }
</style>