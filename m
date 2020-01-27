Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57738149E1C
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Jan 2020 02:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LsmBHq0r+D8IkWJ8P75BoCyIBmiLmTeWLlOCmtfkuZA=; b=tDt
	m8R+18B5gZqKmBtMbRsplC4pSJEifpvjLoUZm2JarU1SjGopUaVkEBIb7OsyklihWXsIGvcU/UOcF
	qCIA8VDIXKsndRIrcB0NXVdqbgGDxveJYIn+BrGLGdNAkQsvaFoWqL546QQj+lPuYux3eGq2Y09w2
	IVp5rYhlV4IG5Usp2mEzUjL9c/UJTlp5vTFjZbJ+k1tP2F6oUEtjiMpba0tnXHK/bhJrjg1m+gbFJ
	WLMMA8cjmJRUY0gE9PGLtsn4CEU221wiPOFPHsrYKkRjCabYh99Q+v5xat+NdOeYwl6IWNQv8DDYX
	vhdjVYMafYXceZNcuj9P+jXaRGIkTWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivtV4-0002Zw-Mt; Mon, 27 Jan 2020 01:47:38 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivtUu-0002ZL-TK
 for openwrt-devel@lists.openwrt.org; Mon, 27 Jan 2020 01:47:31 +0000
Received: by mail-ot1-x336.google.com with SMTP id i6so3077260otr.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Jan 2020 17:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=mn3dVYzaRtkvpJNGXCXv1a3NNL4Nzjb4l6P4QQTdt58=;
 b=LvvTjZiMNhTSQ5qJgVWXFZoqw/1d3emQGb3ORFIuSsg8pzU7GxvexeMBUZvvCmx2/h
 vu4LQ/jir3WeghLPrfxoCng8BFFDWOsY5MHICEiNvETo4387eKL8c/XPwpi3qEkrHpVd
 nJKUnMFxMYAXBSyzjX6RvwTUG5BFHr/bpw0KlleAr2ZCm1upjubJhgqBog2uNSmU3njd
 wqF8ep50I34sb7pZyeqiS2ChCHUb9Niu9F7oDvqMe97fjt0fC5zWXTqEVonC/CrjqSI6
 c6276stokfJWBHtQmg7IfkWpZz3nqYgbq5rLIzdrinF9W0HrgGHCHr2lDA51f+NyNctv
 Hf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mn3dVYzaRtkvpJNGXCXv1a3NNL4Nzjb4l6P4QQTdt58=;
 b=JOehfeeZqRXfrGzRFF7A8lkNmCGb1uokXWEw12F/ct/W9q7nHXtyi8Z7mGQ+71xu/w
 2Hne4keg7Jl6wpdWGI7ahTeZCvKFSnhhlIBZM0/pBBPd5ROEJ5b8xGzPpk1h5sK8S6xm
 qLl9e4AZyd8+/+1YAasgdufdVzCK168ej1E5B0x01GFX1tbtgmmjjPRvK00W+xoDfLsY
 nWjm1zulWx0jA2E+WTyJ5Rb4YdKI9doSv/6k+/Bz72W3HHtlVrWIDg5ZJEbn5aTU2shK
 GbQS4a2xCl/oj6gSYt5QoCHMFLBlqqkswDUA/7eJBBFtvT+Ixff0mbphvjq0ok124IPe
 j9Ug==
X-Gm-Message-State: APjAAAX/0zNl37xq2Fy3OzPLaoyKE576hBwZlxie9H6yGbSjWtPkVn9A
 OydaC+WssPeaXx8/okV9RaiUBK0aqxjGVQlYLKhobHEG2KA=
X-Google-Smtp-Source: APXvYqz1jL8TIAUPFtR049gZZBsAPJQGxcmSjP9F2WOK8nDqIveZdpCc5hgqZzp7ae6yPsgyrfepB+OwsiAnT9Ocggw=
X-Received: by 2002:a05:6830:1f13:: with SMTP id
 u19mr10483125otg.237.1580089644864; 
 Sun, 26 Jan 2020 17:47:24 -0800 (PST)
