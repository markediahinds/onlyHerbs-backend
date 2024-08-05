\c herbology_dev;

INSERT INTO biosystems (name, description, functionality, primaryOrgans, associatedDiseases, element, chakra, has_regenerative_capacity, averageRecoveryTime) VALUES
('Musculoskeletal System', 'The system providing structural support, movement, and protection for the body.', 'Supports body structure, enables movement, and protects vital organs.', 'Bones, Muscles, Joints', 'Osteoporosis, Arthritis, Muscular Dystrophy', 'Root', 'Earth', true, 30),
('Hematologic System', 'The system involved in the production and function of blood cells and the blood-forming organs.', 'Responsible for blood production, immune response, and oxygen transport.', 'Bone Marrow, Blood, Spleen', 'Anemia, Leukemia, Hemophilia', 'Fire', 'Root', true, 7), 
('Integumentary System', 'The system that includes the skin and its associated structures.', 'Protects the body from external damage and regulates temperature.', 'Skin, Hair, Nails', 'Eczema, Psoriasis, Acne', 'Root', 'Earth', true, 14),
('Urinary System', 'The system responsible for eliminating waste and regulating fluid and electrolyte balance.', 'Filters blood to produce urine and regulates fluid and electrolyte balance.', 'Kidneys, Ureters, Bladder, Urethra', 'Urinary Tract Infections, Kidney Stones, Incontinence', 'Sacral', 'Water', true, 21),
('Reproductive System', 'The system involved in producing offspring and regulating sexual functions.', 'Facilitates reproduction and regulates sexual health.', 'Ovaries, Uterus, Testes, Prostate', 'Infertility, Polycystic Ovary Syndrome, Erectile Dysfunction', 'Sacral', 'Water', true, 30),
('Excretory System', 'The system responsible for removing waste products and excess substances from the blood.', 'Filters and eliminates waste through various mechanisms.', 'Kidneys, Bladder, Urethra, Skin', 'Kidney Stones, Urinary Tract Infections, Sweat Disorders', 'Water', 'Sacral', true, 14),
('Digestive System', 'A complex system responsible for breaking down food, absorbing nutrients, and expelling waste.', 'Breaks down food into nutrients, absorbs nutrients, and removes waste.', 'Stomach, Intestines, Liver, Pancreas, Gallbladder', 'Gastritis, Peptic Ulcers, Irritable Bowel Syndrome, Crohns Disease', 'Solar Plexus', 'Fire', true, 7),
('Cardiovascular System', 'The system that circulates blood throughout the body, delivering oxygen and nutrients while removing waste.', 'Pumps blood throughout the body, delivering oxygen and nutrients to tissues and removing waste products.', 'Heart, Blood Vessels, Blood', 'Hypertension, Heart Disease, Atherosclerosis', 'Heart', 'Water', true, 10),
('Respiratory System', 'The system responsible for the exchange of oxygen and carbon dioxide between the body and the environment.', 'Facilitates breathing by exchanging gases between the blood and the air.', 'Lungs, Trachea, Bronchi, Diaphragm', 'Asthma, Chronic Obstructive Pulmonary Disease (COPD), Pneumonia', 'Heart', 'Air', false, 14),
('Lymphatic System', 'A network of tissues and organs that help rid the body of toxins and waste.', 'Transports lymph, a fluid containing infection-fighting white blood cells.', 'Lymph Nodes, Lymph Vessels, Spleen, Thymus', 'Lymphedema, Lymphoma, Tonsillitis', 'Water', 'Heart', true, 20),
('Immune System', 'The system that defends the body against infections and disease.', 'Identifies and destroys pathogens, and removes damaged cells.', 'Lymph Nodes, Spleen, Bone Marrow, Antibodies', 'Autoimmune Diseases, Allergies, Immunodeficiency Disorders', 'Throat', 'Ether', true, 14),
('Sensory System', 'The part of the nervous system responsible for processing sensory information.', 'Receives and processes sensory information from the environment.', 'Eyes, Ears, Nose, Tongue, Skin', 'Cataracts, Hearing Loss, Anosmia', 'Ether', 'Third Eye', true, 10),
('Endocrine System', 'A collection of glands that produce hormones regulating metabolism, growth, and other functions.', 'Regulates various physiological processes through hormone secretion.', 'Pituitary Gland, Thyroid Gland, Adrenal Glands', 'Diabetes Mellitus, Hypothyroidism, Addisons Disease', 'Third Eye', 'Air', true, 21),
('Cellular Organelle Systems', 'The systems within cells that carry out specific functions essential for cell survival.', 'Includes mitochondria, nuclei, ribosomes, and endoplasmic reticulum.', 'Mitochondria, Nucleus, Ribosomes, Endoplasmic Reticulum', 'Mitochondrial Diseases, Nucleus Disorders, Ribosomal Protein Deficiencies', 'Ether', 'Crown', true, 5),
('Nervous System', 'The system that transmits nerve impulses between parts of the body and the brain.', 'Controls and coordinates body activities by transmitting electrical signals.', 'Brain, Spinal Cord, Nerves', 'Alzheimers Disease, Parkinsons Disease, Multiple Sclerosis', 'Crown', 'Ether', false, 30);

