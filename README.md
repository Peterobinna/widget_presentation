# Draggable & DragTarget Demo

A simple Flutter widget demonstration showing **drag-and-drop interaction** using the `Draggable` and `DragTarget` widgets.

---

## Description
This app lets you drag a blue box and drop it onto a target area.  
When the drag is successful, the target changes colour and displays the text **“Accepted!”** — visually showing how Flutter handles drag and drop state.

---

## How to Run

1. **Clone this repository**
   ```bash
   git clone https://github.com/Peterobinna/widget_presentation.git
   cd widget_presentation

2. **Get dependencies**
   ```bash
   flutter pub get

3. **Run the app**
   ```bash
   flutter run

Ensure you have Flutter installed and connected to a simulator or device.

## Key Attributes Explained

| Attribute           | Description                                                                                        |
| ------------------- | -------------------------------------------------------------------------------------------------- |
| `data`              | The object or value carried by the draggable widget (in this demo, a colour value).                |
| `feedback`          | The widget shown while the user is dragging — usually a translucent version of the draggable item. |
| `childWhenDragging` | The widget displayed in the draggable’s original position while it’s being dragged.                |

## Screenshot

Below is a sample screenshot of the final UI:
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/c0c68863-7b14-4cc2-bb9e-d339280870f7" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/fb2a80f8-2bfe-4267-b798-1675fefc4405" />


