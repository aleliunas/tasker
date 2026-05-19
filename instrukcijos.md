# 📖 ProjektÅ³ valdymo instrukcija (Mind-Vault + GPDC)

Å i instrukcija skirta greitam naujo projekto paleidimui ir valdymui naudojant automatizuotÄ… programavimo protokolÄ….

## 1. Projekto Inicializavimas (Bootstrap)

Norint pradÄ—ti naujÄ… projektÄ… `C:\PROJECTS\`, reikia atlikti Å¡iuos veiksmus per terminalÄ…:

`powershell
# 1. Sukurti aplankus
mkdir C:\PROJECTS\<pavadinimas>\docs\ideas, C:\PROJECTS\<pavadinimas>\docs\archive, C:\PROJECTS\<pavadinimas>\src, C:\PROJECTS\<pavadinimas>\rules

# 2. Sukurti CLAUDE.md (projekto "smegenis")
# Nukopijuokite CLAUDE.md turinÄ¯ su staku, konvencijomis ir komandomis.

# 3. Sukurti pradinÄ¯ idÄ—jÅ³ indeksÄ…
# Failas: C:\PROJECTS\<pavadinimas>\docs\ideas\README.md

## 2. Sprint Workflow (5 etapai)

Kiekviena uÅ¾duotis turi eiti per Å¡Ä¯ ciklÄ…:

### Stage 1: /idea (UÅ¾fiksavimas)
- **Komanda:** `/idea <pavadinimas>`
- **Rezultatas:** Sukuriamas failas `docs/ideas/IDEA-NNN-<slug>.md`.
- **Tikslas:** Tiksliai apraÅ¡yti PROBLEMÄ„ ir PASIÅªLYMÄ„ (be kodo).

### Stage 2: /plan (Planavimas)
- **Komanda:** `/plan IDEA-NNN`
- **Rezultatas:** Sukuriamas plano failas archive aplanke.
- **Tikslas:** Suskirstyti darbÄ… konkretÄ—mis komandomis ir failÅ³ pakeitimais. Laukiamas vartotojo "Daryk".

### Stage 3: /work (Vykdymas)
- **Komanda:** `/work <plano-kelias>`
- **Rezultatas:** Agentas raÅ¡o kodÄ…, daro commit'us.
- **TaisyklÄ—:** Agentas niekada nemerguoja Ä¯ `main` be Å¾mogaus leidimo.

### Stage 4: /wrap (UÅ¾baigimas)
- **Komanda:** `/wrap`
- **Tikslas:** Dokumentacijos sutvarkymas, IDEA statuso keitimas Ä¯ `complete`, laikinÅ³ failÅ³ valymas.

### Stage 5: /compound (Mokymasis)
- **Komanda:** `/compound`
- **Tikslas:** Jei iÅ¡mokome kaÅ¾kÄ… naujo (pvz. nauja taisyklÄ—), ji perkeliama Ä¯ `mind-vault` bibliotekÄ….

## 3. Django + Docker specifika (Å iame projekte)

Naudojamos komandos (per Makefile):

- `make up`          - Paleisti konteinerius
- `make down`        - Sustabdyti konteinerius
- `make migrate`     - Atlikti DB migracijas
- `make shell`       - Patekti Ä¯ Python shell
- `make test`        - Paleisti testus

## 4. AuksinÄ—s taisyklÄ—s agentui

1. **Surgical Edits:** Keisti tik tai, ko reikia. NeperraÅ¡inÄ—ti viso failo be reikalo.
2. **Read Before Write:** Visada perskaityti failÄ… prieÅ Reditinguojant.
3. **No Secrets:** Niekada neliesti ir necommit'inti `.env` failo.
4. **GPDC:** Visada patvirtinti TikslÄ…, PlanÄ…, tada Vykdyti ir Patikrinti.

---
*Instrukcija paruoÅ¡ta: 2026-05-19*

## 5. Reikalingi "Skills" ir jų naudojimas

Projekto valdymui naudojami Å¡ie pagrindiniai agento Ä¯gÅ«dÅ¾iai (iÅ¡ mind-vault):

- **ideate** (/ideate) - minÄ iÅ³ lietus, kai neÅ¾inai nuo ko pradÄ—ti.
- **idea** (/idea) - naujos uÅ¾duoties uÅ¾fiksavimas.
- **plan** (/plan) - architektÅ«rinio plano paruoÅ¡imas.
- **work** (/work) - plano vykdymas (kodo raÅ¡ymas).
- **wrap** (/wrap) - dokumentacijos sutvarkymas po darbo.
- **compound** (/compound) - iÅ¡moktÅ³ pamokÅ³ iÅ¡saugojimas.

SVARBU: Visada pradÄ—k sesijÄ… pasakydamas: "Dirbame pagal mind-vault protokolÄ…, naudok /idea, /plan, /work ciklÄ…."