INSERT INTO herbs (name, imageURL, partsUsed, family, genus, nutrients, activeCompounds, medicinalUses, precautions, potencyRating, chakra, element, biosystem_id) VALUES
('Abuta', 'https://example.com/abuta.jpg', 'Stem', 'Menispermaceae', 'Abuta', 'Alkaloids, Flavonoids', 'Isoquinoline alkaloids, Flavonoids', 'Pain relief, Anti-inflammatory', 'May cause dizziness', 6, 'Root', 'Earth', 'Musculoskeletal System, Immune System'),
('Acai', 'https://example.com/acai.jpg', 'Fruit', 'Arecaceae', 'Euterpe', 'Anthocyanins, Vitamin C', 'Acai anthocyanins, Flavonoids', 'Antioxidant, Heart health', 'May cause digestive upset', 6, 'Root', 'Earth', 'Cardiovascular System, Immune System'),
('Aloe Vera', 'https://example.com/aloe_vera.jpg', 'Leaves', 'Asphodelaceae', 'Aloe', 'Aloin, Polysaccharides', 'Aloin, Polysaccharides', 'Skin health, Digestive aid', 'May cause skin irritation', 6, 'Heart', 'Water', 'Skin, Digestive System'),
('Andiroba', 'https://example.com/andiroba.jpg', 'Oil', 'Meliaceae', 'Carapa', 'Limonene, Triterpenes', 'Limonene, Triterpenes', 'Anti-inflammatory, Skin health', 'May cause skin irritation', 6, 'Root', 'Earth', 'Skin, Immune System'),
('Arnica', 'https://example.com/arnica.jpg', 'Flowers', 'Asteraceae', 'Arnica', 'Sesquiterpene lactones, Flavonoids', 'Helenalin, Flavonoids', 'Anti-inflammatory, Pain relief', 'May cause skin irritation', 7, 'Solar Plexus', 'Fire', 'Musculoskeletal System, Skin'),
('Artichoke', 'https://example.com/artichoke.jpg', 'Leaves', 'Asteraceae', 'Cynara', 'Inulin, Cynarin', 'Cynarin, Silymarin', 'Digestive aid, Liver support', 'May cause allergic reactions', 7, 'Heart', 'Earth', 'Digestive System, Liver'),
('Ashwagandha', 'https://example.com/ashwagandha.jpg', 'Root', 'Solanaceae', 'Withania', 'Withanolides, Iron', 'Withanolides, Alkaloids', 'Stress relief, Immune support', 'May cause digestive upset', 7, 'Root', 'Earth', 'Nervous System, Immune System'),
('Asian Ginseng', 'https://example.com/asian_ginseng.jpg', 'Root', 'Araliaceae', 'Panax', 'Ginsenosides, Polysaccharides', 'Ginsenosides, Polysaccharides', 'Energy boost, Immune support', 'May cause insomnia', 8, 'Root', 'Earth', 'Nervous System, Immune System'),
('Astragalus', 'https://example.com/astragalus.jpg', 'Root', 'Fabaceae', 'Astragalus', 'Polysaccharides, Saponins', 'Astragalosides, Isoflavonoids', 'Immune support, Anti-inflammatory', 'May interact with immunosuppressive medications', 7, 'Heart', 'Earth', 'Immune System, Cardiovascular System'),
('Bitter Melon', 'https://example.com/bitter_melon.jpg', 'Fruit', 'Cucurbitaceae', 'Momordica', 'Charantin, Vitamin C', 'Momordicin, Charantin', 'Blood sugar regulation, Antioxidant', 'May cause digestive upset', 6, 'Heart', 'Water', 'Endocrine System, Immune System'),
('Chuchuhuasi', 'https://example.com/chuchuhuasi.jpg', 'Bark', 'Malvaceae', 'Maytenus', 'Alkaloids, Triterpenes', 'Maytenin, Pristimerin', 'Anti-inflammatory, Pain relief', 'May cause dizziness', 6, 'Root', 'Earth', 'Musculoskeletal System, Immune System'),
('Copaiba', 'https://example.com/copaiba.jpg', 'Resin', 'Fabaceae', 'Copaifera', 'Caryophyllene, Terpenoids', 'Caryophyllene, Terpenoids', 'Anti-inflammatory, Pain relief', 'May cause digestive upset', 6, 'Root', 'Earth', 'Musculoskeletal System, Immune System'),
('Bilberry', 'https://example.com/bilberry.jpg', 'Fruit', 'Ericaceae', 'Vaccinium', 'Anthocyanins, Vitamin C', 'Anthocyanins, Flavonoids', 'Antioxidant, Eye health', 'May cause digestive upset', 5, 'Third Eye', 'Air', 'Ocular System, Immune System'),
('Bitter Orange', 'https://example.com/bitter_orange.jpg', 'Fruit', 'Rutaceae', 'Citrus', 'Synephrine, Flavonoids', 'Synephrine, Flavonoids', 'Appetite suppressant, Energy boost', 'May cause increased heart rate', 5, 'Solar Plexus', 'Fire', 'Digestive System, Cardiovascular System'),
('Black Cohosh', 'https://example.com/black_cohosh.jpg', 'Root', 'Ranunculaceae', 'Actaea', 'Triterpene glycosides, Isoflavones', 'Actein, Isoflavones', 'Hormonal balance, Menopausal support', 'May cause digestive upset', 6, 'Sacral', 'Water', 'Reproductive System, Endocrine System'),
('Bromelain', 'https://example.com/bromelain.jpg', 'Stem', 'Bromeliaceae', 'Ananas', 'Proteolytic enzymes, Vitamin C', 'Bromelain, Flavonoids', 'Anti-inflammatory, Digestive aid', 'May cause digestive upset', 7, 'Solar Plexus', 'Fire', 'Digestive System, Musculoskeletal System'),
('Butterbur', 'https://example.com/butterbur.jpg', 'Root', 'Asteraceae', 'Petasites', 'Petasin, Flavonoids', 'Petasin, Flavonoids', 'Allergy relief, Migraine prevention', 'May cause liver damage', 5, 'Crown', 'Air', 'Nervous System, Immune System'),
('Carqueja', 'https://example.com/carqueja.jpg', 'Aerial parts', 'Asteraceae', 'Baccharis', 'Flavonoids, Saponins', 'Baccharin, Baccharis oxide', 'Digestive aid, Liver support', 'May cause digestive upset', 6, 'Solar Plexus', 'Fire', 'Digestive System, Liver'),
('Cats Claw', 'https://example.com/cats_claw.jpg', 'Bark', 'Rubiaceae', 'Uncaria', 'Oxindole alkaloids, Flavonoids', 'Rhynchophylline, Flavonoids', 'Anti-inflammatory, Immune support', 'May cause digestive upset', 6, 'Root', 'Earth', 'Immune System, Musculoskeletal System'),
('Chamomile', 'https://example.com/chamomile.jpg', 'Flowers', 'Asteraceae', 'Matricaria', 'Apigenin, Flavonoids', 'Apigenin, Chamazulene', 'Sleep aid, Digestive aid', 'May cause allergic reactions', 6, 'Solar Plexus', 'Water', 'Nervous System, Digestive System'),
('Chasteberry', 'https://example.com/chasteberry.jpg', 'Fruit', 'Lamiaceae', 'Vitex', 'Agnuside, Flavonoids', 'Agnuside, Flavonoids', 'Hormonal balance, Menstrual support', 'May cause digestive upset', 6, 'Sacral', 'Water', 'Reproductive System, Endocrine System'),
('Cinnamon', 'https://example.com/cinnamon.jpg', 'Bark', 'Lauraceae', 'Cinnamomum', 'Cinnamaldehyde, Flavonoids', 'Cinnamaldehyde, Eugenol', 'Blood sugar regulation, Antioxidant', 'May cause digestive upset', 7, 'Sacral', 'Fire', 'Digestive System, Cardiovascular System'),
('Clavillia', 'https://example.com/clavillia.jpg', 'Leaves', 'Nyctaginaceae', 'Mirabilis', 'Flavonoids, Alkaloids', 'Mirabilin, Mirabilis antiviral protein', 'Anti-inflammatory, Immune support', 'May cause digestive upset', 5, 'Solar Plexus', 'Fire', 'Immune System, Musculoskeletal System'),
('Cranberry', 'https://example.com/cranberry.jpg', 'Fruit', 'Ericaceae', 'Vaccinium', 'Proanthocyanidins, Vitamin C', 'Proanthocyanidins, Flavonoids', 'Urinary health, Antioxidant', 'May cause digestive upset', 6, 'Sacral', 'Water', 'Urinary System, Immune System'),
('Damiana', 'https://example.com/damiana.jpg', 'Leaves', 'Passifloraceae', 'Turnera', 'Apigenin, Flavonoids', 'Damiana flavonoid, Apigenin', 'Aphrodisiac, Mood enhancement', 'May cause digestive upset', 5, 'Sacral', 'Water', 'Reproductive System, Nervous System'),
('Dandelion', 'https://example.com/dandelion.jpg', 'Root', 'Asteraceae', 'Taraxacum', 'Inulin, Flavonoids', 'Taraxacin, Flavonoids', 'Digestive aid, Liver support', 'May cause allergic reactions', 5, 'Solar Plexus', 'Fire', 'Digestive System, Liver'),
('Echinacea', 'https://example.com/echinacea.jpg', 'Root', 'Asteraceae', 'Echinacea', 'Alkamides, Polysaccharides', 'Echinacoside, Flavonoids', 'Immune support, Anti-inflammatory', 'May cause allergic reactions', 7, 'Root', 'Earth', 'Immune System, Respiratory System'),
('Elderberry', 'https://example.com/elderberry.jpg', 'Fruit', 'Adoxaceae', 'Sambucus', 'Anthocyanins, Vitamin C', 'Anthocyanins, Flavonoids', 'Immune support, Antioxidant', 'May cause digestive upset', 6, 'Throat', 'Water', 'Immune System, Respiratory System'),
('Epazote', 'https://example.com/epazote.jpg', 'Leaves', 'Amaranthaceae', 'Dysphania', 'Ascaridole, Flavonoids', 'Ascaridole, Isoascaridole', 'Digestive aid, Anti-parasitic', 'May cause digestive upset', 6, 'Solar Plexus', 'Fire', 'Digestive System, Immune System'),
('Ephedra', 'https://example.com/ephedra.jpg', 'Stem', 'Ephedraceae', 'Ephedra', 'Ephedrine, Flavonoids', 'Ephedrine, Pseudoephedrine', 'Energy boost, Weight loss', 'May cause increased heart rate', 7, 'Solar Plexus', 'Fire', 'Respiratory System, Cardiovascular System'),
('Erva Tostao', 'https://example.com/erva_tostao.jpg', 'Root', 'Rubiaceae', 'Borreria', 'Alkaloids, Flavonoids', 'Borreriine, Borrerine', 'Diuretic, Anti-inflammatory', 'May cause digestive upset', 6, 'Root', 'Earth', 'Urinary System, Musculoskeletal System'),
('European Mistletoe', 'https://example.com/european_mistletoe.jpg', 'Leaves', 'Santalaceae', 'Viscum', 'Viscotoxins, Lectins', 'Viscotoxins, Lectins', 'Immune support, Anti-cancer', 'May cause digestive upset', 5, 'Heart', 'Earth', 'Immune System, Cardiovascular System'),
('Evening Primrose Oil', 'https://example.com/evening_primrose_oil.jpg', 'Seeds', 'Onagraceae', 'Oenothera', 'Gamma-linolenic acid, Flavonoids', 'Gamma-linolenic acid, Flavonoids', 'Hormonal balance, Skin health', 'May cause digestive upset', 6, 'Sacral', 'Water', 'Reproductive System, Skin'),
('Fedegoso', 'https://example.com/fedegoso.jpg', 'Leaves', 'Fabaceae', 'Cassia', 'Flavonoids, Saponins', 'Emodin, Rhein', 'Digestive aid, Laxative', 'May cause digestive upset', 5, 'Solar Plexus', 'Fire', 'Digestive System, Immune System'),
('Fenugreek', 'https://example.com/fenugreek.jpg', 'Seeds', 'Fabaceae', 'Trigonella', 'Saponins, Flavonoids', 'Fenugreek saponins, Flavonoids', 'Digestive aid, Blood sugar regulation', 'May cause digestive upset', 5, 'Solar Plexus', 'Fire', 'Digestive System, Endocrine System'),
('Feverfew', 'https://example.com/feverfew.jpg', 'Leaves', 'Asteraceae', 'Tanacetum', 'Parthenolide, Flavonoids', 'Parthenolide, Flavonoids', 'Migraine prevention, Anti-inflammatory', 'May cause digestive upset', 6, 'Crown', 'Air', 'Nervous System, Musculoskeletal System'),
('Flaxseed', 'https://example.com/flaxseed.jpg', 'Seeds', 'Linaceae', 'Linum', 'Alpha-linolenic acid, Lignans', 'Alpha-linolenic acid, Lignans', 'Heart health, Digestive aid', 'May cause digestive upset', 6, 'Throat', 'Water', 'Cardiovascular System, Digestive System'),
('Garcinia Cambogia', 'https://example.com/garcinia_cambogia.jpg', 'Fruit', 'Clusiaceae', 'Garcinia', 'Hydroxycitric acid, Flavonoids', 'Hydroxycitric acid, Flavonoids', 'Weight loss, Appetite suppressant', 'May cause digestive upset', 5, 'Solar Plexus', 'Fire', 'Digestive System, Endocrine System'),
('Garlic', 'https://example.com/garlic.jpg', 'Bulb', 'Amaryllidaceae', 'Allium', 'Allicin, Flavonoids', 'Allicin, S-allyl cysteine', 'Heart health, Immune support', 'May cause digestive upset', 8, 'Heart', 'Earth', 'Cardiovascular System, Immune System'),
('Ginger', 'https://example.com/ginger.jpg', 'Rhizome', 'Zingiberaceae', 'Zingiber', 'Gingerol, Vitamin B6, Potassium', 'Gingerol, Shogaol, Zingerone', 'Anti-nausea, Anti-inflammatory, Pain relief', 'May cause digestive upset in large amounts', 7, 'Solar Plexus', 'Fire', 'Digestive System, Immune System'),
('Ginkgo', 'https://example.com/ginkgo.jpg', 'Leaves', 'Ginkgoaceae', 'Ginkgo', 'Flavonoids, Terpenoids', 'Ginkgolides, Bilobalide', 'Cognitive support, Circulatory health', 'May cause digestive upset', 7, 'Crown', 'Air', 'Nervous System, Cardiovascular System'),
('Goldenseal', 'https://example.com/goldenseal.jpg', 'Root', 'Ranunculaceae', 'Hydrastis', 'Berberine, Hydrastine', 'Berberine, Hydrastine', 'Antimicrobial, Immune support', 'May cause digestive upset', 6, 'Solar Plexus', 'Fire', 'Immune System, Digestive System'),
('Grape Seed Extract', 'https://example.com/grape_seed_extract.jpg', 'Seeds', 'Vitaceae', 'Vitis', 'Proanthocyanidins, Flavonoids', 'Proanthocyanidins, Flavonoids', 'Antioxidant, Circulatory health', 'May cause digestive upset', 6, 'Heart', 'Earth', 'Cardiovascular System, Immune System'),
('Green Tea', 'https://example.com/green_tea.jpg', 'Leaves', 'Theaceae', 'Camellia', 'Catechins, Flavonoids', 'Epigallocatechin gallate, Flavonoids', 'Antioxidant, Weight loss', 'May cause digestive upset', 7, 'Heart', 'Earth', 'Cardiovascular System, Digestive System'),
('Hawthorn', 'https://example.com/hawthorn.jpg', 'Fruit', 'Rosaceae', 'Crataegus', 'Flavonoids, Procyanidins', 'Flavonoids, Procyanidins', 'Heart health, Circulatory health', 'May cause digestive upset', 7, 'Heart', 'Earth', 'Cardiovascular System, Immune System'),
('Hoodia', 'https://example.com/hoodia.jpg', 'Stem', 'Apocynaceae', 'Hoodia', 'P57, Flavonoids', 'P57, Flavonoids', 'Appetite suppressant, Weight loss', 'May cause digestive upset', 6, 'Solar Plexus', 'Fire', 'Digestive System, Endocrine System'),
('Horse Chestnut', 'https://example.com/horse_chestnut.jpg', 'Seeds', 'Sapindaceae', 'Aesculus', 'Aescin, Flavonoids', 'Aescin, Flavonoids', 'Circulatory health, Anti-inflammatory', 'May cause digestive upset', 6, 'Root', 'Earth', 'Cardiovascular System, Immune System'),
('Juazeiro', 'https://example.com/juazeiro.jpg', 'Bark', 'Rhamnaceae', 'Ziziphus', 'Saponins, Flavonoids', 'Juazeiro saponin, Flavonoids', 'Oral health, Anti-inflammatory', 'May cause digestive upset', 6, 'Root', 'Earth', 'Oral System, Immune System'),
('Jurubeba', 'https://example.com/jurubeba.jpg', 'Leaves', 'Solanaceae', 'Solanum', 'Alkaloids, Flavonoids', 'Solasonine, Solamargine', 'Digestive aid, Liver support', 'May cause digestive upset', 5, 'Solar Plexus', 'Fire', 'Digestive System, Liver'),
('Kalanchoe', 'https://example.com/kalanchoe.jpg', 'Leaves', 'Crassulaceae', 'Kalanchoe', 'Flavonoids, Triterpenoids', 'Bryophyllin, Quercetin', 'Wound healing, Anti-inflammatory', 'May cause skin irritation', 5, 'Heart', 'Water', 'Skin, Immune System'),
('Kava', 'https://example.com/kava.jpg', 'Root', 'Piperaceae', 'Piper', 'Kavalactones, Flavonoids', 'Kavalactones, Flavonoids', 'Anxiety relief, Sleep aid', 'May cause liver damage', 7, 'Solar Plexus', 'Water', 'Nervous System, Immune System'),
('Lavender', 'https://example.com/lavender.jpg', 'Flowers', 'Lamiaceae', 'Lavandula', 'Linalool, Linalyl acetate, Vitamin A', 'Linalool, Linalyl acetate, Cineole', 'Anxiety relief, Sleep aid, Antiseptic', 'May cause skin irritation in sensitive individuals', 5, 'Third Eye', 'Air', 'Nervous System, Skin'),
('Licorice Root', 'https://example.com/licorice_root.jpg', 'Root', 'Fabaceae', 'Glycyrrhiza', 'Glycyrrhizin, Flavonoids', 'Glycyrrhizin, Flavonoids', 'Digestive aid, Anti-inflammatory', 'May cause high blood pressure', 6, 'Solar Plexus', 'Fire', 'Digestive System, Immune System'),
('Milk Thistle', 'https://example.com/milk_thistle.jpg', 'Seeds', 'Asteraceae', 'Silybum', 'Silymarin, Flavonoids', 'Silymarin, Flavonoids', 'Liver support, Antioxidant', 'May cause digestive upset', 7, 'Solar Plexus', 'Fire', 'Liver, Digestive System'),
('Mugwort', 'https://example.com/mugwort.jpg', 'Leaves', 'Asteraceae', 'Artemisia', 'Thujone, Flavonoids', 'Thujone, Flavonoids', 'Digestive aid, Menstrual support', 'May cause allergic reactions', 6, 'Solar Plexus', 'Fire', 'Digestive System, Endocrine System'),
('Mutamba', 'https://example.com/mutamba.jpg', 'Bark', 'Malvaceae', 'Guazuma', 'Tannins, Flavonoids', 'Guazuma tannin, Flavonoids', 'Anti-inflammatory, Pain relief', 'May cause digestive upset', 5, 'Root', 'Earth', 'Musculoskeletal System, Immune System'),
('Noni', 'https://example.com/noni.jpg', 'Fruit', 'Rubiaceae', 'Morinda', 'Iridoids, Flavonoids', 'Scopolein, Damnacanthal', 'Immune support, Antioxidant', 'May cause digestive upset', 6, 'Solar Plexus', 'Fire', 'Immune System, Digestive System'),
('Passionflower', 'https://example.com/passionflower.jpg', 'Leaves', 'Passifloraceae', 'Passiflora', 'Flavonoids, Alkaloids', 'Passiflorine, Harmine', 'Anxiety relief, Sleep aid', 'May cause digestive upset', 6, 'Heart', 'Water', 'Nervous System, Immune System'),
('Pau d Arco', 'https://example.com/pau_darco.jpg', 'Bark', 'Bignoniaceae', 'Tabebuia', 'Lapachol, Quercetin', 'Lapachol, Quercetin', 'Antimicrobial, Immune support', 'May cause digestive upset', 6, 'Heart', 'Earth', 'Immune System, Musculoskeletal System'),
('Peppermint', 'https://example.com/peppermint.jpg', 'Leaves', 'Lamiaceae', 'Mentha', 'Menthol, Flavonoids', 'Menthol, Menthone', 'Digestive aid, Respiratory relief', 'May cause allergic reactions', 7, 'Throat', 'Air', 'Digestive System, Respiratory System'),
('Red Clover', 'https://example.com/red_clover.jpg', 'Flowers', 'Fabaceae', 'Trifolium', 'Isoflavones, Flavonoids', 'Genistein, Daidzein', 'Hormonal balance, Skin health', 'May cause allergic reactions', 6, 'Sacral', 'Water', 'Reproductive System, Skin'),
('Sangre de Grado', 'https://example.com/sangre_de_grado.jpg', 'Bark', 'Euphorbiaceae', 'Croton', 'Taspine, Proanthocyanidins', 'Taspine, Proanthocyanidins', 'Wound healing, Anti-inflammatory', 'May cause digestive upset', 6, 'Root', 'Earth', 'Skin, Immune System'),
('Sarsaparilla', 'https://example.com/sarsaparilla.jpg', 'Root', 'Smilacaceae', 'Smilax', 'Saponins, Flavonoids', 'Smilax saponin, Flavonoids', 'Detoxification, Hormonal balance', 'May cause digestive upset', 6, 'Root', 'Earth', 'Endocrine System, Immune System'),
('Saw Palmetto', 'https://example.com/saw_palmetto.jpg', 'Berries', 'Arecaceae', 'Serenoa', 'Fatty acids, Phytosterols', 'Beta-sitosterol, Lauric acid', 'Prostate health, Hormonal balance', 'May cause digestive upset', 6, 'Root', 'Earth', 'Endocrine System, Reproductive System'),
('Schisandra', 'https://example.com/schisandra.jpg', 'Fruit', 'Schisandraceae', 'Schisandra', 'Lignans, Vitamin C', 'Schisandrin, Schisandrol', 'Stress relief, Liver support', 'May cause digestive upset', 7, 'Root', 'Earth', 'Liver, Nervous System'),
('St. Johns Wort', 'https://example.com/st_johns_wort.jpg', 'Flowers', 'Hypericaceae', 'Hypericum', 'Hypericin, Flavonoids', 'Hypericin, Hyperforin', 'Mood enhancement, Antimicrobial', 'May interact with medications', 7, 'Solar Plexus', 'Fire', 'Nervous System, Immune System'),
-- ('Thunder God Vine', 'https://example.com/thunder_god_vine.jpg', 'Root', 'Aristolochiaceae', 'Tripterygium', 'Tripterygium glycosides, Alkaloids', 'Anti-inflammatory, Immunosuppressant', 'May cause gastrointestinal issues', 7, 'Solar Plexus', 'Fire', 'Immune System, Musculoskeletal System'),
('Turmeric', 'https://example.com/turmeric.jpg', 'Rhizome', 'Zingiberaceae', 'Curcuma', 'Curcuminoids, Iron, Manganese', 'Curcumin, Demethoxycurcumin, Bisdemethoxycurcumin', 'Anti-inflammatory, Antioxidant, Pain relief', 'May interact with blood-thinning medications', 8, 'Solar Plexus', 'Fire', 'Immune System, Musculoskeletal System'),
('Valerian', 'https://example.com/valerian.jpg', 'Root', 'Valerianaceae', 'Valeriana', 'Valerenic acid, Flavonoids', 'Valerenic acid, Valepotriates', 'Sleep aid, Anxiety relief', 'May cause digestive upset', 7, 'Third Eye', 'Water', 'Nervous System, Immune System'),
('White Willow Bark', 'https://example.com/white_willow_bark.jpg', 'Bark', 'Salicaceae', 'Salix', 'Salicin, Flavonoids', 'Salicin, Flavonoids', 'Pain relief, Anti-inflammatory', 'May cause digestive upset', 7, 'Solar Plexus', 'Fire', 'Musculoskeletal System, Immune System'),
('Wormwood', 'https://example.com/wormwood.jpg', 'Leaves', 'Asteraceae', 'Artemisia', 'Artemisinin, Flavonoids', 'Artemisinin, Absinthine', 'Digestive aid, Anti-parasitic', 'May cause digestive upset', 6, 'Solar Plexus', 'Fire', 'Digestive System, Immune System'),
('Yohimbe', 'https://example.com/yohimbe.jpg', 'Bark', 'Rubiaceae', 'Pausinystalia', 'Yohimbine, Alkaloids', 'Yohimbine', 'Libido enhancement, Weight loss', 'May cause increased heart rate', 7, 'Root', 'Earth', 'Reproductive System, Endocrine System');


