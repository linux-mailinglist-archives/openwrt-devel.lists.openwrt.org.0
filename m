Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4DB2025C8
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jun 2020 19:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DBsp3IOndCM2tOGU/dtPKbLTMOO8jUWb9Ae/7fopATU=; b=TEr1WB52dUwvMdm6Ucud48lTX
	q2YOD5dJN3MqClih3M64REcKrh8aLeiM3Wt3k1ezuXFgms6p8H6DGp/sfTi8SbQ8DZ5DrMgUVjkrB
	cfwWJJ7UvDGF8bdhMix4KrYsMn4MCVr5rl7MgV1lPOfyME1z7snbi0U3COJT7upFrwG+INbxnvm/T
	ngEJn3A7YcWxJ4Fb4xq/5AGJpxbKmct0AN/4HhxvjOSg57vnL0VePstWnV/yi8fSt7AjRQh5L2Nhy
	dNSlkJKHk64FvBvemXWVyyxv9fL83Narky0Ewy6bWerccKtl8lwjUpyE7xr74sm2I3Xvner6koqcr
	N8dgBOERA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmhio-0002yd-30; Sat, 20 Jun 2020 17:56:06 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmhie-0002y2-Vh
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jun 2020 17:55:59 +0000
Received: from [2001:912:1800::249] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>)
 id 1jmhiX-0002gK-Du; Sat, 20 Jun 2020 19:55:49 +0200
Date: Sat, 20 Jun 2020 19:55:46 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200620175546.GA620548@tuxmachine.localdomain>
References: <20200613181740.988875-1-baptiste@bitsofnetworks.org>
MIME-Version: 1.0
In-Reply-To: <20200613181740.988875-1-baptiste@bitsofnetworks.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_105557_343024_F14F789C 
X-CRM114-Status: GOOD (  26.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 18.06] libubox: backport additional
 length-checking fixes
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
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============4702973452665177849=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============4702973452665177849==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2fHTh5uZTiUOsy+g"
Content-Disposition: inline


--2fHTh5uZTiUOsy+g
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

I should have added more details in the commit message: this fixes a
serious regression where procd fails to start some services, for instance
rpcd.  See FS#3177.

This is the same regression that Rafa=C5=82 found in 19.07.2 and 19.07.3.

I would like a review that I backported the right set of commits: I don't
think I missed one, but I'm not 100% sure that the 4 commits I backported
are all strictly necessary.

In any case, they are all clean cherry-picks.

Thanks,
Baptiste

