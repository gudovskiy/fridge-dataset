import argparse, os, json, random
from collections import defaultdict


parser = argparse.ArgumentParser()
parser.add_argument('--input_questions_file',  default='../clevr-output/CLEVR_questions.json')
parser.add_argument('--output_questions_file', default='../clevr-output/CLEVR_fixed_questions.json')


def main(args):
    # Load questions
    with open(args.input_questions_file, 'r') as f:
        question_data = json.load(f)
        info = question_data['info']
        questions = question_data['questions']
    print('Read %d questions from disk' % len(questions))
    # Rename 'type' to 'program'
    for q in questions:
        programs = q['program']
        for p in programs:
            p['function'] = p.pop('type')
    # Dump new dict
    with open(args.output_questions_file, 'w') as f:
        print('Writing output to %s' % args.output_questions_file)
        json.dump({
            'info': info,
            'questions': questions,
        }, f)

if __name__ == '__main__':
  main(parser.parse_args())
