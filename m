Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 391C614C3D6
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 01:11:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G6OnozLEd3Ny15ab1H14avRaho7apsUrJtlfNqR6f9g=; b=hk/Jgtz02seUhGSrrFZWqCZzBn
	pvnszOWfGZ7KZOCWvxfBIeDRix1tkitvsxoZs0CVoeXrMd+7amBICqaJ/goY0pxP5YpWgw/wWt1yj
	d9HUZC+MeaOTMvF0ompBiOjr0NYwPVZAnsCrBjCtbL+9TwcMLP8qmK8VwTi9mSPi+GQEdLqG23da0
	rMy41DpZ3tx6ffbG1x2ef2fWCc0N9BxbjE1oBV5X7XNzB7a3767k+O7n9zbFNK6AGmgrAhlKhamXx
	Fxm0s4UOnUu/Ptj7L5bO+xrhLYoXP8SUMhxLnj5aCmwsyLnXxhnrZfGsu43n/bxqlk2KkGnViCXkV
	4bWf4cBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwawc-000375-Rc; Wed, 29 Jan 2020 00:10:58 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwawV-00036N-Cy
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 00:10:53 +0000
Received: by mail-ot1-x329.google.com with SMTP id d3so13605404otp.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 16:10:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=sy9Htuf80CpHmoFylGsVlHIq3W6c0n8GOl8YNNZ4zOg=;
 b=BF/Ne5KpBohLavFyO3vlAqoVzJhVJTulyoIz9Vlig6/DaxMuQeperDjp41dnSmjZN9
 Jss6RntSmefCEcHaYM7p7ncM8fjMq4wbRfM+e4EoCZhUemj6Ka6vYaqX9Nqxrpez3K7T
 bNrlF61/0Y7nCjK1Jkr6itEdYfe1PUEw6CeceIROd7st3tq3l80ca2ZeYYtHl59IpAXy
 eqrQqYmnaQ+ZaoNUBUiMxWx+NOM6pvK/0T6P9ezNA7h9CqVadqnHPZVdeN4ypmQioUzp
 aLbDtUkYVqfdA+OhuktyNZ+19fuizZek6+Cc99rE7LnlBxv3AHgqwya4fCvETEFyuJGg
 6zcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=sy9Htuf80CpHmoFylGsVlHIq3W6c0n8GOl8YNNZ4zOg=;
 b=hQkCvTm1kUayaufZnqsHrXmk3PxVz+MRRi1dzqP6dmpJw3a03cu6I/uRMLLbmpMgQa
 GayK3mgr3zN2PszsoArLisNL2iLVw84cZMWw84+WrUyAwBLsgoxxjosMvbhdErFoNmfd
 jtz8ua0lvnJyW1qnwrvUhK/nnlXkuiHg18/O/0HYMjFkox2cV7l8TwPobFJMdMofprrA
 ixEx/DLNoYGLviYmMVCiEK3h9Z/+C2a47TMEwEweoMMq6A+OrWFw4Fx7z3ycXimQEXEh
 0LKsKSMx+bc2PWMSFXbKLQ5hGTmi+zm1DRqvFH5ccJgr1smQHMaKFKu0Jsc9HbFDe2rg
 V0TA==
X-Gm-Message-State: APjAAAWXO95Cq4Ulbb1EyR50SfsqzO7w8OmdGevEe9w1zRp2jrnZk4j7
 OLQxArO5oKrPDI6szw6IYU7OC7XdFLDWyOhNoTkXe9g9Jno=
X-Google-Smtp-Source: APXvYqyuikdbSKe7cHH7ofYj+Fr5eQf2qTU2lN+Tjg+7/4JUSOOYINaOJOcJwSmY9it655kJdeFhqqyhQ/YYo19SvJM=
X-Received: by 2002:a05:6830:154a:: with SMTP id
 l10mr18676173otp.44.1580256648373; 
 Tue, 28 Jan 2020 16:10:48 -0800 (PST)
MIME-Version: 1.0
References: <CADR0UcUXJS4DkSSR_0-ZKhdEOaOwUn09WpJDpG9NMRYNsjQ8Sw@mail.gmail.com>
In-Reply-To: <CADR0UcUXJS4DkSSR_0-ZKhdEOaOwUn09WpJDpG9NMRYNsjQ8Sw@mail.gmail.com>
From: Sergey Ponomarev <stokito@gmail.com>
Date: Wed, 29 Jan 2020 02:10:12 +0200
Message-ID: <CADR0UcX1=s+28JL3=3ak0j4GX+Ju=i9Yb0u_dN-MF=-tw_n5gg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_161051_443876_BB9ADAC9 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [stokito[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] uclient-fetch add ability to pass custom http
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi again,

I need to discuss some changes before working on it so please take a
look on https://forum.openwrt.org/t/uclient-fetch-add-more-options-from-wget-and-create-uclient-curl-clone-of-curl/54060

I created the patch from CLion and it doesn't contains signoff so just
to be sure that it will be processed correctly I regenerated it with
git format-patch:


From 8a9562d89891ec886192d7693e60065d0985fedd Mon Sep 17 00:00:00 2001
From: Sergey Ponomarev <stokito@gmail.com>
Date: Mon, 27 Jan 2020 03:27:50 +0200
Subject: [PATCH] Add --header option to pass additional raw HTTP headers

Signed-off-by: Sergey Ponomarev <stokito@gmail.com>
---
 uclient-fetch.c | 16 ++++++++++++++++
 uclient-http.c  | 28 ++++++++++++++++++++++++++++
 uclient.h       |  1 +
 3 files changed, 45 insertions(+)

diff --git a/uclient-fetch.c b/uclient-fetch.c
index 38c9c53..34cbfd5 100644
--- a/uclient-fetch.c
+++ b/uclient-fetch.c
@@ -43,6 +43,7 @@

 static const char *user_agent = "uclient-fetch";
 static const char *post_data;
+static const char **raw_headers = NULL;
 static struct ustream_ssl_ctx *ssl_ctx;
 static const struct ustream_ssl_ops *ssl_ops;
 static int quiet = false;
@@ -340,6 +341,7 @@ static int init_request(struct uclient *cl)

   uclient_http_reset_headers(cl);
   uclient_http_set_header(cl, "User-Agent", user_agent);
+  uclient_http_set_raw_headers(cl, raw_headers);
   if (cur_resume)
      check_resume_offset(cl);

@@ -458,6 +460,7 @@ static int usage(const char *progname)
      "  -P <dir>         Set directory for output files\n"
      "  --user=<user>        HTTP authentication username\n"
      "  --password=<password>     HTTP authentication password\n"
+     "  --header=<header>     Add HTTP header\n"
      "  --user-agent|-U <str>     Set HTTP user agent\n"
      "  --post-data=STRING    use the POST method; send STRING as the data\n"
      "  --spider|-s          Spider mode - only check file existence\n"
@@ -512,6 +515,7 @@ enum {
   L_CA_CERTIFICATE,
   L_USER,
   L_PASSWORD,
+  L_HEADER,
   L_USER_AGENT,
   L_POST_DATA,
   L_SPIDER,
@@ -527,6 +531,7 @@ static const struct option longopts[] = {
   [L_CA_CERTIFICATE] = { "ca-certificate", required_argument },
   [L_USER] = { "user", required_argument },
   [L_PASSWORD] = { "password", required_argument },
+  [L_HEADER] = { "header", required_argument },
   [L_USER_AGENT] = { "user-agent", required_argument },
   [L_POST_DATA] = { "post-data", required_argument },
   [L_SPIDER] = { "spider", no_argument },
@@ -546,6 +551,7 @@ int main(int argc, char **argv)
   const char *proxy_url;
   char *username = NULL;
   char *password = NULL;
+  int raw_headers_count = 0;
   struct uclient *cl;
   int longopt_idx = 0;
   bool has_cert = false;
@@ -580,6 +586,16 @@ int main(int argc, char **argv)
            password = strdup(optarg);
            memset(optarg, '*', strlen(optarg));
            break;
+        case L_HEADER:
+           if (!raw_headers) {
+              // Max possible count of headers is the count of args (argc) - 2
+              // because the first arg is program and last is a URL.
+              // But user may forget the URL and raw_headers is null
terminated so max raw_headers can be argc
+              raw_headers = calloc(argc, sizeof(char *));
+           }
+           raw_headers[raw_headers_count] = optarg;
+           raw_headers_count++;
+           break;
         case L_USER_AGENT:
            user_agent = optarg;
            break;
diff --git a/uclient-http.c b/uclient-http.c
index c1f7228..a70d445 100644
--- a/uclient-http.c
+++ b/uclient-http.c
@@ -96,6 +96,7 @@ struct uclient_http {

   uint32_t nc;

+  const char **raw_headers;
   struct blob_buf headers;
   struct blob_buf meta;
 };
@@ -589,6 +590,17 @@ uclient_http_add_auth_header(struct uclient_http *uh)
   return 0;
 }

+static void
+uclient_http_send_raw_headers(const struct uclient_http *uh) {
+  const char **raw_headers = uh->raw_headers;
+  const char *raw_header = *raw_headers;
+  while (raw_header != NULL) {
+     ustream_printf(uh->us, "%s\r\n", raw_header);
+     raw_headers++;
+     raw_header = *raw_headers;
+  }
+}
+
 static int
 uclient_http_send_headers(struct uclient_http *uh)
 {
@@ -626,6 +638,7 @@ uclient_http_send_headers(struct uclient_http *uh)
   if (err)
      return err;

+  uclient_http_send_raw_headers(uh);
   ustream_printf(uh->us, "\r\n");

   uh->state = HTTP_STATE_HEADERS_SENT;
@@ -1026,6 +1039,21 @@ uclient_http_set_header(struct uclient *cl,
const char *name, const char *value)
   return 0;
 }

+int
+uclient_http_set_raw_headers(struct uclient *cl, const char **raw_headers)
+{
+  struct uclient_http *uh = container_of(cl, struct uclient_http, uc);
+
+  if (cl->backend != &uclient_backend_http)
+     return -1;
+
+  if (uh->state > HTTP_STATE_INIT)
+     return -1;
+
+  uh->raw_headers = raw_headers;
+  return 0;
+}
+
 static int
 uclient_http_send_data(struct uclient *cl, const char *buf, unsigned int len)
 {
diff --git a/uclient.h b/uclient.h
index 4f37364..f1977bc 100644
--- a/uclient.h
+++ b/uclient.h
@@ -121,6 +121,7 @@ extern const struct uclient_backend uclient_backend_http;

 int uclient_http_reset_headers(struct uclient *cl);
 int uclient_http_set_header(struct uclient *cl, const char *name,
const char *value);
+int uclient_http_set_raw_headers(struct uclient *cl, const char **raw_headers);
 int uclient_http_set_request_type(struct uclient *cl, const char *type);
 int uclient_http_redirect(struct uclient *cl);

-- 
2.20.1




On Mon, 27 Jan 2020 at 03:46, Sergey Ponomarev <stokito@gmail.com> wrote:
>
> Hi,
>
> I making a package that internally will perform a HTTP call to OAuth service and I need to pass `Authorization: Barer token` as a header. The wget clone uclient-fetch doesn't have such functionality to pass an additional header while original wget have it. I can use curl but it uses too much space: uclient-fetch~ 28Kb while curl  ~280kb.
> I'm pretty sure that there is thousands of other reasons to pass a custom header like `Accept: application/json` etc.
> So here I made a small patch that adds such functionality to uclient-fetch. You can specify multiple headers so they all will be stored to raw_headers list.
> uclient-fetch --header="H1: VAL1" --header="H2: VAL2" -O - http://192.168.1.1/
> I tested with Wireshark and all works fine.
>
> Index: uclient-fetch.c
> <+>UTF-8
> ===================================================================
> --- uclient-fetch.c (revision fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)
> +++ uclient-fetch.c (revision 8a9562d89891ec886192d7693e60065d0985fedd)
> @@ -43,6 +43,7 @@
>
>  static const char *user_agent = "uclient-fetch";
>  static const char *post_data;
> +static const char **raw_headers = NULL;
>  static struct ustream_ssl_ctx *ssl_ctx;
>  static const struct ustream_ssl_ops *ssl_ops;
>  static int quiet = false;
> @@ -340,6 +341,7 @@
>
>   uclient_http_reset_headers(cl);
>   uclient_http_set_header(cl, "User-Agent", user_agent);
> + uclient_http_set_raw_headers(cl, raw_headers);
>   if (cur_resume)
>   check_resume_offset(cl);
>
> @@ -458,6 +460,7 @@
>   " -P <dir> Set directory for output files\n"
>   " --user=<user> HTTP authentication username\n"
>   " --password=<password> HTTP authentication password\n"
> + " --header=<header> Add HTTP header\n"
>   " --user-agent|-U <str> Set HTTP user agent\n"
>   " --post-data=STRING use the POST method; send STRING as the data\n"
>   " --spider|-s Spider mode - only check file existence\n"
> @@ -512,6 +515,7 @@
>   L_CA_CERTIFICATE,
>   L_USER,
>   L_PASSWORD,
> + L_HEADER,
>   L_USER_AGENT,
>   L_POST_DATA,
>   L_SPIDER,
> @@ -527,6 +531,7 @@
>   [L_CA_CERTIFICATE] = { "ca-certificate", required_argument },
>   [L_USER] = { "user", required_argument },
>   [L_PASSWORD] = { "password", required_argument },
> + [L_HEADER] = { "header", required_argument },
>   [L_USER_AGENT] = { "user-agent", required_argument },
>   [L_POST_DATA] = { "post-data", required_argument },
>   [L_SPIDER] = { "spider", no_argument },
> @@ -546,6 +551,7 @@
>   const char *proxy_url;
>   char *username = NULL;
>   char *password = NULL;
> + int raw_headers_count = 0;
>   struct uclient *cl;
>   int longopt_idx = 0;
>   bool has_cert = false;
> @@ -579,6 +585,16 @@
>   break;
>   password = strdup(optarg);
>   memset(optarg, '*', strlen(optarg));
> + break;
> + case L_HEADER:
> + if (!raw_headers) {
> + // Max possible count of headers is the count of args (argc) - 2
> + // because the first arg is program and last is a URL.
> + // But user may forget the URL and raw_headers is null terminated so max raw_headers can be argc
> + raw_headers = calloc(argc, sizeof(char *));
> + }
> + raw_headers[raw_headers_count] = optarg;
> + raw_headers_count++;
>   break;
>   case L_USER_AGENT:
>   user_agent = optarg;
> Index: uclient-http.c
> <+>UTF-8
> ===================================================================
> --- uclient-http.c (revision fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)
> +++ uclient-http.c (revision 8a9562d89891ec886192d7693e60065d0985fedd)
> @@ -96,6 +96,7 @@
>
>   uint32_t nc;
>
> + const char **raw_headers;
>   struct blob_buf headers;
>   struct blob_buf meta;
>  };
> @@ -589,6 +590,17 @@
>   return 0;
>  }
>
> +static void
> +uclient_http_send_raw_headers(const struct uclient_http *uh) {
> + const char **raw_headers = uh->raw_headers;
> + const char *raw_header = *raw_headers;
> + while (raw_header != NULL) {
> + ustream_printf(uh->us, "%s\r\n", raw_header);
> + raw_headers++;
> + raw_header = *raw_headers;
> + }
> +}
> +
>  static int
>  uclient_http_send_headers(struct uclient_http *uh)
>  {
> @@ -626,6 +638,7 @@
>   if (err)
>   return err;
>
> + uclient_http_send_raw_headers(uh);
>   ustream_printf(uh->us, "\r\n");
>
>   uh->state = HTTP_STATE_HEADERS_SENT;
> @@ -1025,6 +1038,21 @@
>   blobmsg_add_string(&uh->headers, name, value);
>   return 0;
>  }
> +
> +int
> +uclient_http_set_raw_headers(struct uclient *cl, const char **raw_headers)
> +{
> + struct uclient_http *uh = container_of(cl, struct uclient_http, uc);
> +
> + if (cl->backend != &uclient_backend_http)
> + return -1;
> +
> + if (uh->state > HTTP_STATE_INIT)
> + return -1;
> +
> + uh->raw_headers = raw_headers;
> + return 0;
> +}
>
>  static int
>  uclient_http_send_data(struct uclient *cl, const char *buf, unsigned int len)
> Index: uclient.h
> <+>UTF-8
> ===================================================================
> --- uclient.h (revision fef6d3d311ac45c662c01e0ebd9cb0f6c8d7145c)
> +++ uclient.h (revision 8a9562d89891ec886192d7693e60065d0985fedd)
> @@ -121,6 +121,7 @@
>
>  int uclient_http_reset_headers(struct uclient *cl);
>  int uclient_http_set_header(struct uclient *cl, const char *name, const char *value);
> +int uclient_http_set_raw_headers(struct uclient *cl, const char **raw_headers);
>  int uclient_http_set_request_type(struct uclient *cl, const char *type);
>  int uclient_http_redirect(struct uclient *cl);
>



-- 
Sergey Ponomarev, skype:stokito

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
