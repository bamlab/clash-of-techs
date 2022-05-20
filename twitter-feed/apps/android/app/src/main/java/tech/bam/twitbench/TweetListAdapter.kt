package tech.bam.twitbench

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import tech.bam.twitbench.databinding.TweetItemBinding
import tech.bam.twitbench.model.ResponseItemEntity

private val diffUtil = object: DiffUtil.ItemCallback<ResponseItemEntity>() {
    override fun areItemsTheSame(
        oldItem: ResponseItemEntity,
        newItem: ResponseItemEntity
    ): Boolean {
        return oldItem.id == newItem.id
    }

    override fun areContentsTheSame(
        oldItem: ResponseItemEntity,
        newItem: ResponseItemEntity
    ): Boolean {
        return oldItem == newItem
    }
}
internal class TweetListAdapter : ListAdapter<ResponseItemEntity, TweetViewHolder>(diffUtil) {


    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): TweetViewHolder {
        val view = TweetItemBinding.inflate(
            LayoutInflater.from(parent.context),parent,false
        )
        return TweetViewHolder(view.root)
    }

    override fun onBindViewHolder(holder: TweetViewHolder, position: Int) {
        holder.bind(getItem(position))
    }
}