package tech.bam.twitbench

import android.view.View
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso
import tech.bam.twitbench.databinding.TweetItemBinding
import tech.bam.twitbench.model.ResponseItemEntity
import java.time.Instant
import java.time.LocalDate
import java.time.LocalDateTime
import java.time.ZoneOffset
import java.time.format.DateTimeFormatter

internal class TweetViewHolder(view: View): RecyclerView.ViewHolder(view) {
    companion object {
        var formatter: DateTimeFormatter = DateTimeFormatter.ofPattern("d MMM")
    }

    val binding = TweetItemBinding.bind(view)

    fun bind(responseItemEntity: ResponseItemEntity) {
        Picasso.get().load(responseItemEntity.image?.url).into(binding.tweetImage)
        Picasso.get().load(responseItemEntity.author?.profileImageUrl).into(binding.avatarImage)
        binding.name.text = responseItemEntity.author?.name ?: ""
        binding.twitterId.text = responseItemEntity.author?.username?.let {"@${it}"} ?: ""
        binding.date.text = formatter.format(LocalDateTime.ofInstant(Instant.parse(responseItemEntity.createdAt),
            ZoneOffset.UTC))
        binding.tweetText.text = responseItemEntity.text ?: ""
        binding.answersCount.text = responseItemEntity.publicMetrics?.replyCount?.toString() ?: ""
        binding.retweetCount.text = responseItemEntity.publicMetrics?.retweetCount?.toString() ?: ""
        binding.likeCount.text = responseItemEntity.publicMetrics?.likeCount?.toString() ?: ""
    }
}