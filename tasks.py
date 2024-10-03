###############################################
#                Imports                      #
###############################################
import logging
import os
import shutil
import sys
import traceback

from invoke import UnexpectedExit, task

###############################################
#                Public API                   #
###############################################
ROOT_PATH = os.path.dirname(os.path.abspath(__file__))
FRITIZNG_PATH = os.path.join(ROOT_PATH, "fritizing")
QUCS_PATH = os.path.join(ROOT_PATH, "qucs")
KICAD_PATH = os.path.join(ROOT_PATH, "kicad")


# Configure logging
logging.basicConfig(
    level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s"
)


@task
def open_breadboard_view(c):
    """
    Opens the Fritzing application for a breadboard view.
    """
    command = ["fritzing", os.path.join(FRITIZNG_PATH, "breadboard.fzz")]

    run_command(c, command)


@task
def open_qucs_view(c):
    """
    Opens the QUCS application for a schematic view.
    """
    command = ["qucs-s", "-i", os.path.join(QUCS_PATH, "stoper.sch")]

    run_command(c, command)


@task
def open_kicad_view(c):
    """
    Opens the KICAD application for a PCB view.
    """
    command = ["kicad", os.path.join(KICAD_PATH, "stoper.kicad_pro")]

    run_command(c, command)


###############################################
#                Pivate API                   #
###############################################


def run_command(process, command_l):
    """
    Execute a shell command using the given process and handle errors.

    Joins the command list `command_l` into a string, checks if the command exists,
    and executes it using `process.run()`. Logs an error and exits if the command
    is not found or fails to execute.

    Args:
        process (invoke.context.Context): The process object used to execute the command.
        command_l (list of str): The command and its arguments as a list of strings.

    Returns:
        None: Logs errors and exits on failure.

    Raises:
        SystemExit: Exits with status 1 if the command is not found, or status 2 if execution fails.
    """

    command = " ".join(command_l)

    logging.debug("Executing `%s`." % command)

    if not command_exists(command_l[0]):
        logging.error("Unable to find `%s` app." % command)
        sys.exit(1)

    try:
        process.run(command)
    except UnexpectedExit:
        logging.error("Unable to run `%s`: %s" % (command, traceback.format_exc()))
        sys.exit(2)


def command_exists(command):
    """
    Check if a command exists in the system.

    :param command: Command name as a string.
    :return: True if the command exists, False otherwise.
    """
    return shutil.which(command) is not None
