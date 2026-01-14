# devggn
# Note if you are trying to deploy on vps then directly fill values in ("")

from os import getenv

API_ID = int(getenv("API_ID", "29777466"))
API_HASH = getenv("API_HASH", "a04b3df726520026f207079aec2f9879")
BOT_TOKEN = getenv("BOT_TOKEN", "8346695576:AAErSTkMH1Jcb-yK0nE2gKCuSorGg0OhQMI")
OWNER_ID = int(getenv("OWNER_ID", "8399557684"))
MONGODB_CONNECTION_STRING = getenv("MONGO_DB", "")
LOG_GROUP = int(getenv("LOG_GROUP", ""))
FORCESUB = getenv("FORCESUB", "")

