BERT_MODEL_LOC=../uncased_bert_model

sudo python3 run_squad.py --vocab_file=$BERT_MODEL_LOC/vocab.txt --bert_config_file=$BERT_MODEL_LOC/bert_config.json --init_checkpoint=$BERT_MODEL_LOC/bert_model.ckpt --do_train=True --train_file=SQUAD/train-v1.1.json --do_predict=True --predict_file=SQUAD/dev-v1.1.json --train_batch_size=12 --learning_rate=3e-5 --num_train_epochs=2.0 --max_seq_length=384 --doc_stride=128 --output_dir=SQUAD/
