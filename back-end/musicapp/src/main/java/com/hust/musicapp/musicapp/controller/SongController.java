package com.hust.musicapp.musicapp.controller;

import com.hust.musicapp.musicapp.model.Author;
import com.hust.musicapp.musicapp.model.Song;
import com.hust.musicapp.musicapp.payload.SongResponse;
import com.hust.musicapp.musicapp.payload.SongUploadPayload;
import com.hust.musicapp.musicapp.service.SingerService;
import com.hust.musicapp.musicapp.exception.FileStorageException;
import com.hust.musicapp.musicapp.service.FileStorageService;
import com.hust.musicapp.musicapp.service.SongService;
import com.hust.musicapp.musicapp.service.Userservice;
import com.hust.musicapp.musicapp.util.PageableUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.validation.constraints.NotNull;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

import org.springframework.core.io.Resource;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/songs")//all request starting with /songs go here
@CrossOrigin("*")//enable cross origin resources sharing
public class SongController {
    Logger logger = LoggerFactory.getLogger(SongController.class);
    @Autowired
    private SongService songService;

    @Autowired
    SingerService singerService;

    @Autowired
    private FileStorageService fileStorageService;

    @Autowired
    Userservice userservice;

    @GetMapping("/find-all")
    public ResponseEntity<?> findAll() {
        List<Song> songs = songService.findAll();
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find/find-by-cate-limit-4")
    public ResponseEntity<?> select4RandomByCategory(@RequestParam("id") Long categoryId) {
        List<Song> songs = songService.select4RandomByCategory(categoryId);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }


    @GetMapping("/count/count-all")
    public ResponseEntity<Long> countAll() {
        return ResponseEntity.ok(songService.count());
    }

    @GetMapping("/find-paging")
    public ResponseEntity<?> findPaging(@RequestParam("page") Integer page,
                                        @RequestParam("rows") Integer rows,
                                        @Nullable @RequestParam("orderBy") String order,
                                        @Nullable @RequestParam("direction") String direction) {

        Pageable pageable = PageableUtil.getPageable(page, rows, order, direction);
        List<Song> songs = songService.findAllWithPaging(pageable);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-paging-by-singer")
    public ResponseEntity<?> findPagingBySinger(@RequestParam("page") Integer page,
                                                @RequestParam("rows") Integer rows,
                                                @NotNull @RequestParam("id") Long singerId,
                                                @Nullable @RequestParam("orderBy") String order,
                                                @Nullable @RequestParam("direction") String direction) {

        Pageable pageable = PageableUtil.getPageable(page, rows, order, direction);
        List<Song> songs = songService.findDistinctBySingers(singerId, pageable);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-paging-by-user")
    public ResponseEntity<?> findPagingByUser(@RequestParam("page") Integer page,
                                              @RequestParam("rows") Integer rows,
                                              @NotNull @RequestParam("id") Long userId,
                                              @Nullable @RequestParam("orderBy") String order,
                                              @Nullable @RequestParam("direction") String direction) {

        Pageable pageable = PageableUtil.getPageable(page, rows, order, direction);
        List<Song> songs = songService.findByUserId(userId, pageable);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }
    @GetMapping("/find-paging-likesong-by-user")
    public ResponseEntity<?> findPagingLikeSongByUser(@RequestParam("page") Integer page,
                                              @RequestParam("rows") Integer rows,
                                              @NotNull @RequestParam("id") Long userId,
                                              @Nullable @RequestParam("orderBy") String order,
                                              @Nullable @RequestParam("direction") String direction) {

        Pageable pageable = PageableUtil.getPageable(page, rows, order, direction);
        List<Song> songs = songService.findLikeSongsByUserId(userId,pageable);
        ArrayList<SongResponse> response= new ArrayList<>();
        songs.stream().forEach(song->{
            response.add(new SongResponse(song));
        });
        System.out.println("Size concac"+response.size());
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-paging-by-album")
    public ResponseEntity<?> findPagingByAlbum(@RequestParam("page") Integer page,
                                               @RequestParam("rows") Integer rows,
                                               @NotNull @RequestParam("id") Long albumId,
                                               @Nullable @RequestParam("orderBy") String order,
                                               @Nullable @RequestParam("direction") String direction) {

        Pageable pageable = PageableUtil.getPageable(page, rows, order, direction);
        List<Song> songs = songService.findDistinctByAlbumId(albumId, pageable);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-paging-by-playlist")
    public ResponseEntity<?> findPagingByPlaylist(@RequestParam("page") Integer page,
                                                  @RequestParam("rows") Integer rows,
                                                  @NotNull @RequestParam("id") Long playlistId,
                                                  @Nullable @RequestParam("orderBy") String order,
                                                  @Nullable @RequestParam("direction") String direction) {

        Pageable pageable = PageableUtil.getPageable(page, rows, order, direction);
        List<Song> songs = songService.findDistinctByPlayListsId(playlistId, pageable);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-paging-by-category")
    public ResponseEntity<?> findPagingByCategory(@RequestParam("page") Integer page,
                                                  @RequestParam("rows") Integer rows,
                                                  @NotNull @RequestParam("id") String id,
                                                  @Nullable @RequestParam("orderBy") String order,
                                                  @Nullable @RequestParam("direction") String direction) {

        Pageable pageable = PageableUtil.getPageable(page, rows, order, direction);
        List<Song> songs;
        System.out.println("ID" + id);
        if (id.equals("0")) {
            System.out.println("Here");
            songs = songService.findAllWithPaging(pageable);
        } else {
            songs = songService.findPagingByCategoriesId(id, pageable);
        }
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-by-singer-ids")
    public ResponseEntity<?> findBySingers(@RequestParam("ids") List<Long> ids) {
        List<Song> songs = songService.findBySingerId(ids);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-by-author-ids")
    public ResponseEntity<?> findByAuthors(@RequestParam("ids") List<Long> ids) {
        List<Song> songs = songService.findByAuthorId(ids);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-by-category-ids")
    public ResponseEntity<?> findByCategories(@RequestParam("ids") List<String> ids) {
        List<Song> songs = songService.findByCategoriesId(ids);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-recommended-songs")
    public ResponseEntity<?> findRecommendedSong(@RequestParam("ids") List<String> ids) {
        List<Song> songs = songService.findDistinctByCategoriesIn(ids);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-by-id/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id) {
        Song songs = songService.findById(id);
        return ResponseEntity.ok(new SongResponse(songs));

    }

    @GetMapping("/find-by-name")
    public ResponseEntity<?> findByName(@RequestParam("name") String name) {
        List<Song> songs = songService.findByNameLike(name);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-top-popular-by-singer")
    public ResponseEntity<?> findTopByListenCountAndSingers(@RequestParam("id") Long singerId) {
        List<Song> songs = songService.findTopByListenCountAndSingers(PageRequest.of(0, 4), singerId);
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }


    @PostMapping("/save-songs")
    public ResponseEntity<?> addSong(@RequestBody List<Song> songs) {
        return ResponseEntity.ok(songService.saveAll(songs));
    }

    @PutMapping("/save-songs")
    public ResponseEntity<?> updateSong(@RequestBody List<Song> songs) {
        return ResponseEntity.ok(songService.saveAll(songs));
    }

    @PutMapping("/save-songs-admin/{id}")
    public ResponseEntity<?> updateSongAdmin(@RequestBody SongUploadPayload song, @PathVariable Long id) {
        Song songSave = songService.findById(id);
        songSave.setSongName(song.getSongName());
//        songSave.setThumbnail(song.getThumbnail());
        songSave.setBriefDesciption(song.getBriefDesciption());
        songSave.setAuthors(new HashSet<>(song.getAuthors()));
        songSave.setSingers(new HashSet<>(song.getSingers()));
        songSave.setCategories(new HashSet<>(song.getCategories()));
//        songSave.setSongSrc(song.getSongSrc());
        return ResponseEntity.ok(songService.save(songSave));
    }

    @PostMapping("/users/upload-song")
    public ResponseEntity<?> uploadSong(@RequestBody SongUploadPayload songUploadPayload) {
        Song song
                = new Song();
        song.setSongName(songUploadPayload.getSongName());
        song.setBriefDesciption(songUploadPayload.getBriefDesciption());
        song.setChecked(songUploadPayload.isChecked());
        song.setAuthors(new HashSet<>(songUploadPayload.getAuthors()));
        song.setListenCount(0L);
        song.setSingers(new HashSet<>(songUploadPayload.getSingers()));
        song.setUploadDate(new Date(System.currentTimeMillis()));
        song.setCategories(new HashSet<>(songUploadPayload.getCategories()));
        song.setUser(userservice.findById(songUploadPayload.getUser()).get());
        return ResponseEntity.ok(songService.save(song));
    }

    @DeleteMapping("/delete-song")
    public ResponseEntity<?> deleteSong(@RequestParam("id") Long songId) {
        Song s = songService.findById(songId);
        if (s != null) {
            songService.deleteSong(s);
            return ResponseEntity.ok(s);
        } else return ResponseEntity.notFound().build();
    }

    @GetMapping("/count/get-listen-count")
    public ResponseEntity<?> getListenCount(@RequestParam("songId") Long id) {
        Song song = songService.findById(id);
        if (song == null) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(song.getListenCount());
    }

    @GetMapping("/find-trending")
    public ResponseEntity<?> getSongTrending() {
        return ResponseEntity.ok(songService.getSongTrending());
    }

    @GetMapping("/find-trending-jpa")
    public ResponseEntity<?> getSongTrendingJpa() {
        List<Song> songs = songService.getSongTrending(PageRequest.of(0, 9));
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-newest")
    public ResponseEntity<?> getSongNewest() {
        return ResponseEntity.ok(songService.getNewestSong());
    }

    @PutMapping("/increase-listen-count")
    public ResponseEntity<?> increaseListenCount(@RequestParam("songId") Long songId) {
        Song s = songService.findById(songId);
        s.setListenCount(s.getListenCount() + 1);
        return ResponseEntity.ok(songService.save(s));
    }

    @GetMapping("/find-newest-jpa")
    public ResponseEntity<?> getSongNewestJpa() {
        List<Song> songs = songService.getSongNewestJpa(PageRequest.of(0, 8));
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);

    }

    @GetMapping("/find-lovest-jpa")
    public ResponseEntity<?> getTopFiveSongLovestJpa() {
        List<Song> songs = songService.findTopByLikeCount(PageRequest.of(0, 5));
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);
    }

    @GetMapping("/find-charts")
    public ResponseEntity<?> getChartSongs() {
        return ResponseEntity.ok(songService.getChartSongs());
    }

    @GetMapping("/find-charts-jpa")
    public ResponseEntity<?> getChartSongs(@Nullable @RequestParam("id") String categoryId) {


        if (categoryId == null) {
            List<Song> songs = songService.getChartAll(PageRequest.of(0, 10));
            ArrayList<SongResponse> response = new ArrayList<>();
            songs.stream().forEach(song -> {
                response.add(new SongResponse(song));
            });
            return ResponseEntity.ok(response);
        }
        List<Song> songs = songService.getChartSongs(categoryId, PageRequest.of(0, 10));
        ArrayList<SongResponse> response = new ArrayList<>();
        songs.stream().forEach(song -> {
            response.add(new SongResponse(song));
        });
        return ResponseEntity.ok(response);

    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        sdf.setLenient(true);
        binder.registerCustomEditor(java.sql.Date.class, new CustomDateEditor(sdf, true));
    }

    @PutMapping("/{id}/upload-song")
    public ResponseEntity uploadSong(@RequestParam("file") MultipartFile file, @PathVariable("id") Long id) throws Exception {
        String fileName = "";

        try {
            fileName = fileStorageService.storeFile(file);

        } catch (FileStorageException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        String fileUri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/uploads/")
                .path(fileName).toUriString();
        Song song = songService.findById(id);
        song.setSongSrc(fileUri);
        songService.save(song);
        return ResponseEntity.ok(song);
    }

    @PutMapping("/{id}/upload-image-song")
    public ResponseEntity uploadThumbnail(@RequestParam("file") MultipartFile file, @PathVariable("id") Long id) throws Exception {
        String fileName = "";

        try {
            fileName = fileStorageService.storeFile(file);

        } catch (FileStorageException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        String fileUri = ServletUriComponentsBuilder.fromCurrentContextPath().path("/uploads/")
                .path(fileName).toUriString();
        Song song = songService.findById(id);
        song.setThumbnail(fileUri);
        songService.save(song);

        return ResponseEntity.ok(songService.save(song));
    }

    @GetMapping("downloadSong/{fileName:.+}")
    public ResponseEntity<Resource> downloadSong(@PathVariable String fileName, HttpServletRequest request) {
        Resource resource = fileStorageService.loadFileAsResource(fileName);
        String contentType = null;
        try {
            contentType = request.getServletContext().getMimeType(resource.getFile().getAbsolutePath());
        } catch (IOException e) {
            logger.info("Could not determine file type.");

        }
        if (contentType == null) {
            contentType = "application/octet-stream";
        }
        return ResponseEntity.ok().contentType(MediaType.parseMediaType(contentType))
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
                .body(resource);
    }
}


