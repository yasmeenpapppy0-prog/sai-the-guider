import thinter as tk

class DesktopPet:
    def _nit_(self):
        self.window = tk.Tk()

        self.window.title("sai-the-guider")

        self.window.overriderredredirect(true)

        self.window.attributes('-topmost', true)

        self.window.config(bg='black')
        self.window.wm_attributes('-transparentcolor', 'black')

        self.label = tk.label(self.window, text="sai", font=("courier",24), fg="cyan", bg="black")
        self.label.pack()

        self.window.geometry("200*100+500+500")

        self.window.bind('<Button-3>', lambda e: self.window.destroy())

    def run(self):
        self.window.mainloop()

if _name_=="_main_":
    pet =DesktopPet()
    pet.run()
    



