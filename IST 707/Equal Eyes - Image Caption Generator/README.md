# EqualEyes: Image Caption Generator

## Introduction
EqualEyes is an advanced image caption generator that aims to push the boundaries of image captioning technology. By combining recent advances in image recognition and language modeling, our system generates novel, descriptive captions that go beyond simply naming objects and actions. The goal is to create rich, detailed, and natural descriptions of photographs, making them more accessible and meaningful for all users.

### Key Features
- Generates detailed and contextual image captions
- Utilizes state-of-the-art image recognition and language modeling techniques
- Trained on diverse image datasets to ensure broad generalization
- Focuses on inclusivity and accessibility in image description

### Target Audience
- Individuals with visual impairments (especially color-blind people)
- Social media users and content creators
- Researchers analyzing image datasets
- Developers working on image recognition and understanding applications
- Educators and students for early literacy and language learning

## Data & Methods

### Datasets
1. COCO Dataset 2017
   - 118k images in train set, 40k in test set
   - 56k train and 14k validation images used for our models
   - 1.5 million object instances across 12 super categories and 80 sub-categories

2. ImageNet
   - 1.2 million training images
   - 1,000 object classes

### Models Developed
1. Basic CNN-RNN model
2. CNN-RNN with Hyper-parameter tuning
3. Vision Transformer: ViT-GPT2
4. BLIP: Bootstrapping Language-Image Pre-training

## Results
- Model 1 (Basic CNN-RNN): Loss of 2.61
- Model 2 (Optimized CNN-RNN): Loss of 2.31
- Model 3 (Vision Transformer GPT-2): Loss of 0.376
- Model 4 (BLIP): Loss of 0.0062

The final application is built on the BLIP model, which demonstrated the best performance.

### BLEU Score
Average BLEU score: 0.72 (72% match between generated and reference captions)

## Limitations
- Computational resource constraints
- GPU compatibility issues with TensorFlow versions
- Limited training on object categories (currently 80 from COCO dataset)
- Time constraints for model training and optimization

## Future Work
- Resolve GPU detection and utilization issues
- Expand object category training (aim for 300+ categories)
- Incorporate advanced vocabulary training
- Add support for multiple languages (Italian, Spanish, Dutch)
- Develop specialized versions for different stakeholders (e.g., botanists)
- Create an interactive learning experience for students