-- INSERT INTO nutrients (name, benefits, recommendedDailyMicrograms, recommendedDailyVisual, solubility, is_storedInBody, biopotency, molecularWeight, chemicalStructure, meltingPoint, boilingPoint, is_antioxidant, foodSources, diseaseProtection, biosystem_id) VALUES
-- ('Calcium', 'Musculoskeletal', '1', 'builds strong bones and teeth, essential for muscle contraction and relaxation, blood clotting, nerve transmission, and cell signaling, Plays a role in hormone secretion and enzyme activation. Helps maintain healthy blood pressure.'),
-- ('Phosphorus', 'Musculoskeletal', 'Hematologic', 'helps build and repair bones and teeth, essential for nerve function and muscle contraction. Part of DNA and RNA. Helps convert food into energy. Part of phospholipids, which carry lipids in blood and help shuttle nutrients into and out of cells.'),
-- ('Manganese', 'Musculoskeletal', '1', 'Helps form bones. Helps metabolize amino acids, cholesterol, and carbohydrates.'),
-- ('Flouride', 'Musculoskeletal', 'Encourages strong bone formation. Keeps dental cavities from starting or worsening', 'Harmful to children in excessive amounts.'),
-- ('Phylloquinone', 'Vitamin K', 'Musculoskeletal', 'Hematologic', 'activates proteins and calcium, necessary for the production of clotting factors in the liver, regulates bone metabolism and density'),
-- ('Calciferol', 'Vitamin D', 'Musculoskeletal', 'Immune', 'plays a role in modulating immune responses and reducing inflammation, regulates calcium and phosphorus levels and bone metabolism, essential for bone growth and development'),
-- ('Potassium', 'Musculoskeletal', 'Nervous', 'Balances fluids in the body. Helps maintain steady heartbeat and send nerve impulses. Needed for muscle contractions. A diet rich in potassium seems to lower blood pressure.'),
-- ('Chromium', 'Hematologic', 'Enhances the activity of insulin, helps maintain normal blood glucose levels, and is needed to free energy from glucose'),
-- ('Iron', 'Hematologic', 'Helps hemoglobin in red blood cells and myoglobin in muscle cells ferry oxygen throughout the body. Needed for chemical reactions in the body and for making amino acids, collagen, neurotransmitters, and hormones.'),
-- ('Alpha-Tocopherol', 'Vitamin E', 'Integumentary', '3', 'maintains healthy skin and mucous membranes', 'antioxidant: protects cells from damage caused by free radicals', 'Protects vitamin A and certain lipids from damage.'),
-- ('Sulfur', 'Integumentary', '3', 'Helps form bridges that shape and stabilize some protein structures. Needed for healthy hair, skin, and nails.'),
-- ('Zinc', 'Immune', '11', 'Helps form many enzymes and proteins, creates new cells. aids in cell division. Frees vitamin A from storage in the liver. Needed for immune system, taste, smell, and wound healing. low zinc levels impair the immune system.'),
-- ('Ascorbic Acid', 'Vitamin C', 'Immune', '11', 'essential for proper functioning of immune cells, such as lymphocytes, Antioxidant: destroys free radicals, protecting cells from damage, aids in the absorption of non-haem iron from plant-based foods. Helps make collagen, a connective tissue that knits together wounds and supports blood vessel walls. Helps make the neurotransmitters serotonin and norepinephrine.'),
-- ('Retinoids & Carotene', 'Vitamin A', 'Immune', 'Integumentary', 'helps regulate the immune response and protect against infections, maintains healthy skin and mucous membranes, Vision: essential for the health and function of the retina and cornea'),
-- ('Chloride', 'Digestive', 'Balances fluids in the body. A component of stomach acid, essential to digestion'),
-- ('Sodium', 'Digestive', 'Endocrine', '7', 'helps regulate fluid balance and is used in the formation of hydrochloric acid (stomach acid) for digestion. Helps send nerve impulses. Needed for muscle contractions. Impacts blood pressure.'),
-- ('Iodine', 'Endocrine', '13', 'essential for the production of thyroid hormones, which helps set body temperature and influences nerve and muscle function, reproduction, and growth, necessary for metabolism and physical and mental development.'),
-- ('Selenium', 'Endocrine', 'Nervous', 'Acts as an antioxidant, neutralizing unstable molecules that can damage cells. Helps regulate thyroid hormone activity'),
-- ('Potassium', 'Nervous', '15', 'plays a crucial role in maintaining fluid balance, muscle contraction, and nerve impulse conduction.'),
-- ('Magnesium', 'Nervous', 'Musculoskeletal', 'acts as a cofactor in several enzymatic reactions, including those involved in nerve function and works with calcium in muscle contraction, blood clotting, and regulation of blood pressure. Helps build bones and teeth.'),
-- ('Copper', 'Nervous', '15', 'required for proper growth and development, carbohydrate metabolism, iron absorption, and immune system. red blood cell formation.'),
-- ('Vitamin B12', 'Nervous', '15', 'plays a crucial role in the formation of myelin, the fatty substance that surrounds and protects nerve fibers, Red blood cell formation: necessary for the production of red blood cells, involved in the metabolism of fatty acids and amino acids.'),
-- ('Thiamine', 'Vitamin B1', 'Nervous', 'Immune', 'plays a role in the synthesis of neurotransmitters and the maintenance of healthy nerve function, supports immune function and response, involved in the breakdown of carbohydrates, fats, and proteins for energy production, necessary for the production of red blood cells'),
-- ('Riboflavin', 'Vitamin B2', 'Helps convert food into energy. Needed for healthy skin, hair, muscles, and brain and is critical for nerve function.'),
-- ('Niacin', 'Vitamin B3', 'Helps convert food into energy. Needed for healthy skin, hair, muscles, and brain and is critical for nerve function.'),
-- ('Pantothenic Acid', 'Vitamin B5', 'Helps convert food into energy. Needed for healthy skin, hair, muscles, and brain and is critical for nerve function. Helps make lipids (fats), neurotransmitters, steroid hormones, and hemoglobin.'),
-- ('Pyridoxine', 'Vitamin B6', 'Helps convert tryptophan to niacin and serotonin, a neurotransmitter that plays key roles in sleep, appetite, and moods.'),
-- ('Cobalamin', 'Vitamin B12','Assists in making new cells and breaking down some fatty acids and amino acids. Protects nerve cells and encourages their normal growth Helps make red blood cells and DNA.'),
-- ('Biotin', 'Helps convert food into energy and synthesize glucose. Helps make and break down some fatty acids. Needed for healthy bones and hair.'),
-- ('Choline', 'Nervous', '15', 'Helps make and release the neurotransmitter acetylcholine, which aids in many nerve and brain activities. Plays a role in metabolizing and transporting fats.'),
-- ('Folate', 'Vitamin B9', 'Vital for new cell creationHelps prevent brain and spine birth defects when taken early in pregnancy'),
-- ('Molybdenum', 'Nervous', 'Part of several enzymes, one of which helps ward off a form of severe neurological damage in infants that can lead to early death'),
-- ('Protein', 'Amino Acids', 'Musculoskeletal', 'Necessary for tissue formation, cell reparation, and hormone and enzyme production. essential for building strong muscles and a healthy immune system.'),
-- ('Carbohydrates', 'Provide a ready source of energy for the body and provide structural constituents for the formation of cells.'),
-- ('Fat', 'Provides stored energy for the body, functions as structural components of cells, and signaling molecules for proper cellular communication. It provides insulation to vital organs and works to maintain body temperature.'),
-- ('Phytochemicals', 'Give plants their distinctive colors and characteristic flavors and aromas'),
-- ('Caroenoids', 'α-carotene, xanthophylls, and lycopene: strong antioxidant agents, which can extinct the singlet oxygen and reduce oxidative stress as well as react as effective protector to retard the growth of cancerous cells. lutein and astaxanthin: prevention of sever diseases like cancer, cardiovascular disease and cataracts, and they also perform excellent antioxidant, antimicrobial and anti-inflammatory properties'),
-- ('Water','Transports essential nutrients to all body parts, transports waste products for disposal, and aids with body temperature maintenance.');

-- Cellular Regeneration (protein, zinc, vitamin e, folate, vitamin c)
-- Bones (flouride, calcium, phosphorus, vitamin D, vitamin k, cobalamin-b12,)
-- Blood (sodium, iron, chromium, copper, calcium, vitamin k)
-- Skin (sulfur, vitamin e, selenium,)
-- Womb (chloride, vitamin A)
-- Appetite
-- Release 
-- Breath
-- Heart
-- Emotions
-- Relaxation (calcium, sodium, potassium, magnesium)
-- Nerves (sodium, potassium, magnesium)
-- Energy (choline, b-vitamins, iron)
-- Thyroid (iodine, )
-- Protection (fat, zinc, vitamin A, vitamin D, vitamin e, vitamin c, selenium, phytochemicals)
-- Vision (vitamin A)
-- Brain (choline,)
-- Sleep
-- System Rebalancing (blood pressure, hormones, body tempature, alkalinity, endocrine, fat, chromium, sodium, chloride, potassium)


