<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Post[]|\Cake\Collection\CollectionInterface $posts
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    
</nav>

<div class="posts index large-9 medium-8 columns content">
  
    <?php foreach ($posts as $post): ?>
        <div class="post">

            <h3><?= $this->Html->link($post->title, ['action'=>'view', $post->id]) ?></h3>

            <div class="post-doby">
                <p><?= $post->body ?></p>
            </div>

            <div class="meta" style="font-size: 12px; color: #666">
                By <?= $post->user->name ?>,
                At <?= h($post->created) ?>
            </div>        

        </div>
    <?php endforeach; ?>



    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
