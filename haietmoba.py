# Script to remind me to ask HAIETMOBA
# http://www.actualfreedom.com.au/richard/articles/thismomentofbeingalive.htm

from os.path import join, dirname
from datetime import datetime

from Tkinter import *
import ttk


question = 'How am I experiencing this moment of being alive?'
gap = 2 # in seconds
feeling_state_file = join(dirname(__file__), 'states.txt')


def create_app():
    root = Tk()
    root.title('HAIETMOBA')

    # boilerplate    
    mainframe = ttk.Frame(root, padding="6 6 12 12")
    mainframe.grid(column=0, row=0, sticky=(N, W, E, S))
    root.columnconfigure(0, weight=1)
    root.rowconfigure(0, weight=1)
    root.wm_attributes('-topmost', 1) # always on top
    
    # Tk styles
    s = ttk.Style()
    s.theme_use('xpnative') # TODO: use native theme on linux, mac
    s.configure('Big.TLabel', font='Verdana 14 bold')
    
    # display the question
    l = ttk.Label(mainframe, text=question, style='Big.TLabel',
                  padding='3 3 12 12')
    l.grid(column=0, row=0, columnspan=4, sticky=(E, W))
    
    # control buttons (Hide, ':)', 'Meh', ':(')
    # Hit 'g' or 'm' or 'b'
    btn_skip = ttk.Button(mainframe, text='Skip')
    btn_good = ttk.Button(mainframe, text=':-)')
    btn_meh = ttk.Button(mainframe, text='Meh')
    btn_bad = ttk.Button(mainframe, text=':-(')
    btn_skip.grid(column=0, row=1, sticky=(W, S))
    btn_good.grid(column=1, row=1, sticky=E)
    btn_meh.grid(column=2, row=1, sticky=E)
    btn_bad.grid(column=3, row=1, sticky=E)
    
    def save_answer(state):
        save_feeling_state(state)
        sleep()
    def sleep():        
        root.withdraw()
        root.after(1000*gap, popup_window)
    def popup_window():
        # center the window on screen
        _center_window(root)
        root.deiconify()
        
    # setup hooks for buttons
    btn_skip.bind('<ButtonRelease-1>', lambda e: sleep())
    root.bind('s', lambda e: sleep())
    btn_good.bind('<ButtonRelease-1>', lambda e: save_answer('good'))
    root.bind('g', lambda e: save_answer('good'))
    btn_meh.bind('<ButtonRelease-1>', lambda e: save_answer('meh'))
    root.bind('m', lambda e: save_answer('meh'))
    btn_bad.bind('<ButtonRelease-1>', lambda e: save_answer('bad'))
    root.bind('b', lambda e: save_answer('bad'))
    
    return root


def _center_window(root):
    """Center the Tk window ``root`` on screen"""
    w = root.winfo_width()
    h = root.winfo_height()
    ws = root.winfo_screenwidth()
    hs = root.winfo_screenheight()
    x, y = ws/2-w/2, hs/2-h/2
    root.geometry('%dx%d+%d+%d' % (w, h, x, y))
    
    
def save_feeling_state(state):
    states = set(['good', 'meh', 'bad'])
    assert state in states
    now = datetime.now()
    
    print 'DEBUG', now, state
    with open(feeling_state_file, 'a') as f:
        f.write('{0} {1}\n'.format(now, state))


if __name__ == '__main__':
    create_app().mainloop()
    