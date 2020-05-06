#for seed in {1..5}
#do
#    echo -e "GFP Seed:\t"$seed >> gfp_hybrid.log
#    python bin/gfp.py hybrid 1 $seed >> gfp_hybrid.log
#
#    export CUDA_VISIBLE_DEVICES=1
#    echo -e "GFP Seed:\t"$seed >> gfp_mlper5g.log
#    python bin/gfp.py mlper5g 1 $seed >> gfp_mlper5g.log &
#
#    export CUDA_VISIBLE_DEVICES=2
#    echo -e "GFP Seed:\t"$seed >> gfp_mlper1.log
#    python bin/gfp.py mlper1 0 $seed >> gfp_mlper1.log &
#
#    wait
#done
#
#for seed in {1..5}
#do
#    echo -e "GFP Seed:\t"$seed >> gfp_bayesnn.log
#    python bin/gfp.py bayesnn 1 $seed >> gfp_bayesnn.log
#done

#for seed in {1..5}
#do
#    export CUDA_VISIBLE_DEVICES=3
#    echo -e "GFP Seed:\t"$seed >> gfp_fpbase_hybrid.log
#    python bin/gfp.py hybrid 1 $seed >> gfp_fpbase_hybrid.log &
#
#    export CUDA_VISIBLE_DEVICES=1
#    echo -e "GFP Seed:\t"$seed >> gfp_fpbase_mlper5g.log
#    python bin/gfp.py mlper5g 1 $seed >> gfp_fpbase_mlper5g.log &
#
#    export CUDA_VISIBLE_DEVICES=2
#    echo -e "GFP Seed:\t"$seed >> gfp_fpbase_mlper1.log
#    python bin/gfp.py mlper1 0 $seed >> gfp_fpbase_mlper1.log &
#
#    wait
#done

for seed in {1..5}
do
    echo -e "GFP Seed:\t"$seed >> gfp_fpbase_bayesnn.log
    python bin/gfp.py bayesnn 1 $seed >> gfp_fpbase_bayesnn.log
done