MIME-Version: 1.0
From: Sergey Ponomarev <stokito@gmail.com>
Date: Mon, 27 Jan 2020 03:46:49 +0200
Message-ID: <CADR0UcUXJS4DkSSR_0-ZKhdEOaOwUn09WpJDpG9NMRYNsjQ8Sw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_174728_978278_91DFB753 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stokito[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] uclient-fetch add ability to pass custom http
 headers
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4585993399487434201=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4585993399487434201==
Content-Type: multipart/alternative; boundary="000000000000fed930059d15494a"

--000000000000fed930059d15494a
Content-Type: text/plain; charset="UTF-8"

Hi,

I making a package that internally will perform a HTTP call to OAuth
service and I need to pass `Authorization: Barer token` as a header. The
wget clone uclient-fetch doesn't have such functionality to pass an
additional header while original wget have it. I can use curl but it uses
too much space: uclient-fetch~ 28Kb while curl  ~280kb.
I'm pretty sure that there is thousands of other reasons to pass a custom
header like `Accept: application/json` etc.
So here I made a small patch that adds such functionality to uclient-fetch.
You can specify multiple headers so they all will be stored to raw_headers
list.
uclient-fetch --header="H1: VAL1" --header="H2: VAL2" -O -
http://192.168.1.1/
I tested with Wireshark and all works fine.

Index: uclient-fetch.c
<+>UTF-8
===================================================================
--- uclient-fetch.c (revision fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)
+++ uclient-fetch.c (revision 8a9562d89891ec886192d7693e60065d0985fedd)
@@ -43,6 +43,7 @@

 static const char *user_agent = "uclient-fetch";
 static const char *post_data;
+static const char **raw_headers = NULL;
 static struct ustream_ssl_ctx *ssl_ctx;
 static const struct ustream_ssl_ops *ssl_ops;
 static int quiet = false;
@@ -340,6 +341,7 @@

  uclient_http_reset_headers(cl);
  uclient_http_set_header(cl, "User-Agent", user_agent);
+ uclient_http_set_raw_headers(cl, raw_headers);
  if (cur_resume)
  check_resume_offset(cl);

@@ -458,6 +460,7 @@
  " -P <dir> Set directory for output files\n"
  " --user=<user> HTTP authentication username\n"
  " --password=<password> HTTP authentication password\n"
+ " --header=<header> Add HTTP header\n"
  " --user-agent|-U <str> Set HTTP user agent\n"
  " --post-data=STRING use the POST method; send STRING as the data\n"
  " --spider|-s Spider mode - only check file existence\n"
@@ -512,6 +515,7 @@
  L_CA_CERTIFICATE,
  L_USER,
  L_PASSWORD,
+ L_HEADER,
  L_USER_AGENT,
  L_POST_DATA,
  L_SPIDER,
@@ -527,6 +531,7 @@
  [L_CA_CERTIFICATE] = { "ca-certificate", required_argument },
  [L_USER] = { "user", required_argument },
  [L_PASSWORD] = { "password", required_argument },
+ [L_HEADER] = { "header", required_argument },
  [L_USER_AGENT] = { "user-agent", required_argument },
  [L_POST_DATA] = { "post-data", required_argument },
  [L_SPIDER] = { "spider", no_argument },
@@ -546,6 +551,7 @@
  const char *proxy_url;
  char *username = NULL;
  char *password = NULL;
+ int raw_headers_count = 0;
  struct uclient *cl;
  int longopt_idx = 0;
  bool has_cert = false;
@@ -579,6 +585,16 @@
  break;
  password = strdup(optarg);
  memset(optarg, '*', strlen(optarg));
