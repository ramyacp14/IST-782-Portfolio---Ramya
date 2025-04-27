# 📚 IST688 – Building Human-Centered AI Applications
## Project: iSchool Student Organizations Chatbot

---

## 📝 Project Overview

This project is a **human-centered AI chatbot** designed to assist Syracuse University iSchool students in finding information about student organizations.  
It uses:
- **OpenAI's GPT-4o model** for conversation
- **Vector database (ChromaDB)** for document retrieval
- **Streamlit** for a simple and interactive web interface

Key human-centered principles applied:
- Retrieval-augmented generation (RAG) to ensure factual accuracy  
- Transparency in AI interactions (sources shown from database retrieval)

---

## 🗂️ Project Structure and Files

| File/Folder | Description |
|:------------|:------------|
| `ischool club agent.py` | Main Streamlit application code. |
| `HWs/su_orgs/` | Folder containing HTML pages of Syracuse University organizations (used for building the VectorDB). |
| `HW4_VectorDB/` | ChromaDB persistent database (created after running once). |
| `README.md` | Documentation about the project (this file). |

---

## 🛠️ Software Requirements

| Software | Version |
|:---------|:--------|
| Python | 3.10+ |
| Streamlit | Latest |
| OpenAI Python SDK | Latest |
| ChromaDB | Latest |
| BeautifulSoup4 | Latest |

Install all dependencies using:

```bash
pip install -r requirements.txt
