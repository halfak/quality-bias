datasets/article_sample.tsv:
	wget https://quarry.wmflabs.org/run/86183/output/0/tsv?download=true -qO- > \
	datasets/article_sample.tsv

datasets/article_sample_scores.tsv: datasets/article_sample.tsv
	cat datasets/article_sample.tsv | \
	python score_revisions.py \
		../wikiclass/models/enwiki.nettrom_wp10.rf.model \
		--host https://en.wikipedia.org \
		--verbose > \
	datasets/article_sample_scores.tsv
