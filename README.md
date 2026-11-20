# SDSC-STEM4Health

## Getting started in the SDSC STEM4Health Hackathon

Welcome to the SDSC STEM4Health Hackathon! This git repository is your team's shared codebase: use it to keep your code in sync and under version control.

It contains an `environment.yml` file listing the packages your session starts with, including pandas, numpy, scikit-learn, plotly, transformers and LangChain. Apart from that, the repository is yours: organise it however suits your team.

&nbsp;

## 1. Start working

### 1.1 Launch a session
On your project page, in the **Launchers** section, click the green **Launch** button. Choose **JupyterLab** or **VSCodium**, whichever you prefer.

&nbsp;

### 1.2 Access the input data
Your session has an `input-data` folder with one subfolder per challenge. Use the data for the challenge your team is working on.

> **Note:** Don't commit the input data to the repository. Read it straight from `input-data`.

&nbsp;

### 1.3 Connect to GitHub
To push your work, connect your Renku account to your GitHub account (see the [Renku documentation](https://docs.renkulab.io/)). You already have access to the repository we created for your team. It is cloned into your session automatically.

&nbsp;

### 1.4 Organise your repository
You choose the structure. For example:

```bash
.
├── environment.yml
├── notebooks/
├── src/
├── outputs/
└── README.md
```

Agree on the layout with your team early on. That way everyone knows where to put their files.

&nbsp;

### 1.5 Work with your team using git
Everyone works in their own session and shares work through the repository:

```bash
git pull                        # get your teammates' latest changes
git add <files>
git commit -m "Short description of your change"
git push                        # share your changes
```

Tips:
- Pull before you start working, and push often.
- To avoid conflicts, try not to edit the same notebook as a teammate at the same time.
- Keep large files (data, model weights) out of git in the team-workspace folder.

> **Important:** Anything you don't commit and push is lost when the session shuts down.

&nbsp;

### 1.6 Add or change packages
**Quick test (temporary):** install a package from a terminal or notebook cell:

```bash
pip install <package-name>
```

These packages are lost when the session shuts down.

**Permanent (for the whole team):** add the package to `environment.yml`, then commit and push. Rebuild the session environment from your launcher, and every **new** session will include it.

```yaml
dependencies:
  - pandas
  - <new-conda-package>
  - pip:
      - <new-pip-package>
```

&nbsp;

### 1.7 Use AI coding assistants (optional)
Your session comes with several AI coding assistants. They all run in the terminal:

| Assistant | Command |
|---|---|
| GitHub Copilot CLI | `copilot` |
| Claude Code | `claude` |
| OpenAI Codex CLI | `codex` |
| Pi | `pi` |

1. Open a **Terminal** in your session.
2. Run the command for the assistant you want to use, for example:
   ```bash
   copilot
   ```
3. When prompted, sign in with your own account or API key for that tool. Access and any usage costs go through your own account.

> **Note:** These sign-ins are separate from your Renku login. Sign-ins may not survive a session shutdown, so you might need to sign in again.

&nbsp;

### 1.8 Change your compute resources
If you need more CPU, or more memory or a GPU:

1. **Pause** your session (top-left corner). Your files and changes are kept.
2. From the dropdown on the launcher button, choose **Modify session resources**.
3. Select a larger resource class and confirm.
4. **Resume** the session.

To change the resources for all future sessions, edit the **Default Resource Class** in your launcher (click the pencil icon). To change them for a single new session, use the dropdown next to **Launch** and choose **Custom launch**.

See the [Renku documentation](https://docs.renkulab.io/en/latest/docs/users/compute/guides/select-compute-resources-for-session/) for details.

&nbsp;

## 2. Pause or shut down your session

Sessions keep running when you close your browser. Please free up resources when you finish:

* **Pause session** (top-left corner): your workspace is kept for two weeks. Sessions also pause automatically after 30 minutes of inactivity.

![Pause button](https://raw.githubusercontent.com/SwissDataScienceCenter/renku-outreach/refs/heads/main/tutorial/pause_button.jpeg)

&nbsp;

* **Shut down session** (top-left corner): only work you have **committed and pushed** to the repository is kept. Everything else is lost.

![Shut down button](https://raw.githubusercontent.com/SwissDataScienceCenter/renku-outreach/refs/heads/main/tutorial/shutdown_button.jpeg)

> **Important:** Even paused sessions can end unexpectedly. **Commit and push regularly.**

&nbsp;

## Need help?
Ask the SDSC coordinators or the Renku team on site, or write to `hello@renku.io` with the subject *[SDSC STEM4Health] Your topic*.