On 13-06-20, Baptiste Jonglez wrote:
> From: Baptiste Jonglez <git@bitsofnetworks.org>
>=20
> Fixes: FS#3177
> Cc: Felix Fietkau <nbd@nbd.name>
> Cc: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Signed-off-by: Baptiste Jonglez <git@bitsofnetworks.org>
> ---
>  package/libs/libubox/Makefile                 |   2 +-
>  ...s-iteration-in-the-blobmsg_check_arr.patch |  75 ++++++++++
>  ...sg-fix-length-in-blobmsg_check_array.patch |  28 ++++
>  ...-and-fix-name-length-checks-in-blobm.patch |  49 +++++++
>  ...21-blobmsg-fix-missing-length-checks.patch | 138 ++++++++++++++++++
>  5 files changed, 291 insertions(+), 1 deletion(-)
>  create mode 100644 package/libs/libubox/patches/0018-blobmsg-fix-attrs-i=
teration-in-the-blobmsg_check_arr.patch
>  create mode 100644 package/libs/libubox/patches/0019-blobmsg-fix-length-=
in-blobmsg_check_array.patch
>  create mode 100644 package/libs/libubox/patches/0020-blobmsg-simplify-an=
d-fix-name-length-checks-in-blobm.patch
>  create mode 100644 package/libs/libubox/patches/0021-blobmsg-fix-missing=
-length-checks.patch
>=20
> diff --git a/package/libs/libubox/Makefile b/package/libs/libubox/Makefile
> index e3a827c1ab..e4f1a6b503 100644
> --- a/package/libs/libubox/Makefile
> +++ b/package/libs/libubox/Makefile
> @@ -1,7 +1,7 @@
>  include $(TOPDIR)/rules.mk
> =20
>  PKG_NAME:=3Dlibubox
> -PKG_RELEASE=3D4
> +PKG_RELEASE=3D5
> =20
>  PKG_SOURCE_PROTO:=3Dgit
>  PKG_SOURCE_URL=3D$(PROJECT_GIT)/project/libubox.git
> diff --git a/package/libs/libubox/patches/0018-blobmsg-fix-attrs-iteratio=
n-in-the-blobmsg_check_arr.patch b/package/libs/libubox/patches/0018-blobms=
g-fix-attrs-iteration-in-the-blobmsg_check_arr.patch
> new file mode 100644
> index 0000000000..2834e10ee3
> --- /dev/null
> +++ b/package/libs/libubox/patches/0018-blobmsg-fix-attrs-iteration-in-th=
e-blobmsg_check_arr.patch
> @@ -0,0 +1,75 @@
> +From 5e75160f48785464f9213c6bc8c72b9372c5318b Mon Sep 17 00:00:00 2001
> +From: =3D?UTF-8?q?Rafa=3DC5=3D82=3D20Mi=3DC5=3D82ecki?=3D <rafal@milecki=
=2Epl>
> +Date: Sat, 23 May 2020 13:18:51 +0200
> +Subject: [PATCH] blobmsg: fix attrs iteration in the blobmsg_check_array=
_len()
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=3DUTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +Starting with 75e300aeec25 ("blobmsg: fix wrong payload len passed from
> +blobmsg_check_array") blobmsg_check_array_len() gets *blob* length
> +passed as argument. It cannot be used with __blobmsg_for_each_attr()
> +which expects *data* length.
> +
> +Use blobmsg_for_each_attr() which calculates *data* length on its own.
> +
> +The same bug was already reported in the past and there was fix attempt
> +in the commit cd75136b1342 ("blobmsg: fix wrong payload len passed from
> +blobmsg_check_array"). That change made blobmsg_check_attr_len() calls
> +fail however.
> +
> +This is hopefully the correct & complete fix:
> +1. blobmsg_check_array_len() gets *blob* length
> +2. It calls blobmsg_check_attr_len() which requires *blob* length
> +3. It uses blobmsg_for_each_attr() which gets *data* length
> +
> +This fixes iterating over random memory treated as attrs. That was
> +resulting in check failing randomly for totally correct blobs. It's
> +critical e.g. for procd project with its instance_fill_array() failing
> +and procd not starting services.
> +
> +Fixes: 75e300aeec25 ("blobmsg: fix wrong payload len passed from blobmsg=
_check_array")
> +Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> +---
> + blobmsg.c | 10 ++++++----
> + 1 file changed, 6 insertions(+), 4 deletions(-)
> +
> +diff --git a/blobmsg.c b/blobmsg.c
> +index 8b9877d..59045e1 100644
> +--- a/blobmsg.c
> ++++ b/blobmsg.c
> +@@ -117,16 +117,18 @@ int blobmsg_check_array(const struct blob_attr *at=
tr, int type)
> + 	return blobmsg_check_array_len(attr, type, blob_len(attr));
> + }
> +=20
> +-int blobmsg_check_array_len(const struct blob_attr *attr, int type, siz=
e_t len)
> ++int blobmsg_check_array_len(const struct blob_attr *attr, int type,
> ++			    size_t blob_len)
> + {
> + 	struct blob_attr *cur;
> ++	size_t rem;
> + 	bool name;
> + 	int size =3D 0;
> +=20
> + 	if (type > BLOBMSG_TYPE_LAST)
> + 		return -1;
> +=20
> +-	if (!blobmsg_check_attr_len(attr, false, len))
> ++	if (!blobmsg_check_attr_len(attr, false, blob_len))
> + 		return -1;
> +=20
> + 	switch (blobmsg_type(attr)) {
> +@@ -140,11 +142,11 @@ int blobmsg_check_array_len(const struct blob_attr=
 *attr, int type, size_t len)
> + 		return -1;
> + 	}
> +=20
> +-	__blobmsg_for_each_attr(cur, attr, len) {
> ++	blobmsg_for_each_attr(cur, attr, rem) {
> + 		if (type !=3D BLOBMSG_TYPE_UNSPEC && blobmsg_type(cur) !=3D type)
> + 			return -1;
> +=20
> +-		if (!blobmsg_check_attr_len(cur, name, len))
> ++		if (!blobmsg_check_attr_len(cur, name, rem))
> + 			return -1;
> +=20
> + 		size++;
> diff --git a/package/libs/libubox/patches/0019-blobmsg-fix-length-in-blob=
msg_check_array.patch b/package/libs/libubox/patches/0019-blobmsg-fix-lengt=
h-in-blobmsg_check_array.patch
> new file mode 100644
> index 0000000000..9db2fb4f9f
> --- /dev/null
> +++ b/package/libs/libubox/patches/0019-blobmsg-fix-length-in-blobmsg_che=
ck_array.patch
> @@ -0,0 +1,28 @@
> +From c2fc622b771f679e8f55060ac60cfe02b9a80995 Mon Sep 17 00:00:00 2001
> +From: Felix Fietkau <nbd@nbd.name>
> +Date: Mon, 25 May 2020 13:44:20 +0200
> +Subject: [PATCH] blobmsg: fix length in blobmsg_check_array
> +
> +blobmsg_check_array_len expects the length of the full attribute buffer,
> +not just the data length.
> +Due to other missing length checks (fixed in the next commit), this did
> +not show up as a test failure
> +
> +Signed-off-by: Felix Fietkau <nbd@nbd.name>
> +---
> + blobmsg.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/blobmsg.c b/blobmsg.c
> +index 59045e1..daaa9fc 100644
> +--- a/blobmsg.c
> ++++ b/blobmsg.c
> +@@ -114,7 +114,7 @@ bool blobmsg_check_attr_len(const struct blob_attr *=
attr, bool name, size_t len)
> +=20
> + int blobmsg_check_array(const struct blob_attr *attr, int type)
> + {
> +-	return blobmsg_check_array_len(attr, type, blob_len(attr));
> ++	return blobmsg_check_array_len(attr, type, blob_raw_len(attr));
> + }
> +=20
> + int blobmsg_check_array_len(const struct blob_attr *attr, int type,
> diff --git a/package/libs/libubox/patches/0020-blobmsg-simplify-and-fix-n=
ame-length-checks-in-blobm.patch b/package/libs/libubox/patches/0020-blobms=
g-simplify-and-fix-name-length-checks-in-blobm.patch
> new file mode 100644
> index 0000000000..a481208789
> --- /dev/null
> +++ b/package/libs/libubox/patches/0020-blobmsg-simplify-and-fix-name-len=
gth-checks-in-blobm.patch
> @@ -0,0 +1,49 @@
> +From 639c29d19717616b809d9a1e9042461ab8024370 Mon Sep 17 00:00:00 2001
> +From: Felix Fietkau <nbd@nbd.name>
> +Date: Mon, 25 May 2020 14:49:35 +0200
> +Subject: [PATCH] blobmsg: simplify and fix name length checks in
> + blobmsg_check_name
> +
> +blobmsg_hdr_valid_namelen was omitted when name=3D=3Dfalse
> +The blob_len vs blobmsg_namelen changes were not taking into account
> +potential padding between name and data
> +
> +Signed-off-by: Felix Fietkau <nbd@nbd.name>
> +---
> + blobmsg.c | 13 ++++---------
> + 1 file changed, 4 insertions(+), 9 deletions(-)
> +
> +diff --git a/blobmsg.c b/blobmsg.c
> +index daaa9fc..308bef7 100644
> +--- a/blobmsg.c
> ++++ b/blobmsg.c
> +@@ -48,8 +48,8 @@ static bool blobmsg_hdr_valid_namelen(const struct blo=
bmsg_hdr *hdr, size_t len)
> +=20
> + static bool blobmsg_check_name(const struct blob_attr *attr, size_t len=
, bool name)
> + {
> +-	char *limit =3D (char *) attr + len;
> + 	const struct blobmsg_hdr *hdr;
> ++	uint16_t namelen;
> +=20
> + 	hdr =3D blobmsg_hdr_from_blob(attr, len);
> + 	if (!hdr)
> +@@ -58,16 +58,11 @@ static bool blobmsg_check_name(const struct blob_att=
r *attr, size_t len, bool na
> + 	if (name && !hdr->namelen)
> + 		return false;
> +=20
> +-	if (name && !blobmsg_hdr_valid_namelen(hdr, len))
> +-		return false;
> +-
> +-	if ((char *) hdr->name + blobmsg_namelen(hdr) + 1 > limit)
> +-		return false;
> +-
> +-	if (blobmsg_namelen(hdr) > (blob_len(attr) - sizeof(struct blobmsg_hdr=
)))
> ++	namelen =3D blobmsg_namelen(hdr);
> ++	if (blob_len(attr) < (size_t)blobmsg_hdrlen(namelen))
> + 		return false;
> +=20
> +-	if (hdr->name[blobmsg_namelen(hdr)] !=3D 0)
> ++	if (hdr->name[namelen] !=3D 0)
> + 		return false;
> +=20
> + 	return true;
> diff --git a/package/libs/libubox/patches/0021-blobmsg-fix-missing-length=
-checks.patch b/package/libs/libubox/patches/0021-blobmsg-fix-missing-lengt=
h-checks.patch
> new file mode 100644
> index 0000000000..bfc440a329
> --- /dev/null
> +++ b/package/libs/libubox/patches/0021-blobmsg-fix-missing-length-checks=
=2Epatch
> @@ -0,0 +1,138 @@
> +From 66195aee50424cbda0c2d858014e4cc58a2dc029 Mon Sep 17 00:00:00 2001
> +From: Felix Fietkau <nbd@nbd.name>
> +Date: Mon, 25 May 2020 12:40:04 +0200
> +Subject: [PATCH] blobmsg: fix missing length checks
> +
> +blobmsg_check_attr_len was calling blobmsg_check_data for some, but not =
all
> +attribute types. These checks was missing for arrays and tables.
> +
> +Additionally, the length check in blobmsg_check_data was a bit off, since
> +it was comparing the blobmsg data length against the raw blob attr lengt=
h.
> +
> +Fix this by checking the raw blob length against the buffer length in
> +blobmsg_hdr_from_blob
> +
> +Signed-off-by: Felix Fietkau <nbd@nbd.name>
> +---
> + blobmsg.c | 66 +++++++++++++++++--------------------------------------
> + 1 file changed, 20 insertions(+), 46 deletions(-)
> +
> +diff --git a/blobmsg.c b/blobmsg.c
> +index 308bef7..7da4183 100644
> +--- a/blobmsg.c
> ++++ b/blobmsg.c
> +@@ -30,31 +30,18 @@ bool blobmsg_check_attr(const struct blob_attr *attr=
, bool name)
> + 	return blobmsg_check_attr_len(attr, name, blob_raw_len(attr));
> + }
> +=20
> +-static const struct blobmsg_hdr* blobmsg_hdr_from_blob(const struct blo=
b_attr *attr, size_t len)
> +-{
> +-	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr))
> +-		return NULL;
> +-
> +-	return blob_data(attr);
> +-}
> +-
> +-static bool blobmsg_hdr_valid_namelen(const struct blobmsg_hdr *hdr, si=
ze_t len)
> +-{
> +-	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr) + blob=
msg_namelen(hdr) + 1)
> +-		return false;
> +-
> +-	return true;
> +-}
> +-
> +-static bool blobmsg_check_name(const struct blob_attr *attr, size_t len=
, bool name)
> ++static bool blobmsg_check_name(const struct blob_attr *attr, bool name)
> + {
> + 	const struct blobmsg_hdr *hdr;
> + 	uint16_t namelen;
> +=20
> +-	hdr =3D blobmsg_hdr_from_blob(attr, len);
> +-	if (!hdr)
> ++	if (!blob_is_extended(attr))
> ++		return !name;
> ++
> ++	if (blob_len(attr) < sizeof(struct blobmsg_hdr))
> + 		return false;
> +=20
> ++	hdr =3D (const struct blobmsg_hdr *)blob_data(attr);
> + 	if (name && !hdr->namelen)
> + 		return false;
> +=20
> +@@ -68,29 +55,20 @@ static bool blobmsg_check_name(const struct blob_att=
r *attr, size_t len, bool na
> + 	return true;
> + }
> +=20
> +-static const char* blobmsg_check_data(const struct blob_attr *attr, siz=
e_t len, size_t *data_len)
> +-{
> +-	char *limit =3D (char *) attr + len;
> +-	const char *data;
> +-
> +-	*data_len =3D blobmsg_data_len(attr);
> +-	if (*data_len > blob_raw_len(attr))
> +-		return NULL;
> +-
> +-	data =3D blobmsg_data(attr);
> +-	if (data + *data_len > limit)
> +-		return NULL;
> +-
> +-	return data;
> +-}
> +-
> + bool blobmsg_check_attr_len(const struct blob_attr *attr, bool name, si=
ze_t len)
> + {
> + 	const char *data;
> + 	size_t data_len;
> + 	int id;
> +=20
> +-	if (!blobmsg_check_name(attr, len, name))
> ++	if (len < sizeof(struct blob_attr))
> ++		return false;
> ++
> ++	data_len =3D blob_raw_len(attr);
> ++	if (data_len < sizeof(struct blob_attr) || data_len > len)
> ++		return false;
> ++
> ++	if (!blobmsg_check_name(attr, name))
> + 		return false;
> +=20
> + 	id =3D blob_id(attr);
> +@@ -100,9 +78,8 @@ bool blobmsg_check_attr_len(const struct blob_attr *a=
ttr, bool name, size_t len)
> + 	if (!blob_type[id])
> + 		return true;
> +=20
> +-	data =3D blobmsg_check_data(attr, len, &data_len);
> +-	if (!data)
> +-		return false;
> ++	data =3D blobmsg_data(attr);
> ++	data_len =3D blobmsg_data_len(attr);
> +=20
> + 	return blob_check_type(data, data_len, blob_type[id]);
> + }
> +@@ -206,13 +183,13 @@ int blobmsg_parse(const struct blobmsg_policy *pol=
icy, int policy_len,
> + 	}
> +=20
> + 	__blob_for_each_attr(attr, data, len) {
> +-		hdr =3D blobmsg_hdr_from_blob(attr, len);
> +-		if (!hdr)
> ++		if (!blobmsg_check_attr_len(attr, false, len))
> + 			return -1;
> +=20
> +-		if (!blobmsg_hdr_valid_namelen(hdr, len))
> +-			return -1;
> ++		if (!blob_is_extended(attr))
> ++			continue;
> +=20
> ++		hdr =3D blob_data(attr);
> + 		for (i =3D 0; i < policy_len; i++) {
> + 			if (!policy[i].name)
> + 				continue;
> +@@ -224,9 +201,6 @@ int blobmsg_parse(const struct blobmsg_policy *polic=
y, int policy_len,
> + 			if (blobmsg_namelen(hdr) !=3D pslen[i])
> + 				continue;
> +=20
> +-			if (!blobmsg_check_attr_len(attr, true, len))
> +-				return -1;
> +-
> + 			if (tb[i])
> + 				continue;

--2fHTh5uZTiUOsy+g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7uTaIACgkQvgHsIqBO
LkYalw/+I6d+gyWDHiuAVS7haL/2Cd/DqUCodMH/3Bit0pnBnmL8T8gAJAA4eW5H
0Jhj6OBesHM6SV2LlsbEkTrmGFs9vYm/9iSMjkb3qoDQCdbz9tdzVALBugF93KYz
cuzJTCsCNoq1/g7vz+ZcBC+h9PJSKqbTGNqzBt7P+o8NaW18anxVIKZGrsSlWL8v
BHfilHvsaSgPgm38io8bgpx7PSNBumOD5qqR5jPGwY/ocrXTi/QQ627K3FvKz49m
kXnjCsSPNGiFxq/n21D+nTAIxYyi0+3o6C4abacdw+moK5ZKYjxbOA0kgoMZ8BfL
GjZScH6CmP8JJAdTawXzW8yoFN2bcPhhJUSXBIr7CxK8Rdzvvcx31gjYck1KntM/
j4VEQOfgPozxFdOm5ygnCkS45AgmY9WuW6M5bwsL3gTkw0lvWh7QMxpZFmHRF9vV
Odg9xTy6matXqjVthoXL4MBL36IyIcZkM5FxIOckMQdbJcw5y+WQ4iOgd0sy4ssO
au2TyIrUFvpyDdkwE3JjNndasHcezrtnCf8EYpYVpt6HEBNlDBzMSWSSaBdRD4MU
H5oFWxToBb5m8M2Sh+AYm/UuQ+RyVc3CrP72LIYTDZVz9MHUiiQOYvRr8ajFZfPN
c+cKHcMHIQgCWAOZQ/3v9P388/f1UmO8vH1d2wfWSMwZqIQTu7g=
=M/uI
-----END PGP SIGNATURE-----

--2fHTh5uZTiUOsy+g--


--===============4702973452665177849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4702973452665177849==--

