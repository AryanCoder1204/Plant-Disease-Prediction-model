# Plant Disease Prediction using CNN

**Created by: Aryan**

A deep learning model that identifies **38 plant disease classes** across 14 crops with **96.76% validation accuracy**, built using a custom CNN in TensorFlow/Keras.

---

## Results

| Metric | Training | Validation |
|--------|----------|------------|
| Accuracy | **98.18%** | **96.76%** |
| Loss | 0.0564 | 0.1053 |

### Accuracy over 10 Epochs

| Epoch | Train Accuracy | Val Accuracy |
|-------|----------------|--------------|
| 1 | 61.99% | 84.75% |
| 2 | 86.86% | 92.94% |
| 3 | 91.77% | 92.55% |
| 4 | 94.29% | 94.09% |
| 5 | 95.71% | 95.35% |
| 6 | 96.61% | 95.36% |
| 7 | 97.30% | 95.27% |
| 8 | 97.74% | 96.65% |
| 9 | 97.91% | 96.07% |
| **10** | **98.18%** | **96.76%** |

---

## Supported Plants & Diseases (38 Classes)

| Plant | Conditions |
|-------|------------|
| Apple | Apple Scab, Black Rot, Cedar Apple Rust, Healthy |
| Blueberry | Healthy |
| Cherry | Powdery Mildew, Healthy |
| Corn | Cercospora Leaf Spot, Common Rust, Northern Leaf Blight, Healthy |
| Grape | Black Rot, Esca (Black Measles), Leaf Blight, Healthy |
| Orange | Haunglongbing (Citrus Greening) |
| Peach | Bacterial Spot, Healthy |
| Pepper | Bacterial Spot, Healthy |
| Potato | Early Blight, Late Blight, Healthy |
| Raspberry | Healthy |
| Soybean | Healthy |
| Squash | Powdery Mildew |
| Strawberry | Leaf Scorch, Healthy |
| Tomato | Bacterial Spot, Early Blight, Late Blight, Leaf Mold, Septoria Leaf Spot, Spider Mites, Target Spot, Yellow Leaf Curl Virus, Mosaic Virus, Healthy |

---

## Model Architecture

Custom CNN with 5 convolutional blocks:

```
Input (128x128x3)
  → Conv2D(32) → Conv2D(32) → MaxPool
  → Conv2D(64) → Conv2D(64) → MaxPool
  → Conv2D(128) → Conv2D(128) → MaxPool
  → Conv2D(256) → Conv2D(256) → MaxPool
  → Conv2D(512) → Conv2D(512) → MaxPool
  → Dropout(0.25) → Flatten
  → Dense(1500, relu) → Dropout(0.40)
  → Dense(38, softmax)

Total Parameters: 7,842,762
```

- **Optimizer:** Adam (lr=0.0001)
- **Loss:** Categorical Crossentropy
- **Epochs:** 10 | **Batch Size:** 32 | **Image Size:** 128×128

---

## Setup

### 1. Clone the repository
```bash
git clone https://github.com/AryanCoder1204/Plant-Disease-Prediction-model.git
cd Plant-Disease-Prediction-model
```

### 2. Install dependencies
```bash
pip install tensorflow jupyter notebook matplotlib pandas seaborn numpy opencv-python scikit-learn
```

### 3. Download the dataset
Download from Kaggle: [New Plant Diseases Dataset](https://www.kaggle.com/datasets/vipoooool/new-plant-diseases-dataset)

Or use the Kaggle API:
```bash
pip install kaggle
kaggle datasets download -d vipoooool/new-plant-diseases-dataset
```

Extract and place folders in the project root:
```
Plant-Disease-Prediction-model/
├── train/        ← 70,295 images (38 classes)
├── valid/        ← 17,572 images (38 classes)
├── test/
├── Training.ipynb
└── Testing.ipynb
```

### 4. Train the model
```bash
jupyter notebook
```
Open `Training.ipynb` and run all cells. Saves model as `trained_plant_disease_model.keras`.

### 5. Test predictions
Open `Testing.ipynb` and run all cells to evaluate the model and predict on new images.

---

## Dataset

- **Source:** [Kaggle — New Plant Diseases Dataset](https://www.kaggle.com/datasets/vipoooool/new-plant-diseases-dataset)
- **Train:** 70,295 images | **Validation:** 17,572 images | **Classes:** 38
