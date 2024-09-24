###############################################
#                Imports                      #
###############################################
import os
import subprocess

from invoke import task

###############################################
#                Public API                   #
###############################################
ROOT_PATH = os.path.dirname(os.path.abspath(__file__))
FRITIZNG_PATH = os.path.join(ROOT_PATH, "fritizing")
CC = "openscad"


@task
def open_breadboard_view(c):
    """
    Opens the Fritzing application for a breadboard view.
    """
    fritzing_command = ["fritzing", os.path.join(FRITIZNG_PATH, "breadboard.fzz")]
    subprocess.run(fritzing_command)
