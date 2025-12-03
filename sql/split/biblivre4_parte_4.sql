
--
-- TOC entry 2530 (class 2604 OID 729783)
-- Dependencies: 209 208
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY holding_creation_counter ALTER COLUMN id SET DEFAULT nextval('holding_creation_counter_id_seq'::regclass);


--
-- TOC entry 2541 (class 2604 OID 729784)
-- Dependencies: 213 212
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY lending_fines ALTER COLUMN id SET DEFAULT nextval('lending_fines_id_seq'::regclass);


--
-- TOC entry 2543 (class 2604 OID 729785)
-- Dependencies: 215 214
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY lendings ALTER COLUMN id SET DEFAULT nextval('lendings_id_seq'::regclass);


--
-- TOC entry 2547 (class 2604 OID 729786)
-- Dependencies: 217 216
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY logins ALTER COLUMN id SET DEFAULT nextval('logins_id_seq'::regclass);


--
-- TOC entry 2552 (class 2604 OID 729787)
-- Dependencies: 219 218
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY orders ALTER COLUMN id SET DEFAULT nextval('orders_id_seq'::regclass);


--
-- TOC entry 2560 (class 2604 OID 729788)
-- Dependencies: 227 226
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY reservations ALTER COLUMN id SET DEFAULT nextval('reservations_id_seq'::regclass);


--
-- TOC entry 2570 (class 2604 OID 729789)
-- Dependencies: 233 231
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- TOC entry 2578 (class 2604 OID 729790)
-- Dependencies: 235 234
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY users_types ALTER COLUMN id SET DEFAULT nextval('users_types_id_seq'::regclass);


--
-- TOC entry 2590 (class 2604 OID 729791)
-- Dependencies: 241 240
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY vocabulary_idx_autocomplete ALTER COLUMN id SET DEFAULT nextval('vocabulary_idx_autocomplete_id_seq'::regclass);


--
-- TOC entry 2595 (class 2604 OID 729792)
-- Dependencies: 245 244
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY vocabulary_indexing_groups ALTER COLUMN id SET DEFAULT nextval('vocabulary_indexing_groups_id_seq'::regclass);


--
-- TOC entry 2599 (class 2604 OID 729793)
-- Dependencies: 247 246
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY vocabulary_records ALTER COLUMN id SET DEFAULT nextval('vocabulary_records_id_seq'::regclass);


--
-- TOC entry 2601 (class 2604 OID 729794)
-- Dependencies: 250 249
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY vocabulary_searches ALTER COLUMN id SET DEFAULT nextval('vocabulary_searches_id_seq'::regclass);


--
-- TOC entry 2603 (class 2604 OID 729795)
-- Dependencies: 252 251
-- Name: id; Type: DEFAULT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY z3950_addresses ALTER COLUMN id SET DEFAULT nextval('z3950_addresses_id_seq'::regclass);


--
-- TOC entry 2765 (class 0 OID 729295)
-- Dependencies: 170
-- Data for Name: access_cards; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2766 (class 0 OID 729306)
-- Dependencies: 172
-- Data for Name: access_control; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2767 (class 0 OID 729313)
-- Dependencies: 173
-- Data for Name: authorities_brief_formats; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('100', '${a}_{; }${c}_{ - }${d}', 1, '2014-03-20 12:20:01.029', NULL, '2014-03-20 12:20:01.029', NULL);
INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('670', '${a}', 7, '2014-03-20 12:23:36.822', NULL, '2014-03-20 12:23:36.822', NULL);
INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('400', '${a}', 4, '2014-03-20 12:22:53.502', NULL, '2014-03-20 12:22:53.502', NULL);
INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('410', '${a}', 5, '2014-03-20 12:23:04.503', NULL, '2014-03-20 12:23:04.503', NULL);
INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('411', '${a}', 6, '2014-03-20 12:23:14.566', NULL, '2014-03-20 12:23:14.566', NULL);
INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('110', '${a}_{; }${c}_{ - }${d}
', 2, '2014-03-20 12:22:07.272', NULL, '2014-03-20 12:22:07.272', NULL);
INSERT INTO authorities_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('111', '${a}_{; }${c}_{ - }${d}', 3, '2014-03-20 12:22:40.585', NULL, '2014-03-20 12:22:40.585', NULL);


--
-- TOC entry 2768 (class 0 OID 729321)
-- Dependencies: 174
-- Data for Name: authorities_form_datafields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO authorities_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('100', false, false, '0,1,2,3', '', '100', '2014-02-08 15:21:25.813358', NULL, '2014-02-08 15:21:25.813358', NULL);
INSERT INTO authorities_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('110', false, false, '0,1,2', '', '110', '2014-02-08 15:21:25.813358', NULL, '2014-02-08 15:21:25.813358', NULL);
INSERT INTO authorities_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('111', false, false, '0,1,2', '', '111', '2014-02-08 15:21:25.813358', NULL, '2014-02-08 15:21:25.813358', NULL);
INSERT INTO authorities_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('400', false, true, '', '', '100', '2014-02-08 15:21:25.813358', NULL, '2014-02-08 15:21:25.813358', NULL);
INSERT INTO authorities_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('410', false, true, '', '', '110', '2014-02-08 15:21:25.813358', NULL, '2014-02-08 15:21:25.813358', NULL);
INSERT INTO authorities_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('411', false, true, '', '', '111', '2014-02-08 15:21:25.813358', NULL, '2014-02-08 15:21:25.813358', NULL);
INSERT INTO authorities_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('670', false, true, '', '', '100,110,111', '2014-02-08 15:21:25.813358', NULL, '2014-02-08 15:21:25.813358', NULL);


--
-- TOC entry 2769 (class 0 OID 729331)
-- Dependencies: 175
-- Data for Name: authorities_form_subfields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'a', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'b', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'c', false, true, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'd', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'q', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('400', 'a', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('670', 'a', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('670', 'b', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'a', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'c', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'd', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'e', false, true, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'g', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'k', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'n', false, true, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('411', 'a', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'a', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'b', false, true, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'c', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'd', false, true, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'l', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'n', false, true, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');
INSERT INTO authorities_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('410', 'a', false, false, '2014-02-08 15:26:31.667337', NULL, '2014-02-08 15:26:31.667337', NULL, 'disabled');


--
-- TOC entry 2770 (class 0 OID 729342)
-- Dependencies: 176
-- Data for Name: authorities_idx_autocomplete; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2771 (class 0 OID 729350)
-- Dependencies: 178
-- Data for Name: authorities_idx_fields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2772 (class 0 OID 729356)
-- Dependencies: 179
-- Data for Name: authorities_idx_sort; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2773 (class 0 OID 729362)
-- Dependencies: 180
-- Data for Name: authorities_indexing_groups; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO authorities_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (0, 'all', NULL, false, false, '2014-03-04 11:09:07.241', NULL, '2014-03-04 11:09:07.241', NULL);
INSERT INTO authorities_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (1, 'author', '100_a', true, true, '2014-03-04 11:13:31.512', NULL, '2014-03-04 11:13:31.512', NULL);
INSERT INTO authorities_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (2, 'entity', '110_a', true, false, '2014-03-04 11:13:46.059', NULL, '2014-03-04 11:13:46.059', NULL);
INSERT INTO authorities_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (3, 'event', '111_a', true, false, '2014-03-04 11:14:39.973', NULL, '2014-03-04 11:14:39.973', NULL);
INSERT INTO authorities_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (4, 'other_name', '400_a, 410_a, 411_a', true, false, '2014-03-04 11:14:55.617', NULL, '2014-03-04 11:14:55.617', NULL);


--
-- TOC entry 2774 (class 0 OID 729374)
-- Dependencies: 182
-- Data for Name: authorities_records; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2775 (class 0 OID 729385)
-- Dependencies: 184
-- Data for Name: authorities_search_results; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2776 (class 0 OID 729388)
-- Dependencies: 185
-- Data for Name: authorities_searches; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2777 (class 0 OID 729397)
-- Dependencies: 187
-- Data for Name: backups; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2778 (class 0 OID 729407)
-- Dependencies: 189
-- Data for Name: biblio_brief_formats; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('130', '${a}', 4, '2014-02-01 11:43:41.882279', NULL, '2014-02-01 11:43:41.882279', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('260', '${a}_{: }${b}_{, }${c}', 20, '2014-02-01 12:04:44.576993', NULL, '2014-02-01 12:04:44.576993', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('650', '${a}_{ - }${x}_{ - }${y}_{ - }${z}', 41, '2014-02-01 12:06:20.547937', NULL, '2014-02-01 12:06:20.547937', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('651', '${a}_{ - }${x}_{ - }${y}_{ - }${z}', 42, '2014-02-01 12:06:27.116236', NULL, '2014-02-01 12:06:27.116236', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('699', '${a}_{ - }${x}_{ - }${y}_{ - }${z}', 43, '2014-02-01 12:06:34.276548', NULL, '2014-02-01 12:06:34.276548', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('100', '${a}', 1, '2013-05-11 14:09:22.681914', NULL, '2013-05-11 14:09:22.681914', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('110', '${a}', 2, '2013-05-11 14:09:28.849574', NULL, '2013-05-11 14:09:28.849574', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('111', '${a}', 3, '2013-05-11 14:09:33.10575', NULL, '2013-05-11 14:09:33.10575', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('611', '${a}_{ - }${x}_{ - }${y}_{ - }${z}', 39, '2014-02-01 12:06:02.963596', NULL, '2014-02-01 12:06:02.963596', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('630', '${a}_{ - }${x}_{ - }${y}_{ - }${z}', 40, '2014-02-01 12:06:13.363821', NULL, '2014-02-01 12:06:13.363821', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('306', '${a}', 25, '2014-02-01 12:13:07.424794', NULL, '2014-02-01 12:13:07.424794', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('490', '${a}', 26, '2014-02-01 12:13:12.984999', NULL, '2014-02-01 12:13:12.984999', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('520', '${a}', 27, '2014-02-01 12:13:19.273647', NULL, '2014-02-01 12:13:19.273647', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('020', '${a}', 22, '2014-02-01 12:04:17.840354', NULL, '2014-02-01 12:04:17.840354', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('022', '${a}', 23, '2014-02-01 12:04:24.056557', NULL, '2014-02-01 12:04:24.056557', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('024', '${a}', 24, '2014-02-01 12:04:30.936737', NULL, '2014-02-01 12:04:30.936737', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('245', '${a}_{: }${b}', 11, '2013-05-11 14:09:53.242277', NULL, '2013-05-11 14:09:53.242277', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('256', '${a}', 44, '2014-02-01 12:15:25.005212', NULL, '2014-02-01 12:15:25.005212', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('043', '${a}', 45, '2014-02-01 12:15:33.581457', NULL, '2014-02-01 12:15:33.581457', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('045', '${a}', 46, '2014-02-01 12:15:42.981651', NULL, '2014-02-01 12:15:42.981651', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('255', '${a}', 47, '2014-02-01 12:15:46.853963', NULL, '2014-02-01 12:15:46.853963', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('041', '${a}', 48, '2014-02-01 12:15:50.093832', NULL, '2014-02-01 12:15:50.093832', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('090', '${a}_{ }${b}_{ }${c}_{ }${d}', 49, '2014-02-01 12:05:17.018043', NULL, '2014-02-01 12:05:17.018043', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('310', '${a}', 50, '2014-02-01 12:16:08.046403', NULL, '2014-02-01 12:16:08.046403', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('362', '${a}', 51, '2014-02-01 12:16:11.822932', NULL, '2014-02-01 12:16:11.822932', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('555', '${a}', 52, '2014-02-01 12:16:16.422789', NULL, '2014-02-01 12:16:16.422789', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('852', '${a}', 53, '2014-02-01 12:16:20.998809', NULL, '2014-02-01 12:16:20.998809', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('400', '${a}', 5, '2014-02-01 12:03:15.21457', NULL, '2014-02-01 12:03:15.21457', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('410', '${a}', 6, '2014-02-01 12:03:19.934289', NULL, '2014-02-01 12:03:19.934289', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('411', '${a}', 7, '2014-02-01 12:03:27.070922', NULL, '2014-02-01 12:03:27.070922', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('700', '${a}', 8, '2014-02-01 11:44:15.995588', NULL, '2014-02-01 11:44:15.995588', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('710', '${a}', 9, '2014-02-01 11:44:21.019794', NULL, '2014-02-01 11:44:21.019794', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('711', '${a}', 10, '2014-02-01 11:44:27.579924', NULL, '2014-02-01 11:44:27.579924', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('243', '${a}_{ }${f}', 12, '2014-02-01 12:09:14.089412', NULL, '2014-02-01 12:09:14.089412', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('240', '${a}', 13, '2014-02-01 12:09:24.050018', NULL, '2014-02-01 12:09:24.050018', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('730', '${a}', 14, '2014-02-01 12:09:30.866228', NULL, '2014-02-01 12:09:30.866228', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('740', '${a}_{ }${n}_{ }${p}', 15, '2014-02-01 12:09:44.610667', NULL, '2014-02-01 12:09:44.610667', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('830', '${a}_{ }${v}', 16, '2014-02-01 12:09:56.027131', NULL, '2014-02-01 12:09:56.027131', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('250', '${a}', 17, '2014-02-01 12:10:18.923422', NULL, '2014-02-01 12:10:18.923422', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('257', '${a}', 18, '2014-02-01 12:10:36.436278', NULL, '2014-02-01 12:10:36.436278', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('258', '${a}', 19, '2014-02-01 12:10:41.228113', NULL, '2014-02-01 12:10:41.228113', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('300', '${a}_{ }${b}_{ }${c}_{ }${e}', 21, '2014-02-01 12:12:58.160709', NULL, '2014-02-01 12:12:58.160709', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('080', '${a}_{ }_{2}', 54, '2014-02-01 12:16:38.015323', NULL, '2014-02-01 12:16:38.015323', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('082', '${a}_{ }_{2}', 55, '2014-02-01 12:17:24.376916', NULL, '2014-02-01 12:17:24.376916', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('013', '${a}_{; }${b}_{; }${c}_{; }${d}_{; }${e}_{; }${f}', 56, '2014-02-01 12:18:17.042647', NULL, '2014-02-01 12:18:17.042647', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('095', '${a}', 57, '2014-02-01 12:18:25.330589', NULL, '2014-02-01 12:18:25.330589', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('500', '${a}', 28, '2014-02-01 12:13:34.913539', NULL, '2014-02-01 12:13:34.913539', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('504', '${a}', 29, '2014-02-01 12:13:43.050064', NULL, '2014-02-01 12:13:43.050064', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('505', '${a}', 30, '2014-02-01 12:13:49.402136', NULL, '2014-02-01 12:13:49.402136', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('521', '${a}', 31, '2014-02-01 12:13:56.762462', NULL, '2014-02-01 12:13:56.762462', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('534', '${a}', 32, '2014-02-01 12:14:02.570381', NULL, '2014-02-01 12:14:02.570381', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('590', '${a}', 33, '2014-02-01 12:14:06.138512', NULL, '2014-02-01 12:14:06.138512', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('502', '${a}', 34, '2014-02-01 12:14:11.876239', NULL, '2014-02-01 12:14:11.876239', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('506', '${a}', 35, '2014-02-01 12:14:17.131068', NULL, '2014-02-01 12:14:17.131068', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('876', '${h}', 36, '2014-02-01 12:14:30.355534', NULL, '2014-02-01 12:14:30.355534', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('600', '${a}_{ - }${x}_{ - }${y}_{ - }${z}', 37, '2014-02-01 12:05:47.099015', NULL, '2014-02-01 12:05:47.099015', NULL);
INSERT INTO biblio_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('610', '${a}_{ - }${x}_{ - }${y}_{ - }${z}', 38, '2014-02-01 12:05:55.971671', NULL, '2014-02-01 12:05:55.971671', NULL);


--
-- TOC entry 2779 (class 0 OID 729415)
-- Dependencies: 190
-- Data for Name: biblio_form_datafields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('013', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('020', false, false, '', '', 'book', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('022', false, false, '', '', 'book,periodic,articles', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('029', false, true, '', '', 'score,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('040', false, false, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('045', false, false, '_,0,1,2', '', 'map', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('080', false, false, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('082', false, false, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('255', false, true, '', '', 'map', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('090', false, false, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('095', false, false, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('100', false, false, '1,0,2,3', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('110', false, false, '0,1,2', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('111', false, false, '0,1,2', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('245', false, false, '1,0', '0,1,2,3,4,5,6,7,8,9', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('250', false, false, '', '', 'book,thesis', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('256', false, false, '', '', 'computer_legible', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('257', false, false, '', '', 'movie', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('258', false, false, '', '', 'photo', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('260', false, true, '', '', 'book,manuscript,thesis,computer_legible,map,movie,score,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('300', false, false, '', '', 'book,manuscript,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('306', false, true, '', '', 'movie,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('340', false, true, '', '', 'map', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('342', false, true, '0,1', '0,1,2,3,4,5,6,7,8', 'map', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('343', false, true, '', '', 'map', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('490', false, true, '0,1', '', 'book,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('500', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('501', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('502', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('504', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('505', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('520', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('521', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('530', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('534', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('590', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('595', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('600', false, true, '0,1,2,3', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('610', false, true, '0,1,2', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('611', false, true, '0,1,2', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('650', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('651', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('700', false, true, '1,0,2,3', '_,2', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('710', false, true, '0,1,2', '_,2', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('711', false, true, '0,1,2', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('856', false, true, '', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('630', false, true, '0,1,2,3,4,5,6,7,8,9', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('730', false, true, '0,1,2,3,4,5,6,7,8,9', '_,2', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('740', false, true, '0,1,2,3,4,5,6,7,8,9', '_,2', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('043', false, false, '', '', 'map,periodic', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('830', false, true, '', '0,1,2,3,4,5,6,7,8,9', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('041', false, true, '0,1', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('240', false, false, '1,0', '0,1,2,3,4,5,6,7,8,9', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('243', false, false, '1,0', '0,1,2,3,4,5,6,7,8,9', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('130', false, false, '0,1,2,3,4,5,6,7,8,9', '', 'book,manuscript,pamphlet,thesis,computer_legible,map,movie,score,object_3d,photo,periodic,articles,music,nonmusical_sound', '2013-04-13 13:42:03.23405', NULL, '2013-04-13 13:42:03.23405', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('210', false, true, '0,1', '_,0', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('246', false, true, '0,1,2,3', '_,0,1,2,3,4,5,6,7,8', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('310', false, false, '', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('321', false, false, '', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('362', false, true, '0,1', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('515', false, true, '', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('525', false, true, '', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('550', false, true, '', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('555', false, true, '_,0,8', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('580', false, true, '', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);
INSERT INTO biblio_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('947', false, true, '', '', 'periodic', '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL);


--
-- TOC entry 2780 (class 0 OID 729425)
-- Dependencies: 191
-- Data for Name: biblio_form_subfields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('013', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('013', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('013', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('013', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('013', 'e', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('013', 'f', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('020', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('022', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('029', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('040', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('040', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('041', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('041', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('041', 'h', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('043', 'a', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('045', 'a', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('045', 'b', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('045', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('080', '2', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('080', 'a', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('082', '2', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('082', 'a', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('090', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('090', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('090', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('095', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'fixed_table');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'authorities');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('100', 'q', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'authorities');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'b', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('110', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'e', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('111', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('130', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('130', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('130', 'f', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('130', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('130', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('130', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('130', 'p', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'b', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'f', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('243', 'f', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('243', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('243', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('243', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('245', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('245', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('245', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('245', 'h', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('245', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('245', 'p', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('250', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('250', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('255', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('256', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('257', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('258', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('258', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('260', 'a', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('260', 'b', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('260', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('243', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'p', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('240', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('260', 'e', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('260', 'f', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('260', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('300', 'a', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('300', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('300', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('300', 'e', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('306', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('340', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('340', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('340', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('340', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('340', 'e', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('342', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('342', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('342', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('342', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('343', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('343', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('490', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('490', 'v', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('500', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('501', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('502', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('504', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('505', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('520', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('520', 'u', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('521', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('530', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('534', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('590', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('595', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('595', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'q', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 't', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'x', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'y', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('600', 'z', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'b', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 't', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'x', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'y', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('610', 'z', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'e', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 't', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'x', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'y', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('611', 'z', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'f', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'p', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'x', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'y', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('630', 'z', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('650', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('650', 'x', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('650', 'y', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('650', 'z', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('651', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('651', 'x', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('651', 'y', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('651', 'z', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 'b', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 'c', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 'e', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 'q', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('700', 't', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 'b', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('710', 't', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 'c', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 'e', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('711', 't', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'd', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'f', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'g', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'k', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'l', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'p', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'x', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'y', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('730', 'z', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('740', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('740', 'n', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('740', 'p', false, true, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('830', 'a', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('830', 'v', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'd', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'f', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'u', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'y', false, false, '2013-04-13 13:43:11.351056', NULL, '2013-04-13 13:43:11.351056', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('210', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('210', 'b', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'b', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'f', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'g', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'h', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'i', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'n', false, true, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('246', 'p', false, true, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('310', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('310', 'b', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('321', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('321', 'b', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('362', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('362', 'z', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('515', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('525', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('550', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('555', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('555', 'b', false, true, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('555', 'c', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('555', 'd', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('555', 'u', false, true, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('555', '3', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('580', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'a', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'b', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'c', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'd', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'e', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'f', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'g', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'i', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'j', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'k', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'l', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'm', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'n', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'o', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'p', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'q', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'r', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 's', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 't', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'u', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');
INSERT INTO biblio_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('947', 'z', false, false, '2014-04-28 19:25:12.931', 1, '2014-04-28 19:25:12.931', NULL, 'disabled');


--
-- TOC entry 2781 (class 0 OID 729436)
-- Dependencies: 192
-- Data for Name: biblio_holdings; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2782 (class 0 OID 729449)
-- Dependencies: 194
-- Data for Name: biblio_idx_autocomplete; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2783 (class 0 OID 729457)
-- Dependencies: 196
-- Data for Name: biblio_idx_fields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2784 (class 0 OID 729463)
-- Dependencies: 197
-- Data for Name: biblio_idx_sort; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2785 (class 0 OID 729469)
-- Dependencies: 198
-- Data for Name: biblio_indexing_groups; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO biblio_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (4, 'subject', '650_a_x_y_z,600_a_x_y_z,610_a_x_y_z,611_a_x_y_z,630_a_x_y_z,651_a_x_y_z,699_a_x_y_z', false, false, '2013-04-13 13:45:00.977717', NULL, '2013-04-13 13:45:00.977717', NULL);
INSERT INTO biblio_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (5, 'isbn', '020_a', false, false, '2013-04-13 13:45:00.977717', NULL, '2013-04-13 13:45:00.977717', NULL);
INSERT INTO biblio_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (6, 'issn', '022_a', false, false, '2013-04-13 13:45:00.977717', NULL, '2013-04-13 13:45:00.977717', NULL);
INSERT INTO biblio_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (1, 'author', '100_a,110_a,111_a,700_a,710_a,711_a', true, false, '2013-04-13 13:45:00.977717', NULL, '2013-04-13 13:45:00.977717', NULL);
INSERT INTO biblio_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (0, 'all', NULL, false, false, '2013-04-13 13:45:00.977717', NULL, '2013-04-13 13:45:00.977717', NULL);
INSERT INTO biblio_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (3, 'title', '245_a_b,243_a_f,240_a,730_a,740_a_n_p,830_a_v,250_a', true, true, '2013-04-13 13:45:00.977717', NULL, '2013-04-13 13:45:00.977717', NULL);
INSERT INTO biblio_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (2, 'year', '260_c', true, false, '2013-04-13 13:45:00.977717', NULL, '2013-04-13 13:45:00.977717', NULL);


--
-- TOC entry 2786 (class 0 OID 729481)
-- Dependencies: 200
-- Data for Name: biblio_records; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2787 (class 0 OID 729492)
-- Dependencies: 202
-- Data for Name: biblio_search_results; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2788 (class 0 OID 729495)
-- Dependencies: 203
-- Data for Name: biblio_searches; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2789 (class 0 OID 729504)
-- Dependencies: 205
-- Data for Name: configurations; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('setup.new_library', 'true', 'boolean', false, '2014-05-28 22:01:58.228421', 0);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.business_days', '2,3,4,5,6,7', 'string', true, '2014-02-22 17:07:33.380256', 1);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.default_language', 'pt-BR', 'string', true, '2014-02-22 17:18:48.852604', 1);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.title', 'Biblivre IV', 'string', true, '2014-02-22 17:01:57.071056', 1);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('administration.z3950.server.active', 'true', 'boolean', true, '2014-04-07 19:58:15.127', 1);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('circulation.lending_receipt.printer.type', 'printer_common', 'string', false, '2014-04-14 15:27:14.339', 1);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.backup_path', '', 'string', false, '2014-04-07 19:15:49.925', 1);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.pg_dump_path', '', 'string', false, '2014-04-07 19:15:49.925', 1);
-- INSERT INTO configurations (key, value, type, required, modified, modified_by) VALUES ('general.psql_path', '', 'string', false, '2014-04-07 19:15:49.925', 1);

--
-- TOC entry 2790 (class 0 OID 729513)
-- Dependencies: 206
-- Data for Name: digital_media; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2791 (class 0 OID 729522)
-- Dependencies: 208
-- Data for Name: holding_creation_counter; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2792 (class 0 OID 729528)
-- Dependencies: 210
-- Data for Name: holding_form_datafields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO holding_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('949', false, false, '', '', 'holdings', '2014-02-08 15:07:07.222864', NULL, '2014-02-08 15:07:07.222864', NULL);
INSERT INTO holding_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('541', false, true, '_,0,1', '', 'holdings', '2014-02-08 15:07:07.222864', NULL, '2014-02-08 15:07:07.222864', NULL);
INSERT INTO holding_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('090', false, false, '', '', 'holdings', '2014-02-08 15:07:07.222864', NULL, '2014-02-08 15:07:07.222864', NULL);
INSERT INTO holding_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('852', false, true, '_,0,1,2,4,5,6,8', '0,1,2', 'holdings', '2014-02-08 15:07:07.222864', NULL, '2014-02-08 15:07:07.222864', NULL);
INSERT INTO holding_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('856', false, true, '', '', 'holdings', '2014-02-08 15:07:07.222864', NULL, '2014-02-08 15:07:07.222864', NULL);


--
-- TOC entry 2793 (class 0 OID 729538)
-- Dependencies: 211
-- Data for Name: holding_form_subfields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('949', 'a', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'a', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'b', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'c', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'd', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'e', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'f', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'h', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'n', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', 'o', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('541', '3', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('090', 'a', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('090', 'b', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('090', 'c', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('090', 'd', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'a', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'b', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'c', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'e', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'j', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'n', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'q', false, false, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'x', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('852', 'z', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'd', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'f', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'u', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');
INSERT INTO holding_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('856', 'y', false, true, '2014-02-08 15:10:19.847594', NULL, '2014-02-08 15:10:19.847594', NULL, 'disabled');


--
-- TOC entry 2794 (class 0 OID 729549)
-- Dependencies: 212
-- Data for Name: lending_fines; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2795 (class 0 OID 729555)
-- Dependencies: 214
-- Data for Name: lendings; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2796 (class 0 OID 729561)
-- Dependencies: 216
-- Data for Name: logins; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO logins (id, login, employee, password, created, created_by, modified, modified_by) VALUES (1, 'admin', true, 'C4wx3TpMHnSwdk1bUQ/V6qwAQmw=', '2014-05-18 15:46:31.632', 1, '2014-05-18 15:46:31.632', NULL);


--
-- TOC entry 2797 (class 0 OID 729572)
-- Dependencies: 218
-- Data for Name: orders; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2798 (class 0 OID 729584)
-- Dependencies: 220
-- Data for Name: permissions; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2799 (class 0 OID 729589)
-- Dependencies: 222
-- Data for Name: quotations; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2800 (class 0 OID 729600)
-- Dependencies: 224
-- Data for Name: request_quotation; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2801 (class 0 OID 729606)
-- Dependencies: 225
-- Data for Name: requests; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2802 (class 0 OID 729615)
-- Dependencies: 226
-- Data for Name: reservations; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2803 (class 0 OID 729623)
-- Dependencies: 229
-- Data for Name: suppliers; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2804 (class 0 OID 729632)
-- Dependencies: 230
-- Data for Name: translations; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2805 (class 0 OID 729641)
-- Dependencies: 231
-- Data for Name: users; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2806 (class 0 OID 729650)
-- Dependencies: 232
-- Data for Name: users_fields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('email', 'string', true, 0, 1, '2013-04-13 13:47:34.765388', NULL, '2013-04-13 13:47:34.765388', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('gender', 'list', false, 2, 2, '2014-06-07 12:51:14.565458', NULL, '2014-06-07 12:51:14.565458', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('phone_cel', 'string', false, 25, 3, '2014-06-07 12:47:50.811875', NULL, '2014-06-07 12:47:50.811875', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('phone_home', 'string', false, 25, 4, '2014-06-07 12:47:33.283702', NULL, '2014-06-07 12:47:33.283702', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('phone_work', 'string', false, 25, 5, '2014-06-07 12:47:42.779511', NULL, '2014-06-07 12:47:42.779511', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('obs', 'text', false, 0, 1002, '2013-04-13 13:47:34.765388', NULL, '2013-04-13 13:47:34.765388', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('id_cpf', 'string', false, 20, 8, '2014-06-07 12:46:47.409991', NULL, '2014-06-07 12:46:47.409991', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('address', 'string', false, 500, 9, '2014-06-07 12:41:23.221671', NULL, '2014-06-07 12:41:23.221671', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('address_number', 'string', false, 100, 10, '2014-06-07 12:42:30.610671', NULL, '2014-06-07 12:42:30.610671', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('address_complement', 'string', false, 100, 11, '2014-06-07 12:44:27.624027', NULL, '2014-06-07 12:44:27.624027', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('address_zip', 'string', false, 20, 12, '2014-06-07 12:45:05.425222', NULL, '2014-06-07 12:45:05.425222', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('address_city', 'string', false, 100, 13, '2014-06-07 12:45:21.458004', NULL, '2014-06-07 12:45:21.458004', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('address_state', 'string', false, 100, 14, '2014-06-07 12:45:31.657995', NULL, '2014-06-07 12:45:31.657995', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('birthday', 'date', false, 0, 15, '2014-06-07 12:50:08.933974', NULL, '2014-06-07 12:50:08.933974', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('id_rg', 'string', false, 20, 7, '2014-06-07 12:46:30.386262', NULL, '2014-06-07 12:46:30.386262', NULL);
INSERT INTO users_fields (key, type, required, max_length, sort_order, created, created_by, modified, modified_by) VALUES ('phone_work_extension', 'string', false, 10, 6, '2014-06-07 12:53:42.743594', NULL, '2014-06-07 12:53:42.743594', NULL);


--
-- TOC entry 2807 (class 0 OID 729662)
-- Dependencies: 234
-- Data for Name: users_types; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO users_types (id, name, description, lending_limit, reservation_limit, lending_time_limit, reservation_time_limit, fine_value, created, created_by, modified, modified_by) VALUES (1, 'Leitor', 'Leitores', 3, 3, 15, 10, 0, '2014-05-18 15:46:31.379', 1, '2014-05-18 15:46:31.379', NULL);
INSERT INTO users_types (id, name, description, lending_limit, reservation_limit, lending_time_limit, reservation_time_limit, fine_value, created, created_by, modified, modified_by) VALUES (2, 'FuncionÃ¡rio', 'FuncionÃ¡rios', 99, 99, 365, 365, 0, '2014-05-18 15:46:31.379', 1, '2014-05-18 15:46:31.379', NULL);


--
-- TOC entry 2808 (class 0 OID 729673)
-- Dependencies: 236
-- Data for Name: users_values; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2809 (class 0 OID 729679)
-- Dependencies: 237
-- Data for Name: vocabulary_brief_formats; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('040', '${a}_{- }${b}', 1, '2014-03-20 12:26:27.691', NULL, '2014-03-20 12:26:27.691', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('150', '${a}_{- }${i}_{; }${x}', 2, '2014-03-20 12:28:43.529', NULL, '2014-03-20 12:28:43.529', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('450', '${a}_{; }${x}', 4, '2014-03-20 12:29:58.601', NULL, '2014-03-20 12:29:58.601', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('550', '${a}_{; }${x}', 5, '2014-03-20 12:30:37.837', NULL, '2014-03-20 12:30:37.837', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('670', '${a}', 6, '2014-03-20 12:30:52.156', NULL, '2014-03-20 12:30:52.156', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('680', '${a}', 7, '2014-03-20 12:31:13.64', NULL, '2014-03-20 12:31:13.64', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('685', '${a}', 8, '2014-03-20 12:31:24.135', NULL, '2014-03-20 12:31:24.135', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('750', '${a}_{; }${x}_{; }${y}_{; }${z}', 9, '2014-03-20 12:32:37.881', NULL, '2014-03-20 12:32:37.881', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('913', '${a}', 10, '2014-03-20 12:32:57.598', NULL, '2014-03-20 12:32:57.598', NULL);
INSERT INTO vocabulary_brief_formats (datafield, format, sort_order, created, created_by, modified, modified_by) VALUES ('360', '${a}_{; }${x}', 3, '2014-03-20 13:03:12.684', NULL, '2014-03-20 13:03:12.684', NULL);


--
-- TOC entry 2810 (class 0 OID 729687)
-- Dependencies: 238
-- Data for Name: vocabulary_form_datafields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('040', false, false, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('150', false, false, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('450', false, true, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('550', false, true, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('360', false, true, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('670', false, false, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('680', false, true, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('685', false, true, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('750', false, false, '0,1,2', '0,4', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);
INSERT INTO vocabulary_form_datafields (datafield, collapsed, repeatable, indicator_1, indicator_2, material_type, created, created_by, modified, modified_by) VALUES ('913', false, false, '', '', '', '2014-02-08 15:29:41.844864', NULL, '2014-02-08 15:29:41.844864', NULL);


--
-- TOC entry 2811 (class 0 OID 729697)
-- Dependencies: 239
-- Data for Name: vocabulary_form_subfields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('040', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('040', 'b', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('040', 'c', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('040', 'd', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('040', 'e', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('150', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('150', 'i', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('150', 'x', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('150', 'y', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('150', 'z', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('450', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('550', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('550', 'x', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('550', 'y', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('550', 'z', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('360', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('360', 'x', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('360', 'y', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('360', 'z', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('670', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('680', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('685', 'i', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('750', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('750', 'x', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('750', 'y', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('750', 'z', false, true, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');
INSERT INTO vocabulary_form_subfields (datafield, subfield, collapsed, repeatable, created, created_by, modified, modified_by, autocomplete_type) VALUES ('913', 'a', false, false, '2014-02-08 15:30:23.272565', NULL, '2014-02-08 15:30:23.272565', NULL, 'disabled');


--
-- TOC entry 2812 (class 0 OID 729708)
-- Dependencies: 240
-- Data for Name: vocabulary_idx_autocomplete; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2813 (class 0 OID 729716)
-- Dependencies: 242
-- Data for Name: vocabulary_idx_fields; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2814 (class 0 OID 729722)
-- Dependencies: 243
-- Data for Name: vocabulary_idx_sort; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2815 (class 0 OID 729728)
-- Dependencies: 244
-- Data for Name: vocabulary_indexing_groups; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO vocabulary_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (0, 'all', NULL, false, false, '2014-03-04 11:16:16.428', NULL, '2014-03-04 11:16:16.428', NULL);
INSERT INTO vocabulary_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (1, 'te_term', '150_a', true, true, '2014-03-04 11:16:31.24', NULL, '2014-03-04 11:16:31.24', NULL);
INSERT INTO vocabulary_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (2, 'up_term', '450_a', true, false, '2014-03-04 11:16:48.069', NULL, '2014-03-04 11:16:48.069', NULL);
INSERT INTO vocabulary_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (3, 'tg_term', '550_a', true, false, '2014-03-04 11:16:59.899', NULL, '2014-03-04 11:16:59.899', NULL);
INSERT INTO vocabulary_indexing_groups (id, translation_key, datafields, sortable, default_sort, created, created_by, modified, modified_by) VALUES (4, 'vt_ta_term', '360_a', true, false, '2014-03-04 11:17:18.848', NULL, '2014-03-04 11:17:18.848', NULL);


--
-- TOC entry 2816 (class 0 OID 729740)
-- Dependencies: 246
-- Data for Name: vocabulary_records; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2817 (class 0 OID 729751)
-- Dependencies: 248
-- Data for Name: vocabulary_search_results; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2818 (class 0 OID 729754)
-- Dependencies: 249
-- Data for Name: vocabulary_searches; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--



--
-- TOC entry 2819 (class 0 OID 729763)
-- Dependencies: 251
-- Data for Name: z3950_addresses; Type: TABLE DATA; Schema: bib4template; Owner: biblivre
--

INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (1, 'Universidad de Chile - Santiago, Chile', 'unicornio.uchile.cl', 2200, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (2, 'UniversitÃ© Laval - Quebec, CanadÃ¡', 'ariane2.ulaval.ca', 2200, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (3, 'Brunel University - Londres, Reino Unido', 'library.brunel.ac.uk', 2200, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (4, 'Acadia University - Nova EscÃ³cia, Canada', 'jasper.acadiau.ca', 2200, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (5, 'Carnegie Mellon University - Pittsburgh, PA - EUA', 'webcat.library.cmu.edu', 2200, 'unicorn');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (6, 'New York Public Library - EUA', 'catalog.nypl.org', 210, 'INNOPAC');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (7, 'Biblioteca Nacional da Espanha - Madrid', 'sigb.bne.es', 2200, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (8, 'Library of Congress Online Catalog - EUA', '140.147.249.67', 210, 'LCDB');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (9, 'South University New Orleans, EUA', 'suno.louislibraries.org', 7705, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (10, 'Penn State University, EUA', 'zcat.libraries.psu.edu', 2200, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (11, 'The Fletcher School, Tufts University, EUA', 'fletcher.louislibraries.org', 8205, 'default');
INSERT INTO z3950_addresses (id, name, url, port, collection) VALUES (12, 'Univerdidad de Madrid, Espanha', 'marte.biblioteca.upm.es', 2200, 'default');


--
-- TOC entry 2605 (class 2606 OID 729797)
-- Dependencies: 170 170
-- Name: PK_access_cards; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY access_cards
    ADD CONSTRAINT "PK_access_cards" PRIMARY KEY (id);


--
-- TOC entry 2611 (class 2606 OID 729799)
-- Dependencies: 172 172
-- Name: PK_access_control; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY access_control
    ADD CONSTRAINT "PK_access_control" PRIMARY KEY (id);


--
-- TOC entry 2614 (class 2606 OID 729801)
-- Dependencies: 173 173
-- Name: PK_authorities_brief_formats; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_brief_formats
    ADD CONSTRAINT "PK_authorities_brief_formats" PRIMARY KEY (datafield);


--
-- TOC entry 2616 (class 2606 OID 729803)
-- Dependencies: 174 174
-- Name: PK_authorities_form_datafields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_form_datafields
    ADD CONSTRAINT "PK_authorities_form_datafields" PRIMARY KEY (datafield);


--
-- TOC entry 2618 (class 2606 OID 729805)
-- Dependencies: 175 175 175
-- Name: PK_authorities_form_subfields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_form_subfields
    ADD CONSTRAINT "PK_authorities_form_subfields" PRIMARY KEY (datafield, subfield);


--
-- TOC entry 2622 (class 2606 OID 729807)
-- Dependencies: 176 176
-- Name: PK_authorities_idx_autocomplete; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_idx_autocomplete
    ADD CONSTRAINT "PK_authorities_idx_autocomplete" PRIMARY KEY (id);


--
-- TOC entry 2625 (class 2606 OID 729809)
-- Dependencies: 178 178 178 178 178
-- Name: PK_authorities_idx_fields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_idx_fields
    ADD CONSTRAINT "PK_authorities_idx_fields" PRIMARY KEY (record_id, indexing_group_id, word, datafield);


--
-- TOC entry 2627 (class 2606 OID 729811)
-- Dependencies: 179 179 179
-- Name: PK_authorities_idx_sort; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_idx_sort
    ADD CONSTRAINT "PK_authorities_idx_sort" PRIMARY KEY (record_id, indexing_group_id);


--
-- TOC entry 2629 (class 2606 OID 729813)
-- Dependencies: 180 180
-- Name: PK_authorities_indexing_groups; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_indexing_groups
    ADD CONSTRAINT "PK_authorities_indexing_groups" PRIMARY KEY (id);


--
-- TOC entry 2631 (class 2606 OID 729815)
-- Dependencies: 182 182
-- Name: PK_authorities_records; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_records
    ADD CONSTRAINT "PK_authorities_records" PRIMARY KEY (id);


--
-- TOC entry 2634 (class 2606 OID 729817)
-- Dependencies: 184 184 184 184
-- Name: PK_authorities_search_results; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_search_results
    ADD CONSTRAINT "PK_authorities_search_results" PRIMARY KEY (search_id, indexing_group_id, record_id);


--
-- TOC entry 2636 (class 2606 OID 729819)
-- Dependencies: 185 185
-- Name: PK_authorities_searches; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY authorities_searches
    ADD CONSTRAINT "PK_authorities_searches" PRIMARY KEY (id);


--
-- TOC entry 2638 (class 2606 OID 729821)
-- Dependencies: 187 187
-- Name: PK_backups; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY backups
    ADD CONSTRAINT "PK_backups" PRIMARY KEY (id);


--
-- TOC entry 2640 (class 2606 OID 729823)
-- Dependencies: 189 189
-- Name: PK_biblio_brief_formats; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_brief_formats
    ADD CONSTRAINT "PK_biblio_brief_formats" PRIMARY KEY (datafield);


--
-- TOC entry 2642 (class 2606 OID 729825)
-- Dependencies: 190 190
-- Name: PK_biblio_form_datafields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_form_datafields
    ADD CONSTRAINT "PK_biblio_form_datafields" PRIMARY KEY (datafield);


--
-- TOC entry 2644 (class 2606 OID 729827)
-- Dependencies: 191 191 191
-- Name: PK_biblio_form_subfields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_form_subfields
    ADD CONSTRAINT "PK_biblio_form_subfields" PRIMARY KEY (datafield, subfield);


--
-- TOC entry 2653 (class 2606 OID 729829)
-- Dependencies: 194 194
-- Name: PK_biblio_idx_autocomplete; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_idx_autocomplete
    ADD CONSTRAINT "PK_biblio_idx_autocomplete" PRIMARY KEY (id);


--
-- TOC entry 2656 (class 2606 OID 729831)
-- Dependencies: 196 196 196 196 196
-- Name: PK_biblio_idx_fields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_idx_fields
    ADD CONSTRAINT "PK_biblio_idx_fields" PRIMARY KEY (record_id, indexing_group_id, word, datafield);


--
-- TOC entry 2658 (class 2606 OID 729833)
-- Dependencies: 197 197 197
-- Name: PK_biblio_idx_sort; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_idx_sort
    ADD CONSTRAINT "PK_biblio_idx_sort" PRIMARY KEY (record_id, indexing_group_id);


--
-- TOC entry 2660 (class 2606 OID 729835)
-- Dependencies: 198 198
-- Name: PK_biblio_indexing_groups; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_indexing_groups
    ADD CONSTRAINT "PK_biblio_indexing_groups" PRIMARY KEY (id);


--
-- TOC entry 2662 (class 2606 OID 729837)
-- Dependencies: 200 200
-- Name: PK_biblio_records; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_records
    ADD CONSTRAINT "PK_biblio_records" PRIMARY KEY (id);


--
-- TOC entry 2665 (class 2606 OID 729839)
-- Dependencies: 202 202 202 202
-- Name: PK_biblio_search_results; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_search_results
    ADD CONSTRAINT "PK_biblio_search_results" PRIMARY KEY (search_id, indexing_group_id, record_id);


--
-- TOC entry 2667 (class 2606 OID 729841)
-- Dependencies: 203 203
-- Name: PK_biblio_searches; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_searches
    ADD CONSTRAINT "PK_biblio_searches" PRIMARY KEY (id);


--
-- TOC entry 2669 (class 2606 OID 729843)
-- Dependencies: 205 205
-- Name: PK_configurations; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY configurations
    ADD CONSTRAINT "PK_configurations" PRIMARY KEY (key);


--
-- TOC entry 2671 (class 2606 OID 729845)
-- Dependencies: 206 206
-- Name: PK_digital_media; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY digital_media
    ADD CONSTRAINT "PK_digital_media" PRIMARY KEY (id);


--
-- TOC entry 2673 (class 2606 OID 729847)
-- Dependencies: 208 208
-- Name: PK_holding_creation_counter; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY holding_creation_counter
    ADD CONSTRAINT "PK_holding_creation_counter" PRIMARY KEY (id);


--
-- TOC entry 2675 (class 2606 OID 729849)
-- Dependencies: 210 210
-- Name: PK_holding_form_datafields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY holding_form_datafields
    ADD CONSTRAINT "PK_holding_form_datafields" PRIMARY KEY (datafield);


--
-- TOC entry 2677 (class 2606 OID 729851)
-- Dependencies: 211 211 211
-- Name: PK_holding_form_subfields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY holding_form_subfields
    ADD CONSTRAINT "PK_holding_form_subfields" PRIMARY KEY (datafield, subfield);


--
-- TOC entry 2679 (class 2606 OID 729853)
-- Dependencies: 212 212
-- Name: PK_lending_fines; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY lending_fines
    ADD CONSTRAINT "PK_lending_fines" PRIMARY KEY (id);


--
-- TOC entry 2683 (class 2606 OID 729855)
-- Dependencies: 216 216
-- Name: PK_logins; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY logins
    ADD CONSTRAINT "PK_logins" PRIMARY KEY (id);


--
-- TOC entry 2687 (class 2606 OID 729857)
-- Dependencies: 218 218
-- Name: PK_order; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT "PK_order" PRIMARY KEY (id);


--
-- TOC entry 2689 (class 2606 OID 729859)
-- Dependencies: 220 220 220
-- Name: PK_permissions; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT "PK_permissions" PRIMARY KEY (login_id, permission);


--
-- TOC entry 2691 (class 2606 OID 729861)
-- Dependencies: 222 222
-- Name: PK_quotations; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY quotations
    ADD CONSTRAINT "PK_quotations" PRIMARY KEY (id);


--
-- TOC entry 2695 (class 2606 OID 729863)
-- Dependencies: 225 225
-- Name: PK_request; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY requests
    ADD CONSTRAINT "PK_request" PRIMARY KEY (id);


--
-- TOC entry 2693 (class 2606 OID 729865)
-- Dependencies: 224 224 224
-- Name: PK_request_quotation; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY request_quotation
    ADD CONSTRAINT "PK_request_quotation" PRIMARY KEY (request_id, quotation_id);


--
-- TOC entry 2699 (class 2606 OID 729867)
-- Dependencies: 229 229
-- Name: PK_supplier; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY suppliers
    ADD CONSTRAINT "PK_supplier" PRIMARY KEY (id);


--
-- TOC entry 2701 (class 2606 OID 729869)
-- Dependencies: 230 230 230
-- Name: PK_translations; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY translations
    ADD CONSTRAINT "PK_translations" PRIMARY KEY (language, key);


--
-- TOC entry 2706 (class 2606 OID 729871)
-- Dependencies: 232 232
-- Name: PK_users_fields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY users_fields
    ADD CONSTRAINT "PK_users_fields" PRIMARY KEY (key);


--
-- TOC entry 2708 (class 2606 OID 729873)
-- Dependencies: 234 234
-- Name: PK_users_types; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY users_types
    ADD CONSTRAINT "PK_users_types" PRIMARY KEY (id);


--
-- TOC entry 2710 (class 2606 OID 729875)
-- Dependencies: 236 236 236
-- Name: PK_users_values; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY users_values
    ADD CONSTRAINT "PK_users_values" PRIMARY KEY (user_id, key);


--
-- TOC entry 2712 (class 2606 OID 729877)
-- Dependencies: 237 237
-- Name: PK_vocabulary_brief_formats; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_brief_formats
    ADD CONSTRAINT "PK_vocabulary_brief_formats" PRIMARY KEY (datafield);


--
-- TOC entry 2714 (class 2606 OID 729879)
-- Dependencies: 238 238
-- Name: PK_vocabulary_form_datafields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_form_datafields
    ADD CONSTRAINT "PK_vocabulary_form_datafields" PRIMARY KEY (datafield);


--
-- TOC entry 2716 (class 2606 OID 729881)
-- Dependencies: 239 239 239
-- Name: PK_vocabulary_form_subfields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_form_subfields
    ADD CONSTRAINT "PK_vocabulary_form_subfields" PRIMARY KEY (datafield, subfield);


--
-- TOC entry 2720 (class 2606 OID 729883)
-- Dependencies: 240 240
-- Name: PK_vocabulary_idx_autocomplete; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_idx_autocomplete
    ADD CONSTRAINT "PK_vocabulary_idx_autocomplete" PRIMARY KEY (id);


--
-- TOC entry 2723 (class 2606 OID 729885)
-- Dependencies: 242 242 242 242 242
-- Name: PK_vocabulary_idx_fields; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_idx_fields
    ADD CONSTRAINT "PK_vocabulary_idx_fields" PRIMARY KEY (record_id, indexing_group_id, word, datafield);


--
-- TOC entry 2725 (class 2606 OID 729887)
-- Dependencies: 243 243 243
-- Name: PK_vocabulary_idx_sort; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_idx_sort
    ADD CONSTRAINT "PK_vocabulary_idx_sort" PRIMARY KEY (record_id, indexing_group_id);


--
-- TOC entry 2727 (class 2606 OID 729889)
-- Dependencies: 244 244
-- Name: PK_vocabulary_indexing_groups; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_indexing_groups
    ADD CONSTRAINT "PK_vocabulary_indexing_groups" PRIMARY KEY (id);


--
-- TOC entry 2729 (class 2606 OID 729891)
-- Dependencies: 246 246
-- Name: PK_vocabulary_records; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_records
    ADD CONSTRAINT "PK_vocabulary_records" PRIMARY KEY (id);


--
-- TOC entry 2732 (class 2606 OID 729893)
-- Dependencies: 248 248 248 248
-- Name: PK_vocabulary_search_results; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_search_results
    ADD CONSTRAINT "PK_vocabulary_search_results" PRIMARY KEY (search_id, indexing_group_id, record_id);


--
-- TOC entry 2734 (class 2606 OID 729895)
-- Dependencies: 249 249
-- Name: PK_vocabulary_searches; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY vocabulary_searches
    ADD CONSTRAINT "PK_vocabulary_searches" PRIMARY KEY (id);


--
-- TOC entry 2736 (class 2606 OID 729897)
-- Dependencies: 251 251
-- Name: PK_z3950_addresses; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY z3950_addresses
    ADD CONSTRAINT "PK_z3950_addresses" PRIMARY KEY (id);


--
-- TOC entry 2607 (class 2606 OID 729899)
-- Dependencies: 170 170
-- Name: UN_access_cards; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY access_cards
    ADD CONSTRAINT "UN_access_cards" UNIQUE (code);


--
-- TOC entry 2685 (class 2606 OID 729901)
-- Dependencies: 216 216
-- Name: UN_logins; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY logins
    ADD CONSTRAINT "UN_logins" UNIQUE (login);


--
-- TOC entry 2649 (class 2606 OID 729903)
-- Dependencies: 192 192
-- Name: pk_biblio_holdings; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY biblio_holdings
    ADD CONSTRAINT pk_biblio_holdings PRIMARY KEY (id);


--
-- TOC entry 2681 (class 2606 OID 729905)
-- Dependencies: 214 214
-- Name: pk_lendings; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY lendings
    ADD CONSTRAINT pk_lendings PRIMARY KEY (id);


--
-- TOC entry 2697 (class 2606 OID 729907)
-- Dependencies: 226 226
-- Name: pk_reservations; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY reservations
    ADD CONSTRAINT pk_reservations PRIMARY KEY (id);


--
-- TOC entry 2704 (class 2606 OID 729909)
-- Dependencies: 231 231
-- Name: users_pkey; Type: CONSTRAINT; Schema: bib4template; Owner: biblivre; Tablespace:
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2608 (class 1259 OID 729910)
-- Dependencies: 172
-- Name: FKI_access_control_access_cards; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "FKI_access_control_access_cards" ON access_control USING btree (access_card_id);


--
-- TOC entry 2609 (class 1259 OID 729911)
-- Dependencies: 172
-- Name: FKI_access_control_users; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "FKI_access_control_users" ON access_control USING btree (user_id);


--
-- TOC entry 2619 (class 1259 OID 729912)
-- Dependencies: 176
-- Name: IX_authorities_idx_autocomplete_record_id; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_authorities_idx_autocomplete_record_id" ON authorities_idx_autocomplete USING btree (record_id);


--
-- TOC entry 2620 (class 1259 OID 729913)
-- Dependencies: 176 176 176
-- Name: IX_authorities_idx_autocomplete_word; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_authorities_idx_autocomplete_word" ON authorities_idx_autocomplete USING btree (datafield, subfield, word varchar_pattern_ops);


--
-- TOC entry 2623 (class 1259 OID 729914)
-- Dependencies: 178
-- Name: IX_authorities_idx_fields_word; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_authorities_idx_fields_word" ON authorities_idx_fields USING btree (word varchar_pattern_ops);


--
-- TOC entry 2632 (class 1259 OID 729915)
-- Dependencies: 184 184
-- Name: IX_authorities_search_results; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_authorities_search_results" ON authorities_search_results USING btree (search_id, record_id);


--
-- TOC entry 2645 (class 1259 OID 729916)
-- Dependencies: 192
-- Name: IX_biblio_holdings_accession_number; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE UNIQUE INDEX "IX_biblio_holdings_accession_number" ON biblio_holdings USING btree (accession_number);


--
-- TOC entry 2646 (class 1259 OID 729917)
-- Dependencies: 192 192
-- Name: IX_biblio_holdings_biblio_record; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_biblio_holdings_biblio_record" ON biblio_holdings USING btree (record_id, database);


--
-- TOC entry 2647 (class 1259 OID 729918)
-- Dependencies: 192 192
-- Name: IX_biblio_holdings_location_d; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_biblio_holdings_location_d" ON biblio_holdings USING btree (record_id, location_d);


--
-- TOC entry 2650 (class 1259 OID 729919)
-- Dependencies: 194
-- Name: IX_biblio_idx_autocomplete_record_id; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_biblio_idx_autocomplete_record_id" ON biblio_idx_autocomplete USING btree (record_id);


--
-- TOC entry 2651 (class 1259 OID 729920)
-- Dependencies: 194 194 194
-- Name: IX_biblio_idx_autocomplete_word; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_biblio_idx_autocomplete_word" ON biblio_idx_autocomplete USING btree (datafield, subfield, word varchar_pattern_ops);


--
-- TOC entry 2654 (class 1259 OID 729921)
-- Dependencies: 196
-- Name: IX_biblio_idx_fields_word; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_biblio_idx_fields_word" ON biblio_idx_fields USING btree (word varchar_pattern_ops);


--
-- TOC entry 2663 (class 1259 OID 729922)
-- Dependencies: 202 202
-- Name: IX_biblio_search_results; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_biblio_search_results" ON biblio_search_results USING btree (search_id, record_id);


--
-- TOC entry 2702 (class 1259 OID 729923)
-- Dependencies: 231
-- Name: IX_users_name; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_users_name" ON users USING btree (name varchar_pattern_ops);


--
-- TOC entry 2717 (class 1259 OID 729924)
-- Dependencies: 240
-- Name: IX_vocabulary_idx_autocomplete_record_id; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_vocabulary_idx_autocomplete_record_id" ON vocabulary_idx_autocomplete USING btree (record_id);


--
-- TOC entry 2718 (class 1259 OID 729925)
-- Dependencies: 240 240 240
-- Name: IX_vocabulary_idx_autocomplete_word; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_vocabulary_idx_autocomplete_word" ON vocabulary_idx_autocomplete USING btree (datafield, subfield, word varchar_pattern_ops);


--
-- TOC entry 2721 (class 1259 OID 729926)
-- Dependencies: 242
-- Name: IX_vocabulary_idx_fields_word; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_vocabulary_idx_fields_word" ON vocabulary_idx_fields USING btree (word varchar_pattern_ops);


--
-- TOC entry 2730 (class 1259 OID 729927)
-- Dependencies: 248 248
-- Name: IX_vocabulary_search_results; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX "IX_vocabulary_search_results" ON vocabulary_search_results USING btree (search_id, record_id);


--
-- TOC entry 2612 (class 1259 OID 729928)
-- Dependencies: 172 172
-- Name: ix_access_control_departure_time_user_id; Type: INDEX; Schema: bib4template; Owner: biblivre; Tablespace:
--

CREATE INDEX ix_access_control_departure_time_user_id ON access_control USING btree (departure_time, user_id);


--
-- TOC entry 2758 (class 2620 OID 729929)
-- Dependencies: 268 180
-- Name: TRIGGER_clear_authorities_indexing_type; Type: TRIGGER; Schema: bib4template; Owner: biblivre
--

CREATE TRIGGER "TRIGGER_clear_authorities_indexing_type" AFTER DELETE ON authorities_indexing_groups FOR EACH ROW EXECUTE PROCEDURE clear_indexing_type('authorities');


--
-- TOC entry 2759 (class 2620 OID 729930)
-- Dependencies: 269 182
-- Name: TRIGGER_clear_authorities_record; Type: TRIGGER; Schema: bib4template; Owner: biblivre
--

CREATE TRIGGER "TRIGGER_clear_authorities_record" AFTER DELETE ON authorities_records FOR EACH ROW EXECUTE PROCEDURE clear_record('authorities');


--
-- TOC entry 2760 (class 2620 OID 729931)
-- Dependencies: 268 198
-- Name: TRIGGER_clear_biblio_indexing_type; Type: TRIGGER; Schema: bib4template; Owner: biblivre
--

CREATE TRIGGER "TRIGGER_clear_biblio_indexing_type" AFTER DELETE ON biblio_indexing_groups FOR EACH ROW EXECUTE PROCEDURE clear_indexing_type('biblio');


--
-- TOC entry 2761 (class 2620 OID 729932)
-- Dependencies: 200 269
-- Name: TRIGGER_clear_biblio_record; Type: TRIGGER; Schema: bib4template; Owner: biblivre
--

CREATE TRIGGER "TRIGGER_clear_biblio_record" AFTER DELETE ON biblio_records FOR EACH ROW EXECUTE PROCEDURE clear_record('biblio');


--
-- TOC entry 2763 (class 2620 OID 729933)
-- Dependencies: 268 244
-- Name: TRIGGER_clear_vocabulary_indexing_type; Type: TRIGGER; Schema: bib4template; Owner: biblivre
--

CREATE TRIGGER "TRIGGER_clear_vocabulary_indexing_type" AFTER DELETE ON vocabulary_indexing_groups FOR EACH ROW EXECUTE PROCEDURE clear_indexing_type('vocabulary');


--
-- TOC entry 2764 (class 2620 OID 729934)
-- Dependencies: 246 269
-- Name: TRIGGER_clear_vocabulary_record; Type: TRIGGER; Schema: bib4template; Owner: biblivre
--

CREATE TRIGGER "TRIGGER_clear_vocabulary_record" AFTER DELETE ON vocabulary_records FOR EACH ROW EXECUTE PROCEDURE clear_record('vocabulary');


--
-- TOC entry 2762 (class 2620 OID 729935)
-- Dependencies: 265 206
-- Name: TRIGGER_digital_media_lo; Type: TRIGGER; Schema: bib4template; Owner: biblivre
--

CREATE TRIGGER "TRIGGER_digital_media_lo" BEFORE DELETE ON digital_media FOR EACH ROW EXECUTE PROCEDURE global.unlink();


--
-- TOC entry 2737 (class 2606 OID 729936)
-- Dependencies: 170 172 2604
-- Name: FK_access_control_access_cards; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY access_control
    ADD CONSTRAINT "FK_access_control_access_cards" FOREIGN KEY (access_card_id) REFERENCES access_cards(id) ON DELETE CASCADE;


--
-- TOC entry 2738 (class 2606 OID 729941)
-- Dependencies: 231 2703 172
-- Name: FK_access_control_users; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY access_control
    ADD CONSTRAINT "FK_access_control_users" FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- TOC entry 2739 (class 2606 OID 729946)
-- Dependencies: 2615 174 175
-- Name: FK_authorities_form_subfields_authorities_form_datafields; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY authorities_form_subfields
    ADD CONSTRAINT "FK_authorities_form_subfields_authorities_form_datafields" FOREIGN KEY (datafield) REFERENCES authorities_form_datafields(datafield) ON DELETE CASCADE;


--
-- TOC entry 2740 (class 2606 OID 729951)
-- Dependencies: 2641 191 190
-- Name: FK_biblio_form_subfields_biblio_form_datafields; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY biblio_form_subfields
    ADD CONSTRAINT "FK_biblio_form_subfields_biblio_form_datafields" FOREIGN KEY (datafield) REFERENCES biblio_form_datafields(datafield) ON DELETE CASCADE;


--
-- TOC entry 2742 (class 2606 OID 729956)
-- Dependencies: 211 2674 210
-- Name: FK_holding_form_subfields_holding_form_datafields; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY holding_form_subfields
    ADD CONSTRAINT "FK_holding_form_subfields_holding_form_datafields" FOREIGN KEY (datafield) REFERENCES holding_form_datafields(datafield) ON DELETE CASCADE;


--
-- TOC entry 2743 (class 2606 OID 729961)
-- Dependencies: 212 214 2680
-- Name: FK_lending_fines_lendings; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY lending_fines
    ADD CONSTRAINT "FK_lending_fines_lendings" FOREIGN KEY (lending_id) REFERENCES lendings(id) ON DELETE CASCADE;


--
-- TOC entry 2744 (class 2606 OID 729966)
-- Dependencies: 2703 231 212
-- Name: FK_lending_fines_users; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY lending_fines
    ADD CONSTRAINT "FK_lending_fines_users" FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- TOC entry 2749 (class 2606 OID 729971)
-- Dependencies: 216 2682 220
-- Name: FK_permissions_logins; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT "FK_permissions_logins" FOREIGN KEY (login_id) REFERENCES logins(id) ON DELETE CASCADE;


--
-- TOC entry 2750 (class 2606 OID 729976)
-- Dependencies: 229 2698 222
-- Name: FK_quotations_suppliers; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY quotations
    ADD CONSTRAINT "FK_quotations_suppliers" FOREIGN KEY (supplier_id) REFERENCES suppliers(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2751 (class 2606 OID 729981)
-- Dependencies: 222 224 2690
-- Name: FK_request_quotation_quotations; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY request_quotation
    ADD CONSTRAINT "FK_request_quotation_quotations" FOREIGN KEY (quotation_id) REFERENCES quotations(id) ON DELETE CASCADE;


--
-- TOC entry 2752 (class 2606 OID 729986)
-- Dependencies: 225 224 2694
-- Name: FK_request_quotation_requests; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY request_quotation
    ADD CONSTRAINT "FK_request_quotation_requests" FOREIGN KEY (request_id) REFERENCES requests(id) ON DELETE CASCADE;


--
-- TOC entry 2755 (class 2606 OID 729991)
-- Dependencies: 236 2703 231
-- Name: FK_users_values_users; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY users_values
    ADD CONSTRAINT "FK_users_values_users" FOREIGN KEY (user_id) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2756 (class 2606 OID 729996)
-- Dependencies: 236 232 2705
-- Name: FK_users_values_users_fields; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY users_values
    ADD CONSTRAINT "FK_users_values_users_fields" FOREIGN KEY (key) REFERENCES users_fields(key) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2757 (class 2606 OID 730001)
-- Dependencies: 238 2713 239
-- Name: FK_vocabulary_form_subfields_vocabulary_form_datafields; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY vocabulary_form_subfields
    ADD CONSTRAINT "FK_vocabulary_form_subfields_vocabulary_form_datafields" FOREIGN KEY (datafield) REFERENCES vocabulary_form_datafields(datafield) ON DELETE CASCADE;


--
-- TOC entry 2748 (class 2606 OID 730205)
-- Dependencies: 2690 222 218
-- Name: PK_orders_quotations; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT "FK_orders_quotations" FOREIGN KEY (quotation_id) REFERENCES quotations(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2741 (class 2606 OID 730011)
-- Dependencies: 200 2661 192
-- Name: fk_biblio_holdings_biblio_records; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY biblio_holdings
    ADD CONSTRAINT fk_biblio_holdings_biblio_records FOREIGN KEY (record_id) REFERENCES biblio_records(id) ON DELETE CASCADE;


--
-- TOC entry 2745 (class 2606 OID 730016)
-- Dependencies: 2648 192 214
-- Name: fk_lendings_biblio_holdings; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY lendings
    ADD CONSTRAINT fk_lendings_biblio_holdings FOREIGN KEY (holding_id) REFERENCES biblio_holdings(id) ON DELETE CASCADE;


--
-- TOC entry 2746 (class 2606 OID 730021)
-- Dependencies: 214 214 2680
-- Name: fk_lendings_lendings; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY lendings
    ADD CONSTRAINT fk_lendings_lendings FOREIGN KEY (previous_lending_id) REFERENCES lendings(id) ON DELETE CASCADE;


--
-- TOC entry 2747 (class 2606 OID 730026)
-- Dependencies: 2703 231 214
-- Name: fk_lendings_users; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY lendings
    ADD CONSTRAINT fk_lendings_users FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- TOC entry 2753 (class 2606 OID 730031)
-- Dependencies: 231 226 2703
-- Name: fk_lendings_users; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY reservations
    ADD CONSTRAINT fk_lendings_users FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE;


--
-- TOC entry 2754 (class 2606 OID 730036)
-- Dependencies: 226 200 2661
-- Name: fk_reservations_biblio_records; Type: FK CONSTRAINT; Schema: bib4template; Owner: biblivre
--

ALTER TABLE ONLY reservations
    ADD CONSTRAINT fk_reservations_biblio_records FOREIGN KEY (record_id) REFERENCES biblio_records(id) ON DELETE CASCADE;


--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 195
-- Name: biblio_idx_autocomplete_id_seq; Type: SEQUENCE SET; Schema: single; Owner: biblivre
--

SELECT pg_catalog.setval('biblio_idx_autocomplete_id_seq', 5103, false);


--
-- TOC entry 2412 (class 0 OID 753973)
-- Dependencies: 194
-- Data for Name: biblio_idx_autocomplete; Type: TABLE DATA; Schema: single; Owner: biblivre
--

INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (2, '095', 'a', '1.00.00.00-3', '1.00.00.00-3 CiÃªncias Exatas e da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (3, '095', 'a', 'ciencias', '1.00.00.00-3 CiÃªncias Exatas e da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (4, '095', 'a', 'exatas', '1.00.00.00-3 CiÃªncias Exatas e da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (5, '095', 'a', 'da', '1.00.00.00-3 CiÃªncias Exatas e da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (6, '095', 'a', 'terra', '1.00.00.00-3 CiÃªncias Exatas e da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (7, '095', 'a', '1.01.00.00-8', '1.01.00.00-8 MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (8, '095', 'a', 'matematica', '1.01.00.00-8 MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (9, '095', 'a', '1.01.01.00-4', '1.01.01.00-4 Ãlgebra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (10, '095', 'a', 'algebra', '1.01.01.00-4 Ãlgebra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (11, '095', 'a', '1.01.01.01-2', '1.01.01.01-2 Conjuntos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (12, '095', 'a', 'conjuntos', '1.01.01.01-2 Conjuntos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (13, '095', 'a', '1.01.01.02-0', '1.01.01.02-0 LÃ³gica MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (14, '095', 'a', 'logica', '1.01.01.02-0 LÃ³gica MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (15, '095', 'a', 'matematica', '1.01.01.02-0 LÃ³gica MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (16, '095', 'a', '1.01.01.03-9', '1.01.01.03-9 Teoria dos NÃºmeros', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (17, '095', 'a', 'teoria', '1.01.01.03-9 Teoria dos NÃºmeros', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (18, '095', 'a', 'dos', '1.01.01.03-9 Teoria dos NÃºmeros', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (19, '095', 'a', 'numeros', '1.01.01.03-9 Teoria dos NÃºmeros', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (20, '095', 'a', '1.01.01.04-7', '1.01.01.04-7 Grupos de Algebra NÃ£o-Comutaviva', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (21, '095', 'a', 'grupos', '1.01.01.04-7 Grupos de Algebra NÃ£o-Comutaviva', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (22, '095', 'a', 'de', '1.01.01.04-7 Grupos de Algebra NÃ£o-Comutaviva', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (23, '095', 'a', 'algebra', '1.01.01.04-7 Grupos de Algebra NÃ£o-Comutaviva', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (24, '095', 'a', 'nao-comutaviva', '1.01.01.04-7 Grupos de Algebra NÃ£o-Comutaviva', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (25, '095', 'a', '1.01.01.05-5', '1.01.01.05-5 Algebra Comutativa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (26, '095', 'a', 'algebra', '1.01.01.05-5 Algebra Comutativa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (27, '095', 'a', 'comutativa', '1.01.01.05-5 Algebra Comutativa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (28, '095', 'a', '1.01.01.06-3', '1.01.01.06-3 Geometria Algebrica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (29, '095', 'a', 'geometria', '1.01.01.06-3 Geometria Algebrica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (30, '095', 'a', 'algebrica', '1.01.01.06-3 Geometria Algebrica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (31, '095', 'a', '1.01.02.00-0', '1.01.02.00-0 AnÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (32, '095', 'a', 'analise', '1.01.02.00-0 AnÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (33, '095', 'a', '1.01.02.01-9', '1.01.02.01-9 AnÃ¡lise Complexa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (34, '095', 'a', 'analise', '1.01.02.01-9 AnÃ¡lise Complexa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (35, '095', 'a', 'complexa', '1.01.02.01-9 AnÃ¡lise Complexa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (36, '095', 'a', '1.01.02.02-7', '1.01.02.02-7 AnÃ¡lise Funcional', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (37, '095', 'a', 'analise', '1.01.02.02-7 AnÃ¡lise Funcional', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (38, '095', 'a', 'funcional', '1.01.02.02-7 AnÃ¡lise Funcional', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (39, '095', 'a', '1.01.02.03-5', '1.01.02.03-5 AnÃ¡lise Funcional NÃ£o-Linear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (40, '095', 'a', 'analise', '1.01.02.03-5 AnÃ¡lise Funcional NÃ£o-Linear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (41, '095', 'a', 'funcional', '1.01.02.03-5 AnÃ¡lise Funcional NÃ£o-Linear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (42, '095', 'a', 'nao-linear', '1.01.02.03-5 AnÃ¡lise Funcional NÃ£o-Linear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (43, '095', 'a', '1.01.02.04-3', '1.01.02.04-3 EquaÃ§Ãµes DiferÃªnciais OrdinÃ¡rias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (44, '095', 'a', 'equacoes', '1.01.02.04-3 EquaÃ§Ãµes DiferÃªnciais OrdinÃ¡rias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (45, '095', 'a', 'diferenciais', '1.01.02.04-3 EquaÃ§Ãµes DiferÃªnciais OrdinÃ¡rias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (46, '095', 'a', 'ordinarias', '1.01.02.04-3 EquaÃ§Ãµes DiferÃªnciais OrdinÃ¡rias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (47, '095', 'a', '1.01.02.05-1', '1.01.02.05-1 EquaÃ§Ãµes DiferÃªnciais Parciais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (48, '095', 'a', 'equacoes', '1.01.02.05-1 EquaÃ§Ãµes DiferÃªnciais Parciais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (49, '095', 'a', 'diferenciais', '1.01.02.05-1 EquaÃ§Ãµes DiferÃªnciais Parciais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (50, '095', 'a', 'parciais', '1.01.02.05-1 EquaÃ§Ãµes DiferÃªnciais Parciais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (51, '095', 'a', '1.01.02.06-0', '1.01.02.06-0 EquaÃ§Ãµes DiferÃªnciais Funcionais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (52, '095', 'a', 'equacoes', '1.01.02.06-0 EquaÃ§Ãµes DiferÃªnciais Funcionais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (53, '095', 'a', 'diferenciais', '1.01.02.06-0 EquaÃ§Ãµes DiferÃªnciais Funcionais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (54, '095', 'a', 'funcionais', '1.01.02.06-0 EquaÃ§Ãµes DiferÃªnciais Funcionais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (55, '095', 'a', '1.01.03.00-7', '1.01.03.00-7 Geometria e Topologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (56, '095', 'a', 'geometria', '1.01.03.00-7 Geometria e Topologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (57, '095', 'a', 'topologia', '1.01.03.00-7 Geometria e Topologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (58, '095', 'a', '1.01.03.01-5', '1.01.03.01-5 Geometria DiferÃªncial', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (59, '095', 'a', 'geometria', '1.01.03.01-5 Geometria DiferÃªncial', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (60, '095', 'a', 'diferencial', '1.01.03.01-5 Geometria DiferÃªncial', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (61, '095', 'a', '1.01.03.02-3', '1.01.03.02-3 Topologia AlgÃ©brica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (62, '095', 'a', 'topologia', '1.01.03.02-3 Topologia AlgÃ©brica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (63, '095', 'a', 'algebrica', '1.01.03.02-3 Topologia AlgÃ©brica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (64, '095', 'a', '1.01.03.03-1', '1.01.03.03-1 Topologia das Variedades', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (65, '095', 'a', 'topologia', '1.01.03.03-1 Topologia das Variedades', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (66, '095', 'a', 'das', '1.01.03.03-1 Topologia das Variedades', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (67, '095', 'a', 'variedades', '1.01.03.03-1 Topologia das Variedades', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (68, '095', 'a', '1.01.03.04-0', '1.01.03.04-0 Sistemas DinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (69, '095', 'a', 'sistemas', '1.01.03.04-0 Sistemas DinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (70, '095', 'a', 'dinamicos', '1.01.03.04-0 Sistemas DinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (71, '095', 'a', '1.01.03.05-8', '1.01.03.05-8 Teoria das Singularidades e Teoria das CatÃ¡strofes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (72, '095', 'a', 'teoria', '1.01.03.05-8 Teoria das Singularidades e Teoria das CatÃ¡strofes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (73, '095', 'a', 'das', '1.01.03.05-8 Teoria das Singularidades e Teoria das CatÃ¡strofes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (74, '095', 'a', 'singularidades', '1.01.03.05-8 Teoria das Singularidades e Teoria das CatÃ¡strofes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (75, '095', 'a', 'teoria', '1.01.03.05-8 Teoria das Singularidades e Teoria das CatÃ¡strofes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (76, '095', 'a', 'das', '1.01.03.05-8 Teoria das Singularidades e Teoria das CatÃ¡strofes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (77, '095', 'a', 'catastrofes', '1.01.03.05-8 Teoria das Singularidades e Teoria das CatÃ¡strofes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (78, '095', 'a', '1.01.03.06-6', '1.01.03.06-6 Teoria das FolheaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (79, '095', 'a', 'teoria', '1.01.03.06-6 Teoria das FolheaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (80, '095', 'a', 'das', '1.01.03.06-6 Teoria das FolheaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (81, '095', 'a', 'folheacoes', '1.01.03.06-6 Teoria das FolheaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (82, '095', 'a', '1.01.04.00-3', '1.01.04.00-3 MatemÃ¡tica Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (83, '095', 'a', 'matematica', '1.01.04.00-3 MatemÃ¡tica Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (84, '095', 'a', 'aplicada', '1.01.04.00-3 MatemÃ¡tica Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (85, '095', 'a', '1.01.04.01-1', '1.01.04.01-1 FÃ­sica MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (86, '095', 'a', 'fisica', '1.01.04.01-1 FÃ­sica MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (87, '095', 'a', 'matematica', '1.01.04.01-1 FÃ­sica MatemÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (88, '095', 'a', '1.01.04.02-0', '1.01.04.02-0 AnÃ¡lise NumÃ©rica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (89, '095', 'a', 'analise', '1.01.04.02-0 AnÃ¡lise NumÃ©rica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (90, '095', 'a', 'numerica', '1.01.04.02-0 AnÃ¡lise NumÃ©rica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (91, '095', 'a', '1.01.04.03-8', '1.01.04.03-8 MatemÃ¡tica Discreta e Combinatoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (92, '095', 'a', 'matematica', '1.01.04.03-8 MatemÃ¡tica Discreta e Combinatoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (93, '095', 'a', 'discreta', '1.01.04.03-8 MatemÃ¡tica Discreta e Combinatoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (94, '095', 'a', 'combinatoria', '1.01.04.03-8 MatemÃ¡tica Discreta e Combinatoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (95, '095', 'a', '1.02.00.00-2', '1.02.00.00-2 Probabilidade e EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (96, '095', 'a', 'probabilidade', '1.02.00.00-2 Probabilidade e EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (97, '095', 'a', 'estatistica', '1.02.00.00-2 Probabilidade e EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (98, '095', 'a', '1.02.01.00-9', '1.02.01.00-9 Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (99, '095', 'a', 'probabilidade', '1.02.01.00-9 Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (100, '095', 'a', '1.02.01.01-7', '1.02.01.01-7 Teoria Geral e Fundamentos da Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (101, '095', 'a', 'teoria', '1.02.01.01-7 Teoria Geral e Fundamentos da Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (102, '095', 'a', 'geral', '1.02.01.01-7 Teoria Geral e Fundamentos da Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (103, '095', 'a', 'fundamentos', '1.02.01.01-7 Teoria Geral e Fundamentos da Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (104, '095', 'a', 'da', '1.02.01.01-7 Teoria Geral e Fundamentos da Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (105, '095', 'a', 'probabilidade', '1.02.01.01-7 Teoria Geral e Fundamentos da Probabilidade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (106, '095', 'a', '1.02.01.02-5', '1.02.01.02-5 Teoria Geral e Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (107, '095', 'a', 'teoria', '1.02.01.02-5 Teoria Geral e Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (108, '095', 'a', 'geral', '1.02.01.02-5 Teoria Geral e Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (109, '095', 'a', 'processos', '1.02.01.02-5 Teoria Geral e Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (110, '095', 'a', 'estocasticos', '1.02.01.02-5 Teoria Geral e Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (111, '095', 'a', '1.02.01.03-3', '1.02.01.03-3 Teoremas de Limite', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (112, '095', 'a', 'teoremas', '1.02.01.03-3 Teoremas de Limite', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (113, '095', 'a', 'de', '1.02.01.03-3 Teoremas de Limite', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (114, '095', 'a', 'limite', '1.02.01.03-3 Teoremas de Limite', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (115, '095', 'a', '1.02.01.04-1', '1.02.01.04-1 Processos Markovianos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (116, '095', 'a', 'processos', '1.02.01.04-1 Processos Markovianos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (117, '095', 'a', 'markovianos', '1.02.01.04-1 Processos Markovianos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (118, '095', 'a', '1.02.01.05-0', '1.02.01.05-0 AnÃ¡lise EstocÃ¡stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (119, '095', 'a', 'analise', '1.02.01.05-0 AnÃ¡lise EstocÃ¡stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (120, '095', 'a', 'estocastica', '1.02.01.05-0 AnÃ¡lise EstocÃ¡stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (121, '095', 'a', '1.02.01.06-8', '1.02.01.06-8 Processos EstocÃ¡sticos Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (122, '095', 'a', 'processos', '1.02.01.06-8 Processos EstocÃ¡sticos Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (123, '095', 'a', 'estocasticos', '1.02.01.06-8 Processos EstocÃ¡sticos Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (124, '095', 'a', 'especiais', '1.02.01.06-8 Processos EstocÃ¡sticos Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (125, '095', 'a', '1.02.02.00-5', '1.02.02.00-5 EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (126, '095', 'a', 'estatistica', '1.02.02.00-5 EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (127, '095', 'a', '1.02.02.01-3', '1.02.02.01-3 Fundamentos da EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (128, '095', 'a', 'fundamentos', '1.02.02.01-3 Fundamentos da EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (129, '095', 'a', 'da', '1.02.02.01-3 Fundamentos da EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (130, '095', 'a', 'estatistica', '1.02.02.01-3 Fundamentos da EstatÃ­stica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (131, '095', 'a', '1.02.02.02-1', '1.02.02.02-1 InferÃªncia ParamÃ©trica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (132, '095', 'a', 'inferencia', '1.02.02.02-1 InferÃªncia ParamÃ©trica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (133, '095', 'a', 'parametrica', '1.02.02.02-1 InferÃªncia ParamÃ©trica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (134, '095', 'a', '1.02.02.03-0', '1.02.02.03-0 InferÃªncia Nao-ParamÃ©trica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (135, '095', 'a', 'inferencia', '1.02.02.03-0 InferÃªncia Nao-ParamÃ©trica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (136, '095', 'a', 'nao-parametrica', '1.02.02.03-0 InferÃªncia Nao-ParamÃ©trica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (137, '095', 'a', '1.02.02.04-8', '1.02.02.04-8 InferÃªncia em Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (138, '095', 'a', 'inferencia', '1.02.02.04-8 InferÃªncia em Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (139, '095', 'a', 'em', '1.02.02.04-8 InferÃªncia em Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (140, '095', 'a', 'processos', '1.02.02.04-8 InferÃªncia em Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (141, '095', 'a', 'estocasticos', '1.02.02.04-8 InferÃªncia em Processos EstocÃ¡sticos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (142, '095', 'a', '1.02.02.05-6', '1.02.02.05-6 AnÃ¡lise Multivariada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (143, '095', 'a', 'analise', '1.02.02.05-6 AnÃ¡lise Multivariada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (144, '095', 'a', 'multivariada', '1.02.02.05-6 AnÃ¡lise Multivariada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (145, '095', 'a', '1.02.02.06-4', '1.02.02.06-4 RegressÃ£o e CorrelaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (146, '095', 'a', 'regressao', '1.02.02.06-4 RegressÃ£o e CorrelaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (147, '095', 'a', 'correlacao', '1.02.02.06-4 RegressÃ£o e CorrelaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (148, '095', 'a', '1.02.02.07-2', '1.02.02.07-2 Planejamento de Experimentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (149, '095', 'a', 'planejamento', '1.02.02.07-2 Planejamento de Experimentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (150, '095', 'a', 'de', '1.02.02.07-2 Planejamento de Experimentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (151, '095', 'a', 'experimentos', '1.02.02.07-2 Planejamento de Experimentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (152, '095', 'a', '1.02.02.08-0', '1.02.02.08-0 AnÃ¡lise de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (153, '095', 'a', 'analise', '1.02.02.08-0 AnÃ¡lise de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (154, '095', 'a', 'de', '1.02.02.08-0 AnÃ¡lise de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (155, '095', 'a', 'dados', '1.02.02.08-0 AnÃ¡lise de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (156, '095', 'a', '1.02.03.00-1', '1.02.03.00-1 Probabilidade e EstatÃ­stica Aplicadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (157, '095', 'a', 'probabilidade', '1.02.03.00-1 Probabilidade e EstatÃ­stica Aplicadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (158, '095', 'a', 'estatistica', '1.02.03.00-1 Probabilidade e EstatÃ­stica Aplicadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (159, '095', 'a', 'aplicadas', '1.02.03.00-1 Probabilidade e EstatÃ­stica Aplicadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (160, '095', 'a', '1.03.00.00-7', '1.03.00.00-7 CiÃªncia da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (161, '095', 'a', 'ciencia', '1.03.00.00-7 CiÃªncia da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (162, '095', 'a', 'da', '1.03.00.00-7 CiÃªncia da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (163, '095', 'a', 'computacao', '1.03.00.00-7 CiÃªncia da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (164, '095', 'a', '1.03.01.00-3', '1.03.01.00-3 Teoria da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (165, '095', 'a', 'teoria', '1.03.01.00-3 Teoria da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (166, '095', 'a', 'da', '1.03.01.00-3 Teoria da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (167, '095', 'a', 'computacao', '1.03.01.00-3 Teoria da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (168, '095', 'a', '1.03.01.01-1', '1.03.01.01-1 Computabilidade e Modelos de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (169, '095', 'a', 'computabilidade', '1.03.01.01-1 Computabilidade e Modelos de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (170, '095', 'a', 'modelos', '1.03.01.01-1 Computabilidade e Modelos de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (171, '095', 'a', 'de', '1.03.01.01-1 Computabilidade e Modelos de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (172, '095', 'a', 'computacao', '1.03.01.01-1 Computabilidade e Modelos de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (173, '095', 'a', '1.03.01.02-0', '1.03.01.02-0 Linguagem Formais e Automatos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (174, '095', 'a', 'linguagem', '1.03.01.02-0 Linguagem Formais e Automatos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (175, '095', 'a', 'formais', '1.03.01.02-0 Linguagem Formais e Automatos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (176, '095', 'a', 'automatos', '1.03.01.02-0 Linguagem Formais e Automatos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (177, '095', 'a', '1.03.01.03-8', '1.03.01.03-8 AnÃ¡lise de Algoritmos e Complexidade de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (178, '095', 'a', 'analise', '1.03.01.03-8 AnÃ¡lise de Algoritmos e Complexidade de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (179, '095', 'a', 'de', '1.03.01.03-8 AnÃ¡lise de Algoritmos e Complexidade de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (180, '095', 'a', 'algoritmos', '1.03.01.03-8 AnÃ¡lise de Algoritmos e Complexidade de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (181, '095', 'a', 'complexidade', '1.03.01.03-8 AnÃ¡lise de Algoritmos e Complexidade de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (182, '095', 'a', 'de', '1.03.01.03-8 AnÃ¡lise de Algoritmos e Complexidade de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (183, '095', 'a', 'computacao', '1.03.01.03-8 AnÃ¡lise de Algoritmos e Complexidade de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (184, '095', 'a', '1.03.01.04-6', '1.03.01.04-6 LÃ³gicas e SemÃ¢ntica de Programas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (185, '095', 'a', 'logicas', '1.03.01.04-6 LÃ³gicas e SemÃ¢ntica de Programas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (186, '095', 'a', 'semantica', '1.03.01.04-6 LÃ³gicas e SemÃ¢ntica de Programas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (187, '095', 'a', 'de', '1.03.01.04-6 LÃ³gicas e SemÃ¢ntica de Programas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (188, '095', 'a', 'programas', '1.03.01.04-6 LÃ³gicas e SemÃ¢ntica de Programas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (189, '095', 'a', '1.03.02.00-0', '1.03.02.00-0 MatemÃ¡tica da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (190, '095', 'a', 'matematica', '1.03.02.00-0 MatemÃ¡tica da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (191, '095', 'a', 'da', '1.03.02.00-0 MatemÃ¡tica da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (192, '095', 'a', 'computacao', '1.03.02.00-0 MatemÃ¡tica da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (193, '095', 'a', '1.03.02.01-8', '1.03.02.01-8 MatemÃ¡tica SimbÃ³lica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (194, '095', 'a', 'matematica', '1.03.02.01-8 MatemÃ¡tica SimbÃ³lica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (195, '095', 'a', 'simbolica', '1.03.02.01-8 MatemÃ¡tica SimbÃ³lica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (196, '095', 'a', '1.03.02.02-6', '1.03.02.02-6 Modelos AnalÃ­ticos e de SimulaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (197, '095', 'a', 'modelos', '1.03.02.02-6 Modelos AnalÃ­ticos e de SimulaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (198, '095', 'a', 'analiticos', '1.03.02.02-6 Modelos AnalÃ­ticos e de SimulaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (199, '095', 'a', 'de', '1.03.02.02-6 Modelos AnalÃ­ticos e de SimulaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (200, '095', 'a', 'simulacao', '1.03.02.02-6 Modelos AnalÃ­ticos e de SimulaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (201, '095', 'a', '1.03.03.00-6', '1.03.03.00-6 Metodologia e TÃ©cnicas da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (202, '095', 'a', 'metodologia', '1.03.03.00-6 Metodologia e TÃ©cnicas da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (203, '095', 'a', 'tecnicas', '1.03.03.00-6 Metodologia e TÃ©cnicas da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (204, '095', 'a', 'da', '1.03.03.00-6 Metodologia e TÃ©cnicas da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (205, '095', 'a', 'computacao', '1.03.03.00-6 Metodologia e TÃ©cnicas da ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (206, '095', 'a', '1.03.03.01-4', '1.03.03.01-4 Linguagens de ProgramaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (207, '095', 'a', 'linguagens', '1.03.03.01-4 Linguagens de ProgramaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (208, '095', 'a', 'de', '1.03.03.01-4 Linguagens de ProgramaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (209, '095', 'a', 'programacao', '1.03.03.01-4 Linguagens de ProgramaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (210, '095', 'a', '1.03.03.02-2', '1.03.03.02-2 Engenharia de Software', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (211, '095', 'a', 'engenharia', '1.03.03.02-2 Engenharia de Software', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (212, '095', 'a', 'de', '1.03.03.02-2 Engenharia de Software', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (213, '095', 'a', 'software', '1.03.03.02-2 Engenharia de Software', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (214, '095', 'a', '1.03.03.03-0', '1.03.03.03-0 Banco de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (215, '095', 'a', 'banco', '1.03.03.03-0 Banco de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (216, '095', 'a', 'de', '1.03.03.03-0 Banco de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (217, '095', 'a', 'dados', '1.03.03.03-0 Banco de Dados', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (218, '095', 'a', '1.03.03.04-9', '1.03.03.04-9 Sistemas de InformaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (219, '095', 'a', 'sistemas', '1.03.03.04-9 Sistemas de InformaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (220, '095', 'a', 'de', '1.03.03.04-9 Sistemas de InformaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (221, '095', 'a', 'informacao', '1.03.03.04-9 Sistemas de InformaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (222, '095', 'a', '1.03.03.05-7', '1.03.03.05-7 Processamento GrÃ¡fico (Graphics)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (223, '095', 'a', 'processamento', '1.03.03.05-7 Processamento GrÃ¡fico (Graphics)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (224, '095', 'a', 'grafico', '1.03.03.05-7 Processamento GrÃ¡fico (Graphics)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (225, '095', 'a', '(graphics)', '1.03.03.05-7 Processamento GrÃ¡fico (Graphics)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (226, '095', 'a', '1.03.04.00-2', '1.03.04.00-2 Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (227, '095', 'a', 'sistemas', '1.03.04.00-2 Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (228, '095', 'a', 'de', '1.03.04.00-2 Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (229, '095', 'a', 'computacao', '1.03.04.00-2 Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (230, '095', 'a', '1.03.04.01-0', '1.03.04.01-0 Hardware', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (231, '095', 'a', 'hardware', '1.03.04.01-0 Hardware', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (232, '095', 'a', '1.03.04.02-9', '1.03.04.02-9 Arquitetura de Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (233, '095', 'a', 'arquitetura', '1.03.04.02-9 Arquitetura de Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (234, '095', 'a', 'de', '1.03.04.02-9 Arquitetura de Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (235, '095', 'a', 'sistemas', '1.03.04.02-9 Arquitetura de Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (236, '095', 'a', 'de', '1.03.04.02-9 Arquitetura de Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (237, '095', 'a', 'computacao', '1.03.04.02-9 Arquitetura de Sistemas de ComputaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (238, '095', 'a', '1.03.04.03-7', '1.03.04.03-7 Software BÃ¡sico', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (239, '095', 'a', 'software', '1.03.04.03-7 Software BÃ¡sico', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (240, '095', 'a', 'basico', '1.03.04.03-7 Software BÃ¡sico', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (241, '095', 'a', '1.03.04.04-5', '1.03.04.04-5 TeleinformÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (242, '095', 'a', 'teleinformatica', '1.03.04.04-5 TeleinformÃ¡tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (243, '095', 'a', '1.04.00.00-1', '1.04.00.00-1 Astronomia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (244, '095', 'a', 'astronomia', '1.04.00.00-1 Astronomia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (245, '095', 'a', '1.04.01.00-8', '1.04.01.00-8 Astronomia de PosiÃ§Ã£o e MecÃ¢nica Celeste', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (246, '095', 'a', 'astronomia', '1.04.01.00-8 Astronomia de PosiÃ§Ã£o e MecÃ¢nica Celeste', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (247, '095', 'a', 'de', '1.04.01.00-8 Astronomia de PosiÃ§Ã£o e MecÃ¢nica Celeste', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (248, '095', 'a', 'posicao', '1.04.01.00-8 Astronomia de PosiÃ§Ã£o e MecÃ¢nica Celeste', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (249, '095', 'a', 'mecanica', '1.04.01.00-8 Astronomia de PosiÃ§Ã£o e MecÃ¢nica Celeste', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (250, '095', 'a', 'celeste', '1.04.01.00-8 Astronomia de PosiÃ§Ã£o e MecÃ¢nica Celeste', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (251, '095', 'a', '1.04.01.01-6', '1.04.01.01-6 Astronomia Fundamental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (252, '095', 'a', 'astronomia', '1.04.01.01-6 Astronomia Fundamental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (253, '095', 'a', 'fundamental', '1.04.01.01-6 Astronomia Fundamental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (254, '095', 'a', '1.04.01.02-4', '1.04.01.02-4 Astronomia DinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (255, '095', 'a', 'astronomia', '1.04.01.02-4 Astronomia DinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (256, '095', 'a', 'dinamica', '1.04.01.02-4 Astronomia DinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (257, '095', 'a', '1.04.02.00-4', '1.04.02.00-4 AstrofÃ­sica Estelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (258, '095', 'a', 'astrofisica', '1.04.02.00-4 AstrofÃ­sica Estelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (259, '095', 'a', 'estelar', '1.04.02.00-4 AstrofÃ­sica Estelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (260, '095', 'a', '1.04.03.00-0', '1.04.03.00-0 AstrofÃ­sica do Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (261, '095', 'a', 'astrofisica', '1.04.03.00-0 AstrofÃ­sica do Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (262, '095', 'a', 'do', '1.04.03.00-0 AstrofÃ­sica do Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (263, '095', 'a', 'meio', '1.04.03.00-0 AstrofÃ­sica do Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (264, '095', 'a', 'interestelar', '1.04.03.00-0 AstrofÃ­sica do Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (265, '095', 'a', '1.04.03.01-9', '1.04.03.01-9 Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (266, '095', 'a', 'meio', '1.04.03.01-9 Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (267, '095', 'a', 'interestelar', '1.04.03.01-9 Meio Interestelar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (268, '095', 'a', '1.04.03.02-7', '1.04.03.02-7 Nebulosa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (269, '095', 'a', 'nebulosa', '1.04.03.02-7 Nebulosa', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (270, '095', 'a', '1.04.04.00-7', '1.04.04.00-7 AstrofÃ­sica ExtragalÃ¡ctica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (271, '095', 'a', 'astrofisica', '1.04.04.00-7 AstrofÃ­sica ExtragalÃ¡ctica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (272, '095', 'a', 'extragalactica', '1.04.04.00-7 AstrofÃ­sica ExtragalÃ¡ctica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (273, '095', 'a', '1.04.04.01-5', '1.04.04.01-5 GalÃ¡xias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (274, '095', 'a', 'galaxias', '1.04.04.01-5 GalÃ¡xias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (275, '095', 'a', '1.04.04.02-3', '1.04.04.02-3 Aglomerados de GalÃ¡xias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (276, '095', 'a', 'aglomerados', '1.04.04.02-3 Aglomerados de GalÃ¡xias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (277, '095', 'a', 'de', '1.04.04.02-3 Aglomerados de GalÃ¡xias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (278, '095', 'a', 'galaxias', '1.04.04.02-3 Aglomerados de GalÃ¡xias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (279, '095', 'a', '1.04.04.03-1', '1.04.04.03-1 Quasares', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (280, '095', 'a', 'quasares', '1.04.04.03-1 Quasares', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (281, '095', 'a', '1.04.04.04-0', '1.04.04.04-0 Cosmologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (282, '095', 'a', 'cosmologia', '1.04.04.04-0 Cosmologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (283, '095', 'a', '1.04.05.00-3', '1.04.05.00-3 AstrofÃ­sica do Sistema Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (284, '095', 'a', 'astrofisica', '1.04.05.00-3 AstrofÃ­sica do Sistema Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (285, '095', 'a', 'do', '1.04.05.00-3 AstrofÃ­sica do Sistema Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (286, '095', 'a', 'sistema', '1.04.05.00-3 AstrofÃ­sica do Sistema Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (287, '095', 'a', 'solar', '1.04.05.00-3 AstrofÃ­sica do Sistema Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (288, '095', 'a', '1.04.05.01-1', '1.04.05.01-1 FÃ­sica Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (289, '095', 'a', 'fisica', '1.04.05.01-1 FÃ­sica Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (290, '095', 'a', 'solar', '1.04.05.01-1 FÃ­sica Solar', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (291, '095', 'a', '1.04.05.02-0', '1.04.05.02-0 Movimento da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (292, '095', 'a', 'movimento', '1.04.05.02-0 Movimento da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (293, '095', 'a', 'da', '1.04.05.02-0 Movimento da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (294, '095', 'a', 'terra', '1.04.05.02-0 Movimento da Terra', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (295, '095', 'a', '1.04.05.03-8', '1.04.05.03-8 Sistema PlanetÃ¡rio', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (296, '095', 'a', 'sistema', '1.04.05.03-8 Sistema PlanetÃ¡rio', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (297, '095', 'a', 'planetario', '1.04.05.03-8 Sistema PlanetÃ¡rio', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (298, '095', 'a', '1.04.06.00-0', '1.04.06.00-0 InstrumentaÃ§Ã£o AstronÃ´mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (299, '095', 'a', 'instrumentacao', '1.04.06.00-0 InstrumentaÃ§Ã£o AstronÃ´mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (300, '095', 'a', 'astronomica', '1.04.06.00-0 InstrumentaÃ§Ã£o AstronÃ´mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (301, '095', 'a', '1.04.06.01-8', '1.04.06.01-8 AstronÃ´mia Ã“tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (302, '095', 'a', 'astronomia', '1.04.06.01-8 AstronÃ´mia Ã“tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (303, '095', 'a', 'otica', '1.04.06.01-8 AstronÃ´mia Ã“tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (304, '095', 'a', '1.04.06.02-6', '1.04.06.02-6 Radioastronomia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (305, '095', 'a', 'radioastronomia', '1.04.06.02-6 Radioastronomia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (306, '095', 'a', '1.04.06.03-4', '1.04.06.03-4 Astronomia Espacial', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (307, '095', 'a', 'astronomia', '1.04.06.03-4 Astronomia Espacial', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (308, '095', 'a', 'espacial', '1.04.06.03-4 Astronomia Espacial', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (309, '095', 'a', '1.04.06.04-2', '1.04.06.04-2 Processamento de Dados AstronÃ´micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (310, '095', 'a', 'processamento', '1.04.06.04-2 Processamento de Dados AstronÃ´micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (311, '095', 'a', 'de', '1.04.06.04-2 Processamento de Dados AstronÃ´micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (312, '095', 'a', 'dados', '1.04.06.04-2 Processamento de Dados AstronÃ´micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (313, '095', 'a', 'astronomicos', '1.04.06.04-2 Processamento de Dados AstronÃ´micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (314, '095', 'a', '1.05.00.00-6', '1.05.00.00-6 FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (315, '095', 'a', 'fisica', '1.05.00.00-6 FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (316, '095', 'a', '1.05.01.00-2', '1.05.01.00-2 FÃ­sica Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (317, '095', 'a', 'fisica', '1.05.01.00-2 FÃ­sica Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (318, '095', 'a', 'geral', '1.05.01.00-2 FÃ­sica Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (319, '095', 'a', '1.05.01.01-0', '1.05.01.01-0 MÃ©todos MatemÃ¡ticos da FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (320, '095', 'a', 'metodos', '1.05.01.01-0 MÃ©todos MatemÃ¡ticos da FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (321, '095', 'a', 'matematicos', '1.05.01.01-0 MÃ©todos MatemÃ¡ticos da FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (322, '095', 'a', 'da', '1.05.01.01-0 MÃ©todos MatemÃ¡ticos da FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (323, '095', 'a', 'fisica', '1.05.01.01-0 MÃ©todos MatemÃ¡ticos da FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (324, '095', 'a', '1.05.01.02-9', '1.05.01.02-9 FÃ­sica ClÃ¡ssica e FÃ­sica QuÃ¢ntica; MecÃ¢nica e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (325, '095', 'a', 'fisica', '1.05.01.02-9 FÃ­sica ClÃ¡ssica e FÃ­sica QuÃ¢ntica; MecÃ¢nica e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (326, '095', 'a', 'classica', '1.05.01.02-9 FÃ­sica ClÃ¡ssica e FÃ­sica QuÃ¢ntica; MecÃ¢nica e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (327, '095', 'a', 'fisica', '1.05.01.02-9 FÃ­sica ClÃ¡ssica e FÃ­sica QuÃ¢ntica; MecÃ¢nica e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (328, '095', 'a', 'quantica;', '1.05.01.02-9 FÃ­sica ClÃ¡ssica e FÃ­sica QuÃ¢ntica; MecÃ¢nica e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (329, '095', 'a', 'mecanica', '1.05.01.02-9 FÃ­sica ClÃ¡ssica e FÃ­sica QuÃ¢ntica; MecÃ¢nica e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (330, '095', 'a', 'campos', '1.05.01.02-9 FÃ­sica ClÃ¡ssica e FÃ­sica QuÃ¢ntica; MecÃ¢nica e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (331, '095', 'a', '1.05.01.03-7', '1.05.01.03-7 Relatividade e GravitaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (332, '095', 'a', 'relatividade', '1.05.01.03-7 Relatividade e GravitaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (333, '095', 'a', 'gravitacao', '1.05.01.03-7 Relatividade e GravitaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (334, '095', 'a', '1.05.01.04-5', '1.05.01.04-5 FÃ­sica EstatÃ­stica e TermodinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (335, '095', 'a', 'fisica', '1.05.01.04-5 FÃ­sica EstatÃ­stica e TermodinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (336, '095', 'a', 'estatistica', '1.05.01.04-5 FÃ­sica EstatÃ­stica e TermodinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (337, '095', 'a', 'termodinamica', '1.05.01.04-5 FÃ­sica EstatÃ­stica e TermodinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (338, '095', 'a', '1.05.01.05-3', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (339, '095', 'a', 'metrologia,', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (340, '095', 'a', 'tecnicas', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (341, '095', 'a', 'gerais', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (342, '095', 'a', 'de', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (343, '095', 'a', 'laboratorio,', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (344, '095', 'a', 'sistema', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (345, '095', 'a', 'de', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (346, '095', 'a', 'instrumentacao', '1.05.01.05-3 Metrologia, TÃ©cnicas Gerais de LaboratÃ³rio, Sistema de InstrumentaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (347, '095', 'a', '1.05.01.06-1', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (348, '095', 'a', 'instrumentacao', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (349, '095', 'a', 'especifica', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (350, '095', 'a', 'de', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (351, '095', 'a', 'uso', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (352, '095', 'a', 'geral', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (353, '095', 'a', 'em', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (354, '095', 'a', 'fisica', '1.05.01.06-1 InstrumentaÃ§Ã£o EspecÃ­fica de Uso Geral em FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (355, '095', 'a', '1.05.02.00-9', '1.05.02.00-9 Ãreas ClÃ¡ssicas de Fenomenologia e suas AplicaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (356, '095', 'a', 'areas', '1.05.02.00-9 Ãreas ClÃ¡ssicas de Fenomenologia e suas AplicaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (357, '095', 'a', 'classicas', '1.05.02.00-9 Ãreas ClÃ¡ssicas de Fenomenologia e suas AplicaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (358, '095', 'a', 'de', '1.05.02.00-9 Ãreas ClÃ¡ssicas de Fenomenologia e suas AplicaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (359, '095', 'a', 'fenomenologia', '1.05.02.00-9 Ãreas ClÃ¡ssicas de Fenomenologia e suas AplicaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (360, '095', 'a', 'suas', '1.05.02.00-9 Ãreas ClÃ¡ssicas de Fenomenologia e suas AplicaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (361, '095', 'a', 'aplicacoes', '1.05.02.00-9 Ãreas ClÃ¡ssicas de Fenomenologia e suas AplicaÃ§Ãµes', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (362, '095', 'a', '1.05.02.01-7', '1.05.02.01-7 Eletricidade e Magnetismo; Campos e PartÃ­culas Carregadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (363, '095', 'a', 'eletricidade', '1.05.02.01-7 Eletricidade e Magnetismo; Campos e PartÃ­culas Carregadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (364, '095', 'a', 'magnetismo;', '1.05.02.01-7 Eletricidade e Magnetismo; Campos e PartÃ­culas Carregadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (365, '095', 'a', 'campos', '1.05.02.01-7 Eletricidade e Magnetismo; Campos e PartÃ­culas Carregadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (366, '095', 'a', 'particulas', '1.05.02.01-7 Eletricidade e Magnetismo; Campos e PartÃ­culas Carregadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (367, '095', 'a', 'carregadas', '1.05.02.01-7 Eletricidade e Magnetismo; Campos e PartÃ­culas Carregadas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (368, '095', 'a', '1.05.02.02-5', '1.05.02.02-5 Ã“tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (369, '095', 'a', 'otica', '1.05.02.02-5 Ã“tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (370, '095', 'a', '1.05.02.03-3', '1.05.02.03-3 AcÃºstica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (371, '095', 'a', 'acustica', '1.05.02.03-3 AcÃºstica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (372, '095', 'a', '1.05.02.04-1', '1.05.02.04-1 TransferÃªncia de Calor; Processos TÃ©rmicos e TermodinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (373, '095', 'a', 'transferencia', '1.05.02.04-1 TransferÃªncia de Calor; Processos TÃ©rmicos e TermodinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (374, '095', 'a', 'de', '1.05.02.04-1 TransferÃªncia de Calor; Processos TÃ©rmicos e TermodinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (375, '095', 'a', 'calor;', '1.05.02.04-1 TransferÃªncia de Calor; Processos TÃ©rmicos e TermodinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (376, '095', 'a', 'processos', '1.05.02.04-1 TransferÃªncia de Calor; Processos TÃ©rmicos e TermodinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (377, '095', 'a', 'termicos', '1.05.02.04-1 TransferÃªncia de Calor; Processos TÃ©rmicos e TermodinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (378, '095', 'a', 'termodinamicos', '1.05.02.04-1 TransferÃªncia de Calor; Processos TÃ©rmicos e TermodinÃ¢micos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (379, '095', 'a', '1.05.02.05-0', '1.05.02.05-0 MecÃ¢nica, Elasticidade e Reologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (380, '095', 'a', 'mecanica,', '1.05.02.05-0 MecÃ¢nica, Elasticidade e Reologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (381, '095', 'a', 'elasticidade', '1.05.02.05-0 MecÃ¢nica, Elasticidade e Reologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (382, '095', 'a', 'reologia', '1.05.02.05-0 MecÃ¢nica, Elasticidade e Reologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (383, '095', 'a', '1.05.02.06-8', '1.05.02.06-8 DinÃ¢mica dos Fluidos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (384, '095', 'a', 'dinamica', '1.05.02.06-8 DinÃ¢mica dos Fluidos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (385, '095', 'a', 'dos', '1.05.02.06-8 DinÃ¢mica dos Fluidos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (386, '095', 'a', 'fluidos', '1.05.02.06-8 DinÃ¢mica dos Fluidos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (387, '095', 'a', '1.05.03.00-5', '1.05.03.00-5 FÃ­sica das PartÃ­culas Elementares e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (388, '095', 'a', 'fisica', '1.05.03.00-5 FÃ­sica das PartÃ­culas Elementares e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (389, '095', 'a', 'das', '1.05.03.00-5 FÃ­sica das PartÃ­culas Elementares e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (390, '095', 'a', 'particulas', '1.05.03.00-5 FÃ­sica das PartÃ­culas Elementares e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (391, '095', 'a', 'elementares', '1.05.03.00-5 FÃ­sica das PartÃ­culas Elementares e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (392, '095', 'a', 'campos', '1.05.03.00-5 FÃ­sica das PartÃ­culas Elementares e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (393, '095', 'a', '1.05.03.01-3', '1.05.03.01-3 Teoria Geral de PartÃ­culas e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (394, '095', 'a', 'teoria', '1.05.03.01-3 Teoria Geral de PartÃ­culas e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (395, '095', 'a', 'geral', '1.05.03.01-3 Teoria Geral de PartÃ­culas e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (396, '095', 'a', 'de', '1.05.03.01-3 Teoria Geral de PartÃ­culas e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (397, '095', 'a', 'particulas', '1.05.03.01-3 Teoria Geral de PartÃ­culas e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (398, '095', 'a', 'campos', '1.05.03.01-3 Teoria Geral de PartÃ­culas e Campos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (399, '095', 'a', '1.05.03.02-1', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (400, '095', 'a', 'teorias', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (401, '095', 'a', 'especificas', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (402, '095', 'a', 'modelos', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (403, '095', 'a', 'de', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (404, '095', 'a', 'interacao;', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (405, '095', 'a', 'sistematica', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (406, '095', 'a', 'de', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (407, '095', 'a', 'particulas;', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (408, '095', 'a', 'raios', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (409, '095', 'a', 'cosmicos', '1.05.03.02-1 Teorias EspecÃ­ficas e Modelos de InteraÃ§Ã£o; Sistematica de PartÃ­culas; Raios CÃ³smicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (410, '095', 'a', '1.05.03.03-0', '1.05.03.03-0 ReaÃ§Ãµes EspecÃ­ficas e Fenomiologia de PartÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (411, '095', 'a', 'reacoes', '1.05.03.03-0 ReaÃ§Ãµes EspecÃ­ficas e Fenomiologia de PartÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (412, '095', 'a', 'especificas', '1.05.03.03-0 ReaÃ§Ãµes EspecÃ­ficas e Fenomiologia de PartÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (413, '095', 'a', 'fenomiologia', '1.05.03.03-0 ReaÃ§Ãµes EspecÃ­ficas e Fenomiologia de PartÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (414, '095', 'a', 'de', '1.05.03.03-0 ReaÃ§Ãµes EspecÃ­ficas e Fenomiologia de PartÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (415, '095', 'a', 'particulas', '1.05.03.03-0 ReaÃ§Ãµes EspecÃ­ficas e Fenomiologia de PartÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (416, '095', 'a', '1.05.03.04-8', '1.05.03.04-8 Propriedades de PartÃ­culas EspecÃ­ficas e RessonÃ¢ncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (417, '095', 'a', 'propriedades', '1.05.03.04-8 Propriedades de PartÃ­culas EspecÃ­ficas e RessonÃ¢ncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (418, '095', 'a', 'de', '1.05.03.04-8 Propriedades de PartÃ­culas EspecÃ­ficas e RessonÃ¢ncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (419, '095', 'a', 'particulas', '1.05.03.04-8 Propriedades de PartÃ­culas EspecÃ­ficas e RessonÃ¢ncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (420, '095', 'a', 'especificas', '1.05.03.04-8 Propriedades de PartÃ­culas EspecÃ­ficas e RessonÃ¢ncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (421, '095', 'a', 'ressonancias', '1.05.03.04-8 Propriedades de PartÃ­culas EspecÃ­ficas e RessonÃ¢ncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (422, '095', 'a', '1.05.04.00-1', '1.05.04.00-1 FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (423, '095', 'a', 'fisica', '1.05.04.00-1 FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (424, '095', 'a', 'nuclear', '1.05.04.00-1 FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (425, '095', 'a', '1.05.04.01-0', '1.05.04.01-0 Estrutura Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (426, '095', 'a', 'estrutura', '1.05.04.01-0 Estrutura Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (427, '095', 'a', 'nuclear', '1.05.04.01-0 Estrutura Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (428, '095', 'a', '1.05.04.02-8', '1.05.04.02-8 DesintegraÃ§Ã£o Nuclear e Radioatividade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (429, '095', 'a', 'desintegracao', '1.05.04.02-8 DesintegraÃ§Ã£o Nuclear e Radioatividade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (430, '095', 'a', 'nuclear', '1.05.04.02-8 DesintegraÃ§Ã£o Nuclear e Radioatividade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (431, '095', 'a', 'radioatividade', '1.05.04.02-8 DesintegraÃ§Ã£o Nuclear e Radioatividade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (432, '095', 'a', '1.05.04.03-6', '1.05.04.03-6 ReaÃ§Ãµes Nucleares e Espalhamento Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (433, '095', 'a', 'reacoes', '1.05.04.03-6 ReaÃ§Ãµes Nucleares e Espalhamento Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (434, '095', 'a', 'nucleares', '1.05.04.03-6 ReaÃ§Ãµes Nucleares e Espalhamento Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (435, '095', 'a', 'espalhamento', '1.05.04.03-6 ReaÃ§Ãµes Nucleares e Espalhamento Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (436, '095', 'a', 'geral', '1.05.04.03-6 ReaÃ§Ãµes Nucleares e Espalhamento Geral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (437, '095', 'a', '1.05.04.04-4', '1.05.04.04-4 ReaÃ§Ãµes Nucleares e Espalhamento (ReaÃ§Ãµes EspecÃ­ficas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (438, '095', 'a', 'reacoes', '1.05.04.04-4 ReaÃ§Ãµes Nucleares e Espalhamento (ReaÃ§Ãµes EspecÃ­ficas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (439, '095', 'a', 'nucleares', '1.05.04.04-4 ReaÃ§Ãµes Nucleares e Espalhamento (ReaÃ§Ãµes EspecÃ­ficas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (440, '095', 'a', 'espalhamento', '1.05.04.04-4 ReaÃ§Ãµes Nucleares e Espalhamento (ReaÃ§Ãµes EspecÃ­ficas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (441, '095', 'a', '(reacoes', '1.05.04.04-4 ReaÃ§Ãµes Nucleares e Espalhamento (ReaÃ§Ãµes EspecÃ­ficas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (442, '095', 'a', 'especificas)', '1.05.04.04-4 ReaÃ§Ãµes Nucleares e Espalhamento (ReaÃ§Ãµes EspecÃ­ficas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (443, '095', 'a', '1.05.04.05-2', '1.05.04.05-2 Propriedades de NÃºcleos EspecÃ­ficos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (444, '095', 'a', 'propriedades', '1.05.04.05-2 Propriedades de NÃºcleos EspecÃ­ficos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (445, '095', 'a', 'de', '1.05.04.05-2 Propriedades de NÃºcleos EspecÃ­ficos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (446, '095', 'a', 'nucleos', '1.05.04.05-2 Propriedades de NÃºcleos EspecÃ­ficos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (447, '095', 'a', 'especificos', '1.05.04.05-2 Propriedades de NÃºcleos EspecÃ­ficos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (448, '095', 'a', '1.05.04.06-0', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (449, '095', 'a', 'metodos', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (450, '095', 'a', 'experimentais', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (451, '095', 'a', 'instrumentacao', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (452, '095', 'a', 'para', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (453, '095', 'a', 'particulas', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (454, '095', 'a', 'elementares', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (455, '095', 'a', 'fisica', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (456, '095', 'a', 'nuclear', '1.05.04.06-0 MÃ©todos Experimentais e InstrumentaÃ§Ã£o para PartÃ­culas Elementares e FÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (457, '095', 'a', '1.05.05.00-8', '1.05.05.00-8 FÃ­sica AtÃ´mica e MolÃ©cular', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (458, '095', 'a', 'fisica', '1.05.05.00-8 FÃ­sica AtÃ´mica e MolÃ©cular', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (459, '095', 'a', 'atomica', '1.05.05.00-8 FÃ­sica AtÃ´mica e MolÃ©cular', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (460, '095', 'a', 'molecular', '1.05.05.00-8 FÃ­sica AtÃ´mica e MolÃ©cular', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (461, '095', 'a', '1.05.05.01-6', '1.05.05.01-6 Estrutura EletrÃ´nica de Ãtomos e MolÃ©culas; Teoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (462, '095', 'a', 'estrutura', '1.05.05.01-6 Estrutura EletrÃ´nica de Ãtomos e MolÃ©culas; Teoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (463, '095', 'a', 'eletronica', '1.05.05.01-6 Estrutura EletrÃ´nica de Ãtomos e MolÃ©culas; Teoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (464, '095', 'a', 'de', '1.05.05.01-6 Estrutura EletrÃ´nica de Ãtomos e MolÃ©culas; Teoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (465, '095', 'a', 'atomos', '1.05.05.01-6 Estrutura EletrÃ´nica de Ãtomos e MolÃ©culas; Teoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (466, '095', 'a', 'moleculas;', '1.05.05.01-6 Estrutura EletrÃ´nica de Ãtomos e MolÃ©culas; Teoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (467, '095', 'a', 'teoria', '1.05.05.01-6 Estrutura EletrÃ´nica de Ãtomos e MolÃ©culas; Teoria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (468, '095', 'a', '1.05.05.02-4', '1.05.05.02-4 Espectros AtÃ´micos e IntegraÃ§Ã£o de FÃ³tons', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (469, '095', 'a', 'espectros', '1.05.05.02-4 Espectros AtÃ´micos e IntegraÃ§Ã£o de FÃ³tons', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (470, '095', 'a', 'atomicos', '1.05.05.02-4 Espectros AtÃ´micos e IntegraÃ§Ã£o de FÃ³tons', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (471, '095', 'a', 'integracao', '1.05.05.02-4 Espectros AtÃ´micos e IntegraÃ§Ã£o de FÃ³tons', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (472, '095', 'a', 'de', '1.05.05.02-4 Espectros AtÃ´micos e IntegraÃ§Ã£o de FÃ³tons', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (473, '095', 'a', 'fotons', '1.05.05.02-4 Espectros AtÃ´micos e IntegraÃ§Ã£o de FÃ³tons', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (474, '095', 'a', '1.05.05.03-2', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (475, '095', 'a', 'espectros', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (476, '095', 'a', 'moleculares', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (477, '095', 'a', 'interacoes', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (478, '095', 'a', 'de', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (479, '095', 'a', 'fotons', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (480, '095', 'a', 'com', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (481, '095', 'a', 'moleculas', '1.05.05.03-2 Espectros MolÃ©culares e InteraÃ§Ãµes de FÃ³tons com MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (482, '095', 'a', '1.05.05.04-0', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (483, '095', 'a', 'processos', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (484, '095', 'a', 'de', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (485, '095', 'a', 'colisao', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (486, '095', 'a', 'interacoes', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (487, '095', 'a', 'de', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (488, '095', 'a', 'atomos', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (489, '095', 'a', 'moleculas', '1.05.05.04-0 Processos de ColisÃ£o e InteraÃ§Ãµes de Ãtomos e MolÃ©culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (490, '095', 'a', '1.05.05.05-9', '1.05.05.05-9 Inf.Sobre Ãtomos e MolÃ©culas Obtidos Experimentalmente;InstrumentaÃ§Ã£o e TÃ©cnicas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (491, '095', 'a', 'inf.sobre', '1.05.05.05-9 Inf.Sobre Ãtomos e MolÃ©culas Obtidos Experimentalmente;InstrumentaÃ§Ã£o e TÃ©cnicas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (492, '095', 'a', 'atomos', '1.05.05.05-9 Inf.Sobre Ãtomos e MolÃ©culas Obtidos Experimentalmente;InstrumentaÃ§Ã£o e TÃ©cnicas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (493, '095', 'a', 'moleculas', '1.05.05.05-9 Inf.Sobre Ãtomos e MolÃ©culas Obtidos Experimentalmente;InstrumentaÃ§Ã£o e TÃ©cnicas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (494, '095', 'a', 'obtidos', '1.05.05.05-9 Inf.Sobre Ãtomos e MolÃ©culas Obtidos Experimentalmente;InstrumentaÃ§Ã£o e TÃ©cnicas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (495, '095', 'a', 'experimentalmente;instrumentacao', '1.05.05.05-9 Inf.Sobre Ãtomos e MolÃ©culas Obtidos Experimentalmente;InstrumentaÃ§Ã£o e TÃ©cnicas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (496, '095', 'a', 'tecnicas', '1.05.05.05-9 Inf.Sobre Ãtomos e MolÃ©culas Obtidos Experimentalmente;InstrumentaÃ§Ã£o e TÃ©cnicas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (497, '095', 'a', '1.05.05.06-7', '1.05.05.06-7 Estudos de Ãtomos e MolÃ©culas Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (498, '095', 'a', 'estudos', '1.05.05.06-7 Estudos de Ãtomos e MolÃ©culas Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (499, '095', 'a', 'de', '1.05.05.06-7 Estudos de Ãtomos e MolÃ©culas Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (500, '095', 'a', 'atomos', '1.05.05.06-7 Estudos de Ãtomos e MolÃ©culas Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (501, '095', 'a', 'moleculas', '1.05.05.06-7 Estudos de Ãtomos e MolÃ©culas Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (502, '095', 'a', 'especiais', '1.05.05.06-7 Estudos de Ãtomos e MolÃ©culas Especiais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (503, '095', 'a', '1.05.06.00-4', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (504, '095', 'a', 'fisica', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (505, '095', 'a', 'dos', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (506, '095', 'a', 'fluidos,', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (507, '095', 'a', 'fisica', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (508, '095', 'a', 'de', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (509, '095', 'a', 'plasmas', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (510, '095', 'a', 'descargas', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (511, '095', 'a', 'eletricas', '1.05.06.00-4 FÃ­sica dos Fluidos, FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (512, '095', 'a', '1.05.06.01-2', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (513, '095', 'a', 'cinetica', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (514, '095', 'a', 'teoria', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (515, '095', 'a', 'de', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (516, '095', 'a', 'transporte', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (517, '095', 'a', 'de', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (518, '095', 'a', 'fluidos;', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (519, '095', 'a', 'propriedades', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (520, '095', 'a', 'fisicas', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (521, '095', 'a', 'de', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (522, '095', 'a', 'gases', '1.05.06.01-2 CinÃ©tica e Teoria de Transporte de Fluidos; Propriedades FÃ­sicas de Gases', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (523, '095', 'a', '1.05.06.02-0', '1.05.06.02-0 FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (524, '095', 'a', 'fisica', '1.05.06.02-0 FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (525, '095', 'a', 'de', '1.05.06.02-0 FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (526, '095', 'a', 'plasmas', '1.05.06.02-0 FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (527, '095', 'a', 'descargas', '1.05.06.02-0 FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (528, '095', 'a', 'eletricas', '1.05.06.02-0 FÃ­sica de Plasmas e Descargas ElÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (529, '095', 'a', '1.05.07.00-0', '1.05.07.00-0 FÃ­sica da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (530, '095', 'a', 'fisica', '1.05.07.00-0 FÃ­sica da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (531, '095', 'a', 'da', '1.05.07.00-0 FÃ­sica da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (532, '095', 'a', 'materia', '1.05.07.00-0 FÃ­sica da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (533, '095', 'a', 'condensada', '1.05.07.00-0 FÃ­sica da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (534, '095', 'a', '1.05.07.01-9', '1.05.07.01-9 Estrutura de LÃ­quidos e SÃ³lidos; Cristalografia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (535, '095', 'a', 'estrutura', '1.05.07.01-9 Estrutura de LÃ­quidos e SÃ³lidos; Cristalografia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (536, '095', 'a', 'de', '1.05.07.01-9 Estrutura de LÃ­quidos e SÃ³lidos; Cristalografia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (537, '095', 'a', 'liquidos', '1.05.07.01-9 Estrutura de LÃ­quidos e SÃ³lidos; Cristalografia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (538, '095', 'a', 'solidos;', '1.05.07.01-9 Estrutura de LÃ­quidos e SÃ³lidos; Cristalografia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (539, '095', 'a', 'cristalografia', '1.05.07.01-9 Estrutura de LÃ­quidos e SÃ³lidos; Cristalografia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (540, '095', 'a', '1.05.07.02-7', '1.05.07.02-7 Propriedades MecÃ¢nicas e AcÃºsticas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (541, '095', 'a', 'propriedades', '1.05.07.02-7 Propriedades MecÃ¢nicas e AcÃºsticas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (542, '095', 'a', 'mecanicas', '1.05.07.02-7 Propriedades MecÃ¢nicas e AcÃºsticas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (543, '095', 'a', 'acusticas', '1.05.07.02-7 Propriedades MecÃ¢nicas e AcÃºsticas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (544, '095', 'a', 'da', '1.05.07.02-7 Propriedades MecÃ¢nicas e AcÃºsticas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (545, '095', 'a', 'materia', '1.05.07.02-7 Propriedades MecÃ¢nicas e AcÃºsticas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (546, '095', 'a', 'condensada', '1.05.07.02-7 Propriedades MecÃ¢nicas e AcÃºsticas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (547, '095', 'a', '1.05.07.03-5', '1.05.07.03-5 DinÃ¢mica da Rede e EstatÃ­stica de Cristais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (548, '095', 'a', 'dinamica', '1.05.07.03-5 DinÃ¢mica da Rede e EstatÃ­stica de Cristais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (549, '095', 'a', 'da', '1.05.07.03-5 DinÃ¢mica da Rede e EstatÃ­stica de Cristais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (550, '095', 'a', 'rede', '1.05.07.03-5 DinÃ¢mica da Rede e EstatÃ­stica de Cristais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (551, '095', 'a', 'estatistica', '1.05.07.03-5 DinÃ¢mica da Rede e EstatÃ­stica de Cristais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (552, '095', 'a', 'de', '1.05.07.03-5 DinÃ¢mica da Rede e EstatÃ­stica de Cristais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (553, '095', 'a', 'cristais', '1.05.07.03-5 DinÃ¢mica da Rede e EstatÃ­stica de Cristais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (554, '095', 'a', '1.05.07.04-3', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (555, '095', 'a', 'equacao', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (556, '095', 'a', 'de', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (557, '095', 'a', 'estado,', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (558, '095', 'a', 'equilibrio', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (559, '095', 'a', 'de', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (560, '095', 'a', 'fases', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (561, '095', 'a', 'transicoes', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (562, '095', 'a', 'de', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (563, '095', 'a', 'fase', '1.05.07.04-3 EquaÃ§Ã£o de Estado, EquilÃ­brio de Fases e TransiÃ§Ãµes de Fase', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (564, '095', 'a', '1.05.07.05-1', '1.05.07.05-1 Propriedades TÃ©rmicas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (565, '095', 'a', 'propriedades', '1.05.07.05-1 Propriedades TÃ©rmicas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (566, '095', 'a', 'termicas', '1.05.07.05-1 Propriedades TÃ©rmicas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (567, '095', 'a', 'da', '1.05.07.05-1 Propriedades TÃ©rmicas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (568, '095', 'a', 'materia', '1.05.07.05-1 Propriedades TÃ©rmicas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (569, '095', 'a', 'condensada', '1.05.07.05-1 Propriedades TÃ©rmicas da MatÃ©ria Condensada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (570, '095', 'a', '1.05.07.06-0', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (571, '095', 'a', 'propriedades', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (572, '095', 'a', 'de', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (573, '095', 'a', 'transportes', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (574, '095', 'a', 'de', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (575, '095', 'a', 'materia', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (576, '095', 'a', 'condensada', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (577, '095', 'a', '(nao', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (578, '095', 'a', 'eletronicas)', '1.05.07.06-0 Propriedades de Transportes de MatÃ©ria Condensada (NÃ£o EletrÃ´nicas)', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (579, '095', 'a', '1.05.07.07-8', '1.05.07.07-8 Campos QuÃ¢nticos e SÃ³lidos, HÃ©lio, LÃ­quido, SÃ³lido', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (580, '095', 'a', 'campos', '1.05.07.07-8 Campos QuÃ¢nticos e SÃ³lidos, HÃ©lio, LÃ­quido, SÃ³lido', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (581, '095', 'a', 'quanticos', '1.05.07.07-8 Campos QuÃ¢nticos e SÃ³lidos, HÃ©lio, LÃ­quido, SÃ³lido', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (582, '095', 'a', 'solidos,', '1.05.07.07-8 Campos QuÃ¢nticos e SÃ³lidos, HÃ©lio, LÃ­quido, SÃ³lido', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (583, '095', 'a', 'helio,', '1.05.07.07-8 Campos QuÃ¢nticos e SÃ³lidos, HÃ©lio, LÃ­quido, SÃ³lido', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (584, '095', 'a', 'liquido,', '1.05.07.07-8 Campos QuÃ¢nticos e SÃ³lidos, HÃ©lio, LÃ­quido, SÃ³lido', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (585, '095', 'a', 'solido', '1.05.07.07-8 Campos QuÃ¢nticos e SÃ³lidos, HÃ©lio, LÃ­quido, SÃ³lido', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (586, '095', 'a', '1.05.07.08-6', '1.05.07.08-6 SuperfÃ­cies e Interfaces; PelÃ­culas e Filamentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (587, '095', 'a', 'superficies', '1.05.07.08-6 SuperfÃ­cies e Interfaces; PelÃ­culas e Filamentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (588, '095', 'a', 'interfaces;', '1.05.07.08-6 SuperfÃ­cies e Interfaces; PelÃ­culas e Filamentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (589, '095', 'a', 'peliculas', '1.05.07.08-6 SuperfÃ­cies e Interfaces; PelÃ­culas e Filamentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (590, '095', 'a', 'filamentos', '1.05.07.08-6 SuperfÃ­cies e Interfaces; PelÃ­culas e Filamentos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (591, '095', 'a', '1.05.07.09-4', '1.05.07.09-4 Estados EletrÃ´nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (592, '095', 'a', 'estados', '1.05.07.09-4 Estados EletrÃ´nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (593, '095', 'a', 'eletronicos', '1.05.07.09-4 Estados EletrÃ´nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (594, '095', 'a', '1.05.07.10-8', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (595, '095', 'a', 'transp.eletronicos', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (596, '095', 'a', 'prop.', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (597, '095', 'a', 'eletricas', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (598, '095', 'a', 'de', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (599, '095', 'a', 'superficies;', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (600, '095', 'a', 'interfaces', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (601, '095', 'a', 'peliculas', '1.05.07.10-8 Transp.EletrÃ´nicos e Prop. ElÃ©tricas de SuperfÃ­cies; Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (602, '095', 'a', '1.05.07.11-6', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (603, '095', 'a', 'estruturas', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (604, '095', 'a', 'eletronicas', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (605, '095', 'a', 'propriedades', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (606, '095', 'a', 'eletricas', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (607, '095', 'a', 'de', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (608, '095', 'a', 'superficies', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (609, '095', 'a', 'interfaces', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (610, '095', 'a', 'peliculas', '1.05.07.11-6 Estruturas EletrÃ´nicas e Propriedades ElÃ©tricas de SuperfÃ­cies Interfaces e PelÃ­culas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (611, '095', 'a', '1.05.07.12-4', '1.05.07.12-4 Supercondutividade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (612, '095', 'a', 'supercondutividade', '1.05.07.12-4 Supercondutividade', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (613, '095', 'a', '1.05.07.13-2', '1.05.07.13-2 Materiais MagnÃ©ticos e Propriedades MagnÃ©ticas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (614, '095', 'a', 'materiais', '1.05.07.13-2 Materiais MagnÃ©ticos e Propriedades MagnÃ©ticas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (615, '095', 'a', 'magneticos', '1.05.07.13-2 Materiais MagnÃ©ticos e Propriedades MagnÃ©ticas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (616, '095', 'a', 'propriedades', '1.05.07.13-2 Materiais MagnÃ©ticos e Propriedades MagnÃ©ticas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (617, '095', 'a', 'magneticas', '1.05.07.13-2 Materiais MagnÃ©ticos e Propriedades MagnÃ©ticas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (618, '095', 'a', '1.05.07.14-0', '1.05.07.14-0 RessonÃ¢ncia Mag.e Relax.Na Mat.Condens;Efeitos Mosbauer;Corr.Ang.Pertubada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (619, '095', 'a', 'ressonancia', '1.05.07.14-0 RessonÃ¢ncia Mag.e Relax.Na Mat.Condens;Efeitos Mosbauer;Corr.Ang.Pertubada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (620, '095', 'a', 'mag.e', '1.05.07.14-0 RessonÃ¢ncia Mag.e Relax.Na Mat.Condens;Efeitos Mosbauer;Corr.Ang.Pertubada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (621, '095', 'a', 'relax.na', '1.05.07.14-0 RessonÃ¢ncia Mag.e Relax.Na Mat.Condens;Efeitos Mosbauer;Corr.Ang.Pertubada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (622, '095', 'a', 'mat.condens;efeitos', '1.05.07.14-0 RessonÃ¢ncia Mag.e Relax.Na Mat.Condens;Efeitos Mosbauer;Corr.Ang.Pertubada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (623, '095', 'a', 'mosbauer;corr.ang.pertubada', '1.05.07.14-0 RessonÃ¢ncia Mag.e Relax.Na Mat.Condens;Efeitos Mosbauer;Corr.Ang.Pertubada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (624, '095', 'a', '1.05.07.15-9', '1.05.07.15-9 Materiais DielÃ©tricos e Propriedades DielÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (625, '095', 'a', 'materiais', '1.05.07.15-9 Materiais DielÃ©tricos e Propriedades DielÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (626, '095', 'a', 'dieletricos', '1.05.07.15-9 Materiais DielÃ©tricos e Propriedades DielÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (627, '095', 'a', 'propriedades', '1.05.07.15-9 Materiais DielÃ©tricos e Propriedades DielÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (628, '095', 'a', 'dieletricas', '1.05.07.15-9 Materiais DielÃ©tricos e Propriedades DielÃ©tricas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (629, '095', 'a', '1.05.07.16-7', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (630, '095', 'a', 'prop.oticas', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (631, '095', 'a', 'espectrosc.da', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (632, '095', 'a', 'mat.condens;outras', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (633, '095', 'a', 'inter.da', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (634, '095', 'a', 'mat.com', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (635, '095', 'a', 'rad.e', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (636, '095', 'a', 'part.', '1.05.07.16-7 Prop.Ã“ticas e Espectrosc.da Mat.Condens;Outras Inter.da Mat.Com Rad.e Part.', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (637, '095', 'a', '1.05.07.17-5', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (638, '095', 'a', 'emissao', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (639, '095', 'a', 'eletronica', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (640, '095', 'a', 'ionica', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (641, '095', 'a', 'por', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (642, '095', 'a', 'liquidos', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (643, '095', 'a', 'solidos;', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (644, '095', 'a', 'fenomenos', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (645, '095', 'a', 'de', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (646, '095', 'a', 'impacto', '1.05.07.17-5 EmissÃ£o EletrÃ´nica e IÃ´nica por LÃ­quidos e SÃ³lidos; FenÃ´menos de Impacto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (647, '095', 'a', '1.06.00.00-0', '1.06.00.00-0 QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (648, '095', 'a', 'quimica', '1.06.00.00-0 QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (649, '095', 'a', '1.06.01.00-7', '1.06.01.00-7 QuÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (650, '095', 'a', 'quimica', '1.06.01.00-7 QuÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (651, '095', 'a', 'organica', '1.06.01.00-7 QuÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (652, '095', 'a', '1.06.01.01-5', '1.06.01.01-5 Estrutura, ConformaÃ§Ã£o e EstereoquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (653, '095', 'a', 'estrutura,', '1.06.01.01-5 Estrutura, ConformaÃ§Ã£o e EstereoquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (654, '095', 'a', 'conformacao', '1.06.01.01-5 Estrutura, ConformaÃ§Ã£o e EstereoquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (655, '095', 'a', 'estereoquimica', '1.06.01.01-5 Estrutura, ConformaÃ§Ã£o e EstereoquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (656, '095', 'a', '1.06.01.02-3', '1.06.01.02-3 Sintese OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (657, '095', 'a', 'sintese', '1.06.01.02-3 Sintese OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (658, '095', 'a', 'organica', '1.06.01.02-3 Sintese OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (659, '095', 'a', '1.06.01.03-1', '1.06.01.03-1 Fisico-QuÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (660, '095', 'a', 'fisico-quimica', '1.06.01.03-1 Fisico-QuÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (661, '095', 'a', 'organica', '1.06.01.03-1 Fisico-QuÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (662, '095', 'a', '1.06.01.04-0', '1.06.01.04-0 FotoquÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (663, '095', 'a', 'fotoquimica', '1.06.01.04-0 FotoquÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (664, '095', 'a', 'organica', '1.06.01.04-0 FotoquÃ­mica OrgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (665, '095', 'a', '1.06.01.05-8', '1.06.01.05-8 QuÃ­mica dos Produtos Naturais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (666, '095', 'a', 'quimica', '1.06.01.05-8 QuÃ­mica dos Produtos Naturais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (667, '095', 'a', 'dos', '1.06.01.05-8 QuÃ­mica dos Produtos Naturais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (668, '095', 'a', 'produtos', '1.06.01.05-8 QuÃ­mica dos Produtos Naturais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (669, '095', 'a', 'naturais', '1.06.01.05-8 QuÃ­mica dos Produtos Naturais', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (670, '095', 'a', '1.06.01.06-6', '1.06.01.06-6 EvoluÃ§Ã£o, SistemÃ¡tica e Ecologia QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (671, '095', 'a', 'evolucao,', '1.06.01.06-6 EvoluÃ§Ã£o, SistemÃ¡tica e Ecologia QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (672, '095', 'a', 'sistematica', '1.06.01.06-6 EvoluÃ§Ã£o, SistemÃ¡tica e Ecologia QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (673, '095', 'a', 'ecologia', '1.06.01.06-6 EvoluÃ§Ã£o, SistemÃ¡tica e Ecologia QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (674, '095', 'a', 'quimica', '1.06.01.06-6 EvoluÃ§Ã£o, SistemÃ¡tica e Ecologia QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (675, '095', 'a', '1.06.01.07-4', '1.06.01.07-4 Polimeros e ColÃ³ides', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (676, '095', 'a', 'polimeros', '1.06.01.07-4 Polimeros e ColÃ³ides', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (677, '095', 'a', 'coloides', '1.06.01.07-4 Polimeros e ColÃ³ides', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (678, '095', 'a', '1.06.02.00-3', '1.06.02.00-3 QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (679, '095', 'a', 'quimica', '1.06.02.00-3 QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (680, '095', 'a', 'inorganica', '1.06.02.00-3 QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (681, '095', 'a', '1.06.02.01-1', '1.06.02.01-1 Campos de CoordenaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (682, '095', 'a', 'campos', '1.06.02.01-1 Campos de CoordenaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (683, '095', 'a', 'de', '1.06.02.01-1 Campos de CoordenaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (684, '095', 'a', 'coordenacao', '1.06.02.01-1 Campos de CoordenaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (685, '095', 'a', '1.06.02.02-0', '1.06.02.02-0 NÃ£o-Metais e Seus Compostos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (686, '095', 'a', 'nao-metais', '1.06.02.02-0 NÃ£o-Metais e Seus Compostos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (687, '095', 'a', 'seus', '1.06.02.02-0 NÃ£o-Metais e Seus Compostos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (688, '095', 'a', 'compostos', '1.06.02.02-0 NÃ£o-Metais e Seus Compostos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (689, '095', 'a', '1.06.02.03-8', '1.06.02.03-8 Compostos Organo-MetÃ¡licos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (690, '095', 'a', 'compostos', '1.06.02.03-8 Compostos Organo-MetÃ¡licos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (691, '095', 'a', 'organo-metalicos', '1.06.02.03-8 Compostos Organo-MetÃ¡licos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (692, '095', 'a', '1.06.02.04-6', '1.06.02.04-6 DeterminaÃ§Ã£o de Estrutura de Compostos InorgÃ¢nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (693, '095', 'a', 'determinacao', '1.06.02.04-6 DeterminaÃ§Ã£o de Estrutura de Compostos InorgÃ¢nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (694, '095', 'a', 'de', '1.06.02.04-6 DeterminaÃ§Ã£o de Estrutura de Compostos InorgÃ¢nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (695, '095', 'a', 'estrutura', '1.06.02.04-6 DeterminaÃ§Ã£o de Estrutura de Compostos InorgÃ¢nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (696, '095', 'a', 'de', '1.06.02.04-6 DeterminaÃ§Ã£o de Estrutura de Compostos InorgÃ¢nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (697, '095', 'a', 'compostos', '1.06.02.04-6 DeterminaÃ§Ã£o de Estrutura de Compostos InorgÃ¢nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (698, '095', 'a', 'inorganicos', '1.06.02.04-6 DeterminaÃ§Ã£o de Estrutura de Compostos InorgÃ¢nicos', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (699, '095', 'a', '1.06.02.05-4', '1.06.02.05-4 Foto-QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (700, '095', 'a', 'foto-quimica', '1.06.02.05-4 Foto-QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (701, '095', 'a', 'inorganica', '1.06.02.05-4 Foto-QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (702, '095', 'a', '1.06.02.06-2', '1.06.02.06-2 Fisico QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (703, '095', 'a', 'fisico', '1.06.02.06-2 Fisico QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (704, '095', 'a', 'quimica', '1.06.02.06-2 Fisico QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (705, '095', 'a', 'inorganica', '1.06.02.06-2 Fisico QuÃ­mica InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (706, '095', 'a', '1.06.02.07-0', '1.06.02.07-0 QuÃ­mica Bio-InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (707, '095', 'a', 'quimica', '1.06.02.07-0 QuÃ­mica Bio-InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (708, '095', 'a', 'bio-inorganica', '1.06.02.07-0 QuÃ­mica Bio-InorgÃ¢nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (709, '095', 'a', '1.06.03.00-0', '1.06.03.00-0 Fisico-QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (710, '095', 'a', 'fisico-quimica', '1.06.03.00-0 Fisico-QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (711, '095', 'a', '1.06.03.01-8', '1.06.03.01-8 CinÃ©tica QuÃ­mica e CatÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (712, '095', 'a', 'cinetica', '1.06.03.01-8 CinÃ©tica QuÃ­mica e CatÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (713, '095', 'a', 'quimica', '1.06.03.01-8 CinÃ©tica QuÃ­mica e CatÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (714, '095', 'a', 'catalise', '1.06.03.01-8 CinÃ©tica QuÃ­mica e CatÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (715, '095', 'a', '1.06.03.02-6', '1.06.03.02-6 EletroquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (716, '095', 'a', 'eletroquimica', '1.06.03.02-6 EletroquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (717, '095', 'a', '1.06.03.03-4', '1.06.03.03-4 Espectroscopia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (718, '095', 'a', 'espectroscopia', '1.06.03.03-4 Espectroscopia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (719, '095', 'a', '1.06.03.04-2', '1.06.03.04-2 QuÃ­mica de Interfaces', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (720, '095', 'a', 'quimica', '1.06.03.04-2 QuÃ­mica de Interfaces', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (721, '095', 'a', 'de', '1.06.03.04-2 QuÃ­mica de Interfaces', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (722, '095', 'a', 'interfaces', '1.06.03.04-2 QuÃ­mica de Interfaces', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (723, '095', 'a', '1.06.03.05-0', '1.06.03.05-0 QuÃ­mica do Estado Condensado', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (724, '095', 'a', 'quimica', '1.06.03.05-0 QuÃ­mica do Estado Condensado', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (725, '095', 'a', 'do', '1.06.03.05-0 QuÃ­mica do Estado Condensado', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (726, '095', 'a', 'estado', '1.06.03.05-0 QuÃ­mica do Estado Condensado', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (727, '095', 'a', 'condensado', '1.06.03.05-0 QuÃ­mica do Estado Condensado', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (728, '095', 'a', '1.06.03.06-9', '1.06.03.06-9 QuÃ­mica Nuclear e RadioquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (729, '095', 'a', 'quimica', '1.06.03.06-9 QuÃ­mica Nuclear e RadioquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (730, '095', 'a', 'nuclear', '1.06.03.06-9 QuÃ­mica Nuclear e RadioquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (731, '095', 'a', 'radioquimica', '1.06.03.06-9 QuÃ­mica Nuclear e RadioquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (732, '095', 'a', '1.06.03.07-7', '1.06.03.07-7 QuÃ­mica TeÃ³rica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (733, '095', 'a', 'quimica', '1.06.03.07-7 QuÃ­mica TeÃ³rica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (734, '095', 'a', 'teorica', '1.06.03.07-7 QuÃ­mica TeÃ³rica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (735, '095', 'a', '1.06.03.08-5', '1.06.03.08-5 TermodinÃ¢mica QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (736, '095', 'a', 'termodinamica', '1.06.03.08-5 TermodinÃ¢mica QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (737, '095', 'a', 'quimica', '1.06.03.08-5 TermodinÃ¢mica QuÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (738, '095', 'a', '1.06.04.00-6', '1.06.04.00-6 QuÃ­mica AnalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (739, '095', 'a', 'quimica', '1.06.04.00-6 QuÃ­mica AnalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (740, '095', 'a', 'analitica', '1.06.04.00-6 QuÃ­mica AnalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (741, '095', 'a', '1.06.04.01-4', '1.06.04.01-4 SeparaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (742, '095', 'a', 'separacao', '1.06.04.01-4 SeparaÃ§Ã£o', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (743, '095', 'a', '1.06.04.02-2', '1.06.04.02-2 MÃ©todos Ã“ticos de AnÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (744, '095', 'a', 'metodos', '1.06.04.02-2 MÃ©todos Ã“ticos de AnÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (745, '095', 'a', 'oticos', '1.06.04.02-2 MÃ©todos Ã“ticos de AnÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (746, '095', 'a', 'de', '1.06.04.02-2 MÃ©todos Ã“ticos de AnÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (747, '095', 'a', 'analise', '1.06.04.02-2 MÃ©todos Ã“ticos de AnÃ¡lise', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (748, '095', 'a', '1.06.04.03-0', '1.06.04.03-0 EletroanalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (749, '095', 'a', 'eletroanalitica', '1.06.04.03-0 EletroanalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (750, '095', 'a', '1.06.04.04-9', '1.06.04.04-9 Gravimetria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (751, '095', 'a', 'gravimetria', '1.06.04.04-9 Gravimetria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (752, '095', 'a', '1.06.04.05-7', '1.06.04.05-7 Titimetria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (753, '095', 'a', 'titimetria', '1.06.04.05-7 Titimetria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (754, '095', 'a', '1.06.04.06-5', '1.06.04.06-5 InstrumentaÃ§Ã£o AnalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (755, '095', 'a', 'instrumentacao', '1.06.04.06-5 InstrumentaÃ§Ã£o AnalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (756, '095', 'a', 'analitica', '1.06.04.06-5 InstrumentaÃ§Ã£o AnalÃ­tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (757, '095', 'a', '1.06.04.07-3', '1.06.04.07-3 AnÃ¡lise de TraÃ§os e QuÃ­mica Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (758, '095', 'a', 'analise', '1.06.04.07-3 AnÃ¡lise de TraÃ§os e QuÃ­mica Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (759, '095', 'a', 'de', '1.06.04.07-3 AnÃ¡lise de TraÃ§os e QuÃ­mica Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (760, '095', 'a', 'tracos', '1.06.04.07-3 AnÃ¡lise de TraÃ§os e QuÃ­mica Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (761, '095', 'a', 'quimica', '1.06.04.07-3 AnÃ¡lise de TraÃ§os e QuÃ­mica Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (762, '095', 'a', 'ambiental', '1.06.04.07-3 AnÃ¡lise de TraÃ§os e QuÃ­mica Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (763, '095', 'a', '1.07.00.00-5', '1.07.00.00-5 GeoCiÃªncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (764, '095', 'a', 'geociencias', '1.07.00.00-5 GeoCiÃªncias', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (765, '095', 'a', '1.07.01.00-1', '1.07.01.00-1 Geologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (766, '095', 'a', 'geologia', '1.07.01.00-1 Geologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (767, '095', 'a', '1.07.01.01-0', '1.07.01.01-0 Mineralogia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (768, '095', 'a', 'mineralogia', '1.07.01.01-0 Mineralogia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (769, '095', 'a', '1.07.01.02-8', '1.07.01.02-8 Petrologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (770, '095', 'a', 'petrologia', '1.07.01.02-8 Petrologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (771, '095', 'a', '1.07.01.03-6', '1.07.01.03-6 GeoquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (772, '095', 'a', 'geoquimica', '1.07.01.03-6 GeoquÃ­mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (773, '095', 'a', '1.07.01.04-4', '1.07.01.04-4 Geologia Regional', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (774, '095', 'a', 'geologia', '1.07.01.04-4 Geologia Regional', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (775, '095', 'a', 'regional', '1.07.01.04-4 Geologia Regional', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (776, '095', 'a', '1.07.01.05-2', '1.07.01.05-2 GeotectÃ´nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (777, '095', 'a', 'geotectonica', '1.07.01.05-2 GeotectÃ´nica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (778, '095', 'a', '1.07.01.06-0', '1.07.01.06-0 Geocronologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (779, '095', 'a', 'geocronologia', '1.07.01.06-0 Geocronologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (780, '095', 'a', '1.07.01.07-9', '1.07.01.07-9 Cartografia GeolÃ³gica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (781, '095', 'a', 'cartografia', '1.07.01.07-9 Cartografia GeolÃ³gica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (782, '095', 'a', 'geologica', '1.07.01.07-9 Cartografia GeolÃ³gica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (783, '095', 'a', '1.07.01.08-7', '1.07.01.08-7 Metalogenia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (784, '095', 'a', 'metalogenia', '1.07.01.08-7 Metalogenia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (785, '095', 'a', '1.07.01.09-5', '1.07.01.09-5 Hidrogeologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (786, '095', 'a', 'hidrogeologia', '1.07.01.09-5 Hidrogeologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (787, '095', 'a', '1.07.01.10-9', '1.07.01.10-9 ProspecÃ§Ã£o Mineral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (788, '095', 'a', 'prospeccao', '1.07.01.10-9 ProspecÃ§Ã£o Mineral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (789, '095', 'a', 'mineral', '1.07.01.10-9 ProspecÃ§Ã£o Mineral', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (790, '095', 'a', '1.07.01.11-7', '1.07.01.11-7 Sedimentologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (791, '095', 'a', 'sedimentologia', '1.07.01.11-7 Sedimentologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (792, '095', 'a', '1.07.01.12-5', '1.07.01.12-5 Paleontologia EstratigrÃ¡fica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (793, '095', 'a', 'paleontologia', '1.07.01.12-5 Paleontologia EstratigrÃ¡fica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (794, '095', 'a', 'estratigrafica', '1.07.01.12-5 Paleontologia EstratigrÃ¡fica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (795, '095', 'a', '1.07.01.13-3', '1.07.01.13-3 Estratigrafia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (796, '095', 'a', 'estratigrafia', '1.07.01.13-3 Estratigrafia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (797, '095', 'a', '1.07.01.14-1', '1.07.01.14-1 Geologia Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (798, '095', 'a', 'geologia', '1.07.01.14-1 Geologia Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (799, '095', 'a', 'ambiental', '1.07.01.14-1 Geologia Ambiental', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (800, '095', 'a', '1.07.02.00-8', '1.07.02.00-8 GeofÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (801, '095', 'a', 'geofisica', '1.07.02.00-8 GeofÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (802, '095', 'a', '1.07.02.01-6', '1.07.02.01-6 Geomagnetismo', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (803, '095', 'a', 'geomagnetismo', '1.07.02.01-6 Geomagnetismo', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (804, '095', 'a', '1.07.02.02-4', '1.07.02.02-4 Sismologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (805, '095', 'a', 'sismologia', '1.07.02.02-4 Sismologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (806, '095', 'a', '1.07.02.03-2', '1.07.02.03-2 Geotermia e Fluxo TÃ©rmico', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (807, '095', 'a', 'geotermia', '1.07.02.03-2 Geotermia e Fluxo TÃ©rmico', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (808, '095', 'a', 'fluxo', '1.07.02.03-2 Geotermia e Fluxo TÃ©rmico', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (809, '095', 'a', 'termico', '1.07.02.03-2 Geotermia e Fluxo TÃ©rmico', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (810, '095', 'a', '1.07.02.04-0', '1.07.02.04-0 Propriedades FÃ­sicas das Rochas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (811, '095', 'a', 'propriedades', '1.07.02.04-0 Propriedades FÃ­sicas das Rochas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (812, '095', 'a', 'fisicas', '1.07.02.04-0 Propriedades FÃ­sicas das Rochas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (813, '095', 'a', 'das', '1.07.02.04-0 Propriedades FÃ­sicas das Rochas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (814, '095', 'a', 'rochas', '1.07.02.04-0 Propriedades FÃ­sicas das Rochas', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (815, '095', 'a', '1.07.02.05-9', '1.07.02.05-9 GeofÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (816, '095', 'a', 'geofisica', '1.07.02.05-9 GeofÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (817, '095', 'a', 'nuclear', '1.07.02.05-9 GeofÃ­sica Nuclear', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (818, '095', 'a', '1.07.02.06-7', '1.07.02.06-7 Sensoriamento Remoto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (819, '095', 'a', 'sensoriamento', '1.07.02.06-7 Sensoriamento Remoto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (820, '095', 'a', 'remoto', '1.07.02.06-7 Sensoriamento Remoto', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (821, '095', 'a', '1.07.02.07-5', '1.07.02.07-5 Aeronomia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (822, '095', 'a', 'aeronomia', '1.07.02.07-5 Aeronomia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (823, '095', 'a', '1.07.02.08-3', '1.07.02.08-3 Desenvolvimento de InstrumentaÃ§Ã£o GeofÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (824, '095', 'a', 'desenvolvimento', '1.07.02.08-3 Desenvolvimento de InstrumentaÃ§Ã£o GeofÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (825, '095', 'a', 'de', '1.07.02.08-3 Desenvolvimento de InstrumentaÃ§Ã£o GeofÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (826, '095', 'a', 'instrumentacao', '1.07.02.08-3 Desenvolvimento de InstrumentaÃ§Ã£o GeofÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (827, '095', 'a', 'geofisica', '1.07.02.08-3 Desenvolvimento de InstrumentaÃ§Ã£o GeofÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (828, '095', 'a', '1.07.02.09-1', '1.07.02.09-1 GeofÃ­sica Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (829, '095', 'a', 'geofisica', '1.07.02.09-1 GeofÃ­sica Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (830, '095', 'a', 'aplicada', '1.07.02.09-1 GeofÃ­sica Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (831, '095', 'a', '1.07.02.10-5', '1.07.02.10-5 Gravimetria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (832, '095', 'a', 'gravimetria', '1.07.02.10-5 Gravimetria', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (833, '095', 'a', '1.07.03.00-4', '1.07.03.00-4 Meteorologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (834, '095', 'a', 'meteorologia', '1.07.03.00-4 Meteorologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (835, '095', 'a', '1.07.03.01-2', '1.07.03.01-2 Meteorologia DinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (836, '095', 'a', 'meteorologia', '1.07.03.01-2 Meteorologia DinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (837, '095', 'a', 'dinamica', '1.07.03.01-2 Meteorologia DinÃ¢mica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (838, '095', 'a', '1.07.03.02-0', '1.07.03.02-0 Meteorologia SinÃ³tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (839, '095', 'a', 'meteorologia', '1.07.03.02-0 Meteorologia SinÃ³tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (840, '095', 'a', 'sinotica', '1.07.03.02-0 Meteorologia SinÃ³tica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (841, '095', 'a', '1.07.03.03-9', '1.07.03.03-9 Meteorologia FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (842, '095', 'a', 'meteorologia', '1.07.03.03-9 Meteorologia FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (843, '095', 'a', 'fisica', '1.07.03.03-9 Meteorologia FÃ­sica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (844, '095', 'a', '1.07.03.04-7', '1.07.03.04-7 QuÃ­mica da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (845, '095', 'a', 'quimica', '1.07.03.04-7 QuÃ­mica da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (846, '095', 'a', 'da', '1.07.03.04-7 QuÃ­mica da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (847, '095', 'a', 'atmosfera', '1.07.03.04-7 QuÃ­mica da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (848, '095', 'a', '1.07.03.05-5', '1.07.03.05-5 InstrumentaÃ§Ã£o MeteorolÃ³gica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (849, '095', 'a', 'instrumentacao', '1.07.03.05-5 InstrumentaÃ§Ã£o MeteorolÃ³gica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (850, '095', 'a', 'meteorologica', '1.07.03.05-5 InstrumentaÃ§Ã£o MeteorolÃ³gica', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (851, '095', 'a', '1.07.03.06-3', '1.07.03.06-3 Climatologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (852, '095', 'a', 'climatologia', '1.07.03.06-3 Climatologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (853, '095', 'a', '1.07.03.07-1', '1.07.03.07-1 Micrometeorologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (854, '095', 'a', 'micrometeorologia', '1.07.03.07-1 Micrometeorologia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (855, '095', 'a', '1.07.03.08-0', '1.07.03.08-0 Sensoriamento Remoto da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (856, '095', 'a', 'sensoriamento', '1.07.03.08-0 Sensoriamento Remoto da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (857, '095', 'a', 'remoto', '1.07.03.08-0 Sensoriamento Remoto da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (858, '095', 'a', 'da', '1.07.03.08-0 Sensoriamento Remoto da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (859, '095', 'a', 'atmosfera', '1.07.03.08-0 Sensoriamento Remoto da Atmosfera', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (860, '095', 'a', '1.07.03.09-8', '1.07.03.09-8 Meteorologia Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (861, '095', 'a', 'meteorologia', '1.07.03.09-8 Meteorologia Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (862, '095', 'a', 'aplicada', '1.07.03.09-8 Meteorologia Aplicada', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (863, '095', 'a', '1.07.04.00-0', '1.07.04.00-0 Geodesia', NULL);
INSERT INTO biblio_idx_autocomplete (id, datafield, subfield, word, phrase, record_id) VALUES (864, '095', 'a', 'geodesia', '1.07.04.00-0 Geodesia', NULL);