+ break;
+ case L_HEADER:
+ if (!raw_headers) {
+ // Max possible count of headers is the count of args (argc) - 2
+ // because the first arg is program and last is a URL.
+ // But user may forget the URL and raw_headers is null terminated so max
raw_headers can be argc
+ raw_headers = calloc(argc, sizeof(char *));
+ }
+ raw_headers[raw_headers_count] = optarg;
+ raw_headers_count++;
  break;
  case L_USER_AGENT:
  user_agent = optarg;
Index: uclient-http.c
<+>UTF-8
===================================================================
--- uclient-http.c (revision fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)
+++ uclient-http.c (revision 8a9562d89891ec886192d7693e60065d0985fedd)
@@ -96,6 +96,7 @@

  uint32_t nc;

+ const char **raw_headers;
  struct blob_buf headers;
  struct blob_buf meta;
 };
@@ -589,6 +590,17 @@
  return 0;
 }

+static void
+uclient_http_send_raw_headers(const struct uclient_http *uh) {
+ const char **raw_headers = uh->raw_headers;
+ const char *raw_header = *raw_headers;
+ while (raw_header != NULL) {
+ ustream_printf(uh->us, "%s\r\n", raw_header);
+ raw_headers++;
+ raw_header = *raw_headers;
+ }
+}
+
 static int
 uclient_http_send_headers(struct uclient_http *uh)
 {
@@ -626,6 +638,7 @@
  if (err)
  return err;

+ uclient_http_send_raw_headers(uh);
  ustream_printf(uh->us, "\r\n");

  uh->state = HTTP_STATE_HEADERS_SENT;
@@ -1025,6 +1038,21 @@
  blobmsg_add_string(&uh->headers, name, value);
  return 0;
 }
+
+int
+uclient_http_set_raw_headers(struct uclient *cl, const char **raw_headers)
+{
+ struct uclient_http *uh = container_of(cl, struct uclient_http, uc);
+
+ if (cl->backend != &uclient_backend_http)
+ return -1;
+
+ if (uh->state > HTTP_STATE_INIT)
+ return -1;
+
+ uh->raw_headers = raw_headers;
+ return 0;
+}

 static int
 uclient_http_send_data(struct uclient *cl, const char *buf, unsigned int
len)
Index: uclient.h
<+>UTF-8
===================================================================
--- uclient.h (revision fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)
+++ uclient.h (revision 8a9562d89891ec886192d7693e60065d0985fedd)
@@ -121,6 +121,7 @@

 int uclient_http_reset_headers(struct uclient *cl);
 int uclient_http_set_header(struct uclient *cl, const char *name, const
char *value);
+int uclient_http_set_raw_headers(struct uclient *cl, const char
**raw_headers);
 int uclient_http_set_request_type(struct uclient *cl, const char *type);
 int uclient_http_redirect(struct uclient *cl);

--000000000000fed930059d15494a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I making a package that =
internally will perform a HTTP call to OAuth service and I need to pass `Au=
thorization: Barer token` as a header. The wget clone uclient-fetch doesn&#=
39;t have such functionality to pass an additional header while original wg=
et have it. I can use curl but it uses too much space: uclient-fetch~ 28Kb =
while curl=C2=A0 ~280kb.<br></div><div>I&#39;m pretty sure that there is th=
ousands of other reasons to pass a custom header like `Accept: application/=
json` etc.</div><div>So here I made a small patch that adds such functional=
ity to uclient-fetch. You can specify multiple headers so they all will be =
stored to raw_headers list.</div><div>uclient-fetch --header=3D&quot;H1: VA=
L1&quot; --header=3D&quot;H2: VAL2&quot; -O - <a href=3D"http://192.168.1.1=
/">http://192.168.1.1/</a></div><div>I tested with Wireshark and all works =
fine.<br></div><div><br></div><div>Index: uclient-fetch.c<br>&lt;+&gt;UTF-8=
<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>--- uclient-fe=
tch.c	(revision fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)<br>+++ uclient-fe=
tch.c	(revision 8a9562d89891ec886192d7693e60065d0985fedd)<br>@@ -43,6 +43,7=
 @@<br>=C2=A0<br>=C2=A0static const char *user_agent =3D &quot;uclient-fetc=
h&quot;;<br>=C2=A0static const char *post_data;<br>+static const char **raw=
_headers =3D NULL;<br>=C2=A0static struct ustream_ssl_ctx *ssl_ctx;<br>=C2=
=A0static const struct ustream_ssl_ops *ssl_ops;<br>=C2=A0static int quiet =
=3D false;<br>@@ -340,6 +341,7 @@<br>=C2=A0<br>=C2=A0	uclient_http_reset_he=
aders(cl);<br>=C2=A0	uclient_http_set_header(cl, &quot;User-Agent&quot;, us=
er_agent);<br>+	uclient_http_set_raw_headers(cl, raw_headers);<br>=C2=A0	if=
 (cur_resume)<br>=C2=A0		check_resume_offset(cl);<br>=C2=A0<br>@@ -458,6 +4=
60,7 @@<br>=C2=A0		&quot;	-P &lt;dir&gt;			Set directory for output files\n=
&quot;<br>=C2=A0		&quot;	--user=3D&lt;user&gt;			HTTP authentication userna=
me\n&quot;<br>=C2=A0		&quot;	--password=3D&lt;password&gt;		HTTP authentica=
tion password\n&quot;<br>+		&quot;	--header=3D&lt;header&gt;		Add HTTP head=
er\n&quot;<br>=C2=A0		&quot;	--user-agent|-U &lt;str&gt;		Set HTTP user age=
nt\n&quot;<br>=C2=A0		&quot;	--post-data=3DSTRING		use the POST method; sen=
d STRING as the data\n&quot;<br>=C2=A0		&quot;	--spider|-s			Spider mode - =
only check file existence\n&quot;<br>@@ -512,6 +515,7 @@<br>=C2=A0	L_CA_CER=
TIFICATE,<br>=C2=A0	L_USER,<br>=C2=A0	L_PASSWORD,<br>+	L_HEADER,<br>=C2=A0	=
L_USER_AGENT,<br>=C2=A0	L_POST_DATA,<br>=C2=A0	L_SPIDER,<br>@@ -527,6 +531,=
7 @@<br>=C2=A0	[L_CA_CERTIFICATE] =3D { &quot;ca-certificate&quot;, require=
d_argument },<br>=C2=A0	[L_USER] =3D { &quot;user&quot;, required_argument =
},<br>=C2=A0	[L_PASSWORD] =3D { &quot;password&quot;, required_argument },<=
br>+	[L_HEADER] =3D { &quot;header&quot;, required_argument },<br>=C2=A0	[L=
_USER_AGENT] =3D { &quot;user-agent&quot;, required_argument },<br>=C2=A0	[=
L_POST_DATA] =3D { &quot;post-data&quot;, required_argument },<br>=C2=A0	[L=
_SPIDER] =3D { &quot;spider&quot;, no_argument },<br>@@ -546,6 +551,7 @@<br=
>=C2=A0	const char *proxy_url;<br>=C2=A0	char *username =3D NULL;<br>=C2=A0=
	char *password =3D NULL;<br>+	int raw_headers_count =3D 0;<br>=C2=A0	struc=
t uclient *cl;<br>=C2=A0	int longopt_idx =3D 0;<br>=C2=A0	bool has_cert =3D=
 false;<br>@@ -579,6 +585,16 @@<br>=C2=A0					break;<br>=C2=A0				password =
=3D strdup(optarg);<br>=C2=A0				memset(optarg, &#39;*&#39;, strlen(optarg)=
);<br>+				break;<br>+			case L_HEADER:<br>+				if (!raw_headers) {<br>+			=
		// Max possible count of headers is the count of args (argc) - 2<br>+				=
	// because the first arg is program and last is a URL.<br>+					// But use=
r may forget the URL and raw_headers is null terminated so max raw_headers =
can be argc<br>+					raw_headers =3D calloc(argc, sizeof(char *));<br>+				=
}<br>+				raw_headers[raw_headers_count] =3D optarg;<br>+				raw_headers_co=
unt++;<br>=C2=A0				break;<br>=C2=A0			case L_USER_AGENT:<br>=C2=A0				user=
_agent =3D optarg;<br>Index: uclient-http.c<br>&lt;+&gt;UTF-8<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>--- uclient-http.c	(revision =
fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)<br>+++ uclient-http.c	(revision 8=
a9562d89891ec886192d7693e60065d0985fedd)<br>@@ -96,6 +96,7 @@<br>=C2=A0<br>=
=C2=A0	uint32_t nc;<br>=C2=A0<br>+	const char **raw_headers;<br>=C2=A0	stru=
ct blob_buf headers;<br>=C2=A0	struct blob_buf meta;<br>=C2=A0};<br>@@ -589=
,6 +590,17 @@<br>=C2=A0	return 0;<br>=C2=A0}<br>=C2=A0<br>+static void<br>+=
uclient_http_send_raw_headers(const struct uclient_http *uh) {<br>+	const c=
har **raw_headers =3D uh-&gt;raw_headers;<br>+	const char *raw_header =3D *=
raw_headers;<br>+	while (raw_header !=3D NULL) {<br>+		ustream_printf(uh-&g=
t;us, &quot;%s\r\n&quot;, raw_header);<br>+		raw_headers++;<br>+		raw_heade=
r =3D *raw_headers;<br>+	}<br>+}<br>+<br>=C2=A0static int<br>=C2=A0uclient_=
http_send_headers(struct uclient_http *uh)<br>=C2=A0{<br>@@ -626,6 +638,7 @=
@<br>=C2=A0	if (err)<br>=C2=A0		return err;<br>=C2=A0<br>+	uclient_http_sen=
d_raw_headers(uh);<br>=C2=A0	ustream_printf(uh-&gt;us, &quot;\r\n&quot;);<b=
r>=C2=A0<br>=C2=A0	uh-&gt;state =3D HTTP_STATE_HEADERS_SENT;<br>@@ -1025,6 =
+1038,21 @@<br>=C2=A0	blobmsg_add_string(&amp;uh-&gt;headers, name, value);=
<br>=C2=A0	return 0;<br>=C2=A0}<br>+<br>+int<br>+uclient_http_set_raw_heade=
rs(struct uclient *cl, const char **raw_headers)<br>+{<br>+	struct uclient_=
http *uh =3D container_of(cl, struct uclient_http, uc);<br>+<br>+	if (cl-&g=
t;backend !=3D &amp;uclient_backend_http)<br>+		return -1;<br>+<br>+	if (uh=
-&gt;state &gt; HTTP_STATE_INIT)<br>+		return -1;<br>+<br>+	uh-&gt;raw_head=
ers =3D raw_headers;<br>+	return 0;<br>+}<br>=C2=A0<br>=C2=A0static int<br>=
=C2=A0uclient_http_send_data(struct uclient *cl, const char *buf, unsigned =
int len)<br>Index: uclient.h<br>&lt;+&gt;UTF-8<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>--- uclient.h	(revision fef6d3d311ac45c662c0=
1e0ebd9cb0f6c8d7145c)<br>+++ uclient.h	(revision 8a9562d89891ec886192d7693e=
60065d0985fedd)<br>@@ -121,6 +121,7 @@<br>=C2=A0<br>=C2=A0int uclient_http_=
reset_headers(struct uclient *cl);<br>=C2=A0int uclient_http_set_header(str=
uct uclient *cl, const char *name, const char *value);<br>+int uclient_http=
_set_raw_headers(struct uclient *cl, const char **raw_headers);<br>=C2=A0in=
t uclient_http_set_request_type(struct uclient *cl, const char *type);<br>=
=C2=A0int uclient_http_redirect(struct uclient *cl);<br>=C2=A0</div></div>

--000000000000fed930059d15494a--


--===============4585993399487434201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4585993399487434201==--

