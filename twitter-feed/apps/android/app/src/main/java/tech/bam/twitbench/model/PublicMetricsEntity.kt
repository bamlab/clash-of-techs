package tech.bam.twitbench.model


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import androidx.annotation.Keep

@Keep
@Serializable
internal data class PublicMetricsEntity(
    @SerialName("like_count")
    val likeCount: Int?,
    @SerialName("quote_count")
    val quoteCount: Int?,
    @SerialName("reply_count")
    val replyCount: Int?,
    @SerialName("retweet_count")
    val retweetCount: Int?
)