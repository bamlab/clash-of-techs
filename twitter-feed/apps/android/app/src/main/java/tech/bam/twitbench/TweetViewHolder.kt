package tech.bam.twitbench

import android.view.View
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso
import tech.bam.twitbench.databinding.TweetItemBinding
import tech.bam.twitbench.model.ResponseItemEntity

internal class TweetViewHolder(view: View): RecyclerView.ViewHolder(view) {

    val binding = TweetItemBinding.bind(view)

    fun bind(responseItemEntity: ResponseItemEntity) {
        Picasso.get().load(responseItemEntity.image?.url).into(binding.tweetImage)
        Picasso.get().load(responseItemEntity.author?.profileImageUrl).into(binding.avatarImage)
        binding.name.text = responseItemEntity.author?.name ?: ""
        binding.twitterId.text = responseItemEntity.author?.username?.let {"@${it}"} ?: ""
        binding.tweetText.text = responseItemEntity.text ?: ""
        binding.answersCount.text = responseItemEntity.publicMetrics?.replyCount?.toString() ?: ""
        binding.retweetCount.text = responseItemEntity.publicMetrics?.retweetCount?.toString() ?: ""
        binding.likeCount.text = responseItemEntity.publicMetrics?.likeCount?.toString() ?: ""
    }
}