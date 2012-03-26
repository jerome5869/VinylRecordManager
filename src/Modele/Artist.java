package Modele;

// Generated 26 mars 2012 22:26:29 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Artist generated by hbm2java
 */
@Entity
@Table(name = "artist", catalog = "hibernate")
public class Artist implements java.io.Serializable {

	private Integer id;
	private String firstname;
	private String lastname;
	private Set<Soundtrack> soundtracksForAudioEngineer = new HashSet<Soundtrack>(
			0);
	private Set<Soundtrack> soundtracksForLyricsWriter = new HashSet<Soundtrack>(
			0);
	private Set<Soundtrack> soundtracksForMusicWriter = new HashSet<Soundtrack>(
			0);
	private Set<Record> recordsForProducer = new HashSet<Record>(0);
	private Set<Record> recordsForArtist = new HashSet<Record>(0);
	private Set<Soundtrack> soundtracks = new HashSet<Soundtrack>(0);
	private Set<Soundtrack> soundtracksForSinger = new HashSet<Soundtrack>(0);
	private Set<Soundtrack> soundtracks_1 = new HashSet<Soundtrack>(0);

	public Artist() {
	}

	public Artist(String firstname, String lastname) {
		this.firstname = firstname;
		this.lastname = lastname;
	}

	public Artist(String firstname, String lastname,
			Set<Soundtrack> soundtracksForAudioEngineer,
			Set<Soundtrack> soundtracksForLyricsWriter,
			Set<Soundtrack> soundtracksForMusicWriter,
			Set<Record> recordsForProducer, Set<Record> recordsForArtist,
			Set<Soundtrack> soundtracks, Set<Soundtrack> soundtracksForSinger,
			Set<Soundtrack> soundtracks_1) {
		this.firstname = firstname;
		this.lastname = lastname;
		this.soundtracksForAudioEngineer = soundtracksForAudioEngineer;
		this.soundtracksForLyricsWriter = soundtracksForLyricsWriter;
		this.soundtracksForMusicWriter = soundtracksForMusicWriter;
		this.recordsForProducer = recordsForProducer;
		this.recordsForArtist = recordsForArtist;
		this.soundtracks = soundtracks;
		this.soundtracksForSinger = soundtracksForSinger;
		this.soundtracks_1 = soundtracks_1;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "firstname", nullable = false, length = 12)
	public String getFirstname() {
		return this.firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	@Column(name = "lastname", nullable = false, length = 12)
	public String getLastname() {
		return this.lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "artistByAudioEngineer")
	public Set<Soundtrack> getSoundtracksForAudioEngineer() {
		return this.soundtracksForAudioEngineer;
	}

	public void setSoundtracksForAudioEngineer(
			Set<Soundtrack> soundtracksForAudioEngineer) {
		this.soundtracksForAudioEngineer = soundtracksForAudioEngineer;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "artistByLyricsWriter")
	public Set<Soundtrack> getSoundtracksForLyricsWriter() {
		return this.soundtracksForLyricsWriter;
	}

	public void setSoundtracksForLyricsWriter(
			Set<Soundtrack> soundtracksForLyricsWriter) {
		this.soundtracksForLyricsWriter = soundtracksForLyricsWriter;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "artistByMusicWriter")
	public Set<Soundtrack> getSoundtracksForMusicWriter() {
		return this.soundtracksForMusicWriter;
	}

	public void setSoundtracksForMusicWriter(
			Set<Soundtrack> soundtracksForMusicWriter) {
		this.soundtracksForMusicWriter = soundtracksForMusicWriter;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "artistByProducer")
	public Set<Record> getRecordsForProducer() {
		return this.recordsForProducer;
	}

	public void setRecordsForProducer(Set<Record> recordsForProducer) {
		this.recordsForProducer = recordsForProducer;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "artistByArtist")
	public Set<Record> getRecordsForArtist() {
		return this.recordsForArtist;
	}

	public void setRecordsForArtist(Set<Record> recordsForArtist) {
		this.recordsForArtist = recordsForArtist;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "invited_artists", catalog = "hibernate", joinColumns = { @JoinColumn(name = "id_artist", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "id_soundtrack", nullable = false, updatable = false) })
	public Set<Soundtrack> getSoundtracks() {
		return this.soundtracks;
	}

	public void setSoundtracks(Set<Soundtrack> soundtracks) {
		this.soundtracks = soundtracks;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "artistBySinger")
	public Set<Soundtrack> getSoundtracksForSinger() {
		return this.soundtracksForSinger;
	}

	public void setSoundtracksForSinger(Set<Soundtrack> soundtracksForSinger) {
		this.soundtracksForSinger = soundtracksForSinger;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "music_players", catalog = "hibernate", joinColumns = { @JoinColumn(name = "id_artist", nullable = false, updatable = false) }, inverseJoinColumns = { @JoinColumn(name = "id_soundtrack", nullable = false, updatable = false) })
	public Set<Soundtrack> getSoundtracks_1() {
		return this.soundtracks_1;
	}

	public void setSoundtracks_1(Set<Soundtrack> soundtracks_1) {
		this.soundtracks_1 = soundtracks_1;
	}

}
