package tech.bam.twitbench

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.DividerItemDecoration
import androidx.recyclerview.widget.LinearLayoutManager
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.json.Json
import tech.bam.twitbench.databinding.ActivityMainBinding
import tech.bam.twitbench.model.ResponseItemEntity


class MainActivity : AppCompatActivity() {
    private val json = Json {
        ignoreUnknownKeys = true
        isLenient = true
    }
    private lateinit var binding: ActivityMainBinding

    private lateinit var adapter: TweetListAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        val view = binding.root
        setContentView(view)

        adapter = TweetListAdapter()
        val layoutManager = LinearLayoutManager(this)
        binding.list.adapter = adapter
        binding.list.layoutManager = layoutManager
        val dividerItemDecoration = DividerItemDecoration(
            this,
            layoutManager.getOrientation()
        )
        binding.list.addItemDecoration(dividerItemDecoration)
    }

    override fun onResume() {
        super.onResume()
        val fileName = "feed.json"
        val jsonString = application.assets.open(fileName).bufferedReader().use{
            it.readText()
        }

        val response: List<ResponseItemEntity> = json.decodeFromString(jsonString)
        adapter.submitList(response)
    }
}