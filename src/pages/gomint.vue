<script>
import {onMounted, reactive} from 'vue';

export default {
  setup() {
    const release = reactive({
      isLoading: true,
      tag: '',
      assetSize: '',
      assetDownloadUrl: '',
    });

    onMounted(async () => {
      const releasesEndpoint = 'https://api.github.com/repos/gomint/gomint/releases?per_page=1';
      const releasesData = await fetch(releasesEndpoint);
      const releaseData = await releasesData.json();
      release.tag = releaseData[0].tag_name;

      const assetsEndpoint = releaseData[0].assets[0].url;
      const assetsData = await fetch(assetsEndpoint);
      const assetData = await assetsData.json();
      release.assetSize = assetData.size;
      release.assetDownloadUrl = assetData.browser_download_url;

      release.isLoading = false;
    });

    return { release };
  },
}
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
      <h5 class="message-container-title">What a bummer.</h5>
      <span class="message-container-message">
        The new GoMint website isn't quite ready yet, but
        we're working on it! In the meanwhile, if you were
        looking for the latest GoMint release, the documentation,
        the source code or a place to get in touch with the GoMint
        community, the interactables down below will certainly help
        you out.
      </span>
      <div class="message-container-interactables">
        <a class="message-container-interactable" href="https://discord.com/invite/qC4nJVN">
          <i class="fab fa-discord"></i>
          &nbsp;
          Discord server
        </a>
        <a class="message-container-interactable" href="https://github.com/gomint/gomint">
          <i class="fab fa-github"></i>
          &nbsp;
          Source code
        </a>
        <a class="message-container-interactable" href="https://docs.gomint.io/docs/guides">
          <i class="fas fa-book"></i>
          &nbsp;
          Documentation
        </a>
        <a class="message-container-interactable message-container-interactable-solid" :href="release.assetDownloadUrl">
          <i class="fas fa-download"></i>
          &nbsp;
          Latest release
          &nbsp;
          <span class="release-info">
            <span v-if="release.isLoading">Loading...</span>
            <span v-else>{{ release.tag }}, {{ (release.assetSize / 1024 / 1024).toFixed(2) }} MiB</span>
          </span>
        </a>
      </div>      
    </div>
    <br>
    <br>
  </div>
</template>

<style lang="scss">
  html, body {
    margin: 0;
    padding: 0;
    height: 100%;
  }

  body {
    max-width: 1440px;
    display: flex;
    align-items: center;
    margin: 0 auto;
    height: 100%;
    padding: 0 100px;

    @media screen and (max-width: 720px) {
      align-items: baseline;
    }

    @media screen and (max-width: 480px) {
      padding: 0 30px;
    }
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
    margin: 0 auto;

    @media screen and (max-width: 1290px) {
      justify-content: space-around;
    }
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

    @media screen and (max-width: 1290px) {
      justify-content: space-evenly;
    }
  }

  .status-container-creeper {
    height: 320px;
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

    @media screen and (max-width: 1290px) {
      min-width: 100%;
      justify-content: space-evenly;
    }
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
    flex: 1 1 160px;
  }

  .message-container-interactable {
    border: 2px solid var(--color-deep-navy);
    border-radius: 20px;
    padding: 12px 20px;
    font-weight: 600;
    color:white;
    transition: 0.25s ease;
    &:hover {
      border-color: var(--color-navy);
    }
  }

  .message-container-interactable-solid {
    background-color: var(--color-deep-navy);
    transition: 0.25s ease;
    &:hover {
      background-color: var(--color-navy);
    }
  }

  .release-info {
    font-size: 85%;
    font-weight: 300;
  }
</style>
