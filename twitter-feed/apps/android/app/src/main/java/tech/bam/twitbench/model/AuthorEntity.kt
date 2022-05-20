package tech.bam.twitbench.model


import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable
import androidx.annotation.Keep

@Keep
@Serializable
internal data class AuthorEntity(
    @SerialName("id")
    val id: String?,
    @SerialName("name")
    val name: String?,
    @SerialName("profile_image_url")
    val profileImageUrl: String?,
    @SerialName("username")
    val username: String?
)