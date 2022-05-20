package tech.bam.twitbench.model


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import androidx.annotation.Keep

@Keep
@Serializable
internal data class ImageEntity(
    @SerialName("height")
    val height: Int?,
    @SerialName("media_key")
    val mediaKey: String?,
    @SerialName("type")
    val type: String?,
    @SerialName("url")
    val url: String? = null,
    @SerialName("width")
    val width: Int?
)