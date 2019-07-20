import gdb
def exec_quit(prompt):
    gdb.execute("quit")

def exit_handler(event):
    gdb.prompt_hook = exec_quit

gdb.events.exited.connect(exit_handler)
