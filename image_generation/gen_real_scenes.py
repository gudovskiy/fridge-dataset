import argparse, os, json, random
from collections import defaultdict
import pandas

parser = argparse.ArgumentParser()
parser.add_argument('--label_csv',     default='../FRIDGR_REAL_GEN/makesense_labels.csv')
parser.add_argument('--template_json', default='FRIDGR_REAL_template.json')
parser.add_argument('--output_folder', default='../FRIDGR_REAL_GEN')

categories =  {
    "dessert": ["donut"],
    "drink": ["coke can", "coke bottle", "beer"],
    "fruit": ["apple", "dark apple", "banana", "dark banana", "lemon", "orange", "pear"],
    "vegetable": ["tomato"],
    "ingredient": ["egg", "meat", "dark meat", "milk", "fish"]
}

def main(args):
    # Make output dir
    out = args.output_folder
    if not os.path.exists('{}/{}'.format(out, 'scenes')):
        os.mkdir('{}/{}'.format(out, 'scenes'))
    # Load template
    with open(args.template_json, 'r') as f:
        template = json.load(f)
        print('Template:', template)
    # Read labels
    labels = pandas.read_csv(args.label_csv)
    # Dump empty template
    for fname in os.listdir('{}/{}'.format(out, 'images')):
        imgname = os.path.basename(fname)
        base = os.path.splitext(imgname)[0]
        index = int(base[-6:])
        jname = base + '.json'
        template['image_filename'] = imgname
        template['image_index'] = index
        template['objects'] = [] # empty
        # filename in label csv
        label = labels[labels.file == imgname]
        i = 0
        for idx, row in label.iterrows():
            i += 1
            if i>10:
                print(i, row['class'], row['x'], row['y'], row['file'])
            class_split = row['class'].split()
            # handle small/large
            if class_split[0] == 'small':
                shape = class_split[1]
                size = 'small'
            else:
                shape = row['class']
                size = 'large'
            # handle fresh/expired
            if class_split[0] == 'dark':
                freshness = 'expired'
            else:
                freshness = 'fresh'
            # handle category
            for key, val in categories.items():
                if shape in val:
                    category = key
            # fill json
            template['objects'].append({
                'shape' : shape,
                'pixel_coords' : [row['x'], row['y'], 0.0],
                'freshness' : freshness,
                'size' : size,
                'category' : category
            })
        #
        f = '{}/{}/{}'.format(out, 'scenes', jname)
        with open(f, 'w') as f:
            #print('Writing empty template to {}'.format(f))
            json.dump(template, f)
    
    ## Rename 'type' to 'program'
    #for q in questions:
    #    programs = q['program']
    #    for p in programs:
    #        p['function'] = p.pop('type')


if __name__ == '__main__':
  main(parser.parse_args())
