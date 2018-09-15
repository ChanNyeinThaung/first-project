<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Post $post
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Post'), ['action' => 'edit', $post->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Post'), ['action' => 'delete', $post->id], ['confirm' => __('Are you sure you want to delete # {0}?', $post->id)]) ?> </li>

        <li><?= $this->Html->link(__('List Posts'), ['action' => 'index']) ?> </li>
        
        <li><?= $this->Html->link(__('New Comment'), ['controller' => 'Comments', 'action' => 'add']) ?> </li>
    </ul>
</nav>


<div class="posts view large-9 medium-8 columns content">
    <h3><?= h($post->title) ?></h3>


    <div class="row">
        
        <?= $this->Text->autoParagraph(h($post->body)); ?>

        <div class="meta" style="font-size: 12px; color:#666">
             By <?= $post->user->name ?>,
            At <?= h($post->created) ?>
    </div>


    <div class="related">
        <h4>Comments</h4>

        <?php if (!empty($post->comments)): ?>
            <?php foreach ($post->comments as $comments): ?>
            
                <div class="comment">
                    <p><?= $comments->comment ?></p>
                    <hr>

            <?php endforeach; ?>
        <?php endif; ?>
    </div>

    <hr>

    <?= $this->Form->create(null,['url'=>
        ['controller'=>'Comments',
        'action'=>'add'
        ]
    ]) ?>

        <input type="hidden" name="post_id" value="<?= $post->id ?>">
        <textarea name="comment" rows="8" cols="80"></textarea>
        <button type="submit">Add Comment</button>


    <?= $this->Form->end() ?>

</div>
