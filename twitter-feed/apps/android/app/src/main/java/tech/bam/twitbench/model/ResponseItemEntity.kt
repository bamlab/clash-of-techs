package tech.bam.twitbench.model


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import androidx.annotation.Keep

@Keep
@Serializable
internal data class ResponseItemEntity(
    @SerialName("author")
    val author: AuthorEntity?,
    @SerialName("createdAt")
    val createdAt: String?,
    @SerialName("id")
    val id: String?,
    @SerialName("image")
    val image: ImageEntity? = null,
    @SerialName("public_metrics")
    val publicMetrics: PublicMetricsEntity?,
    @SerialName("text")
    val text: String?
)