Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61EB0130409
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 20:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SRZSeHLb+Sl/jPIgeyx7+PCM7KOUYqRTMpmj+ySmtUk=; b=fAkXzihUdRIJm/FeylQNhP2Gb
	y3LNLgeiZghTDBbymqGICYsgO+CWSA2UdZauyxacM3iTgbIXoMGfnGa5h9eyzppGFaZlPanxHzq5F
	3izcJhWo618EmNT16KPJm85glPk2sGhYYzpnRrl6RBXN5wDd95Ynj58yv6mutAbf2NvvkmU3imcOS
	rGgUL2WlS6D4yg58663unBtPYH3BMf1q9Y2Wa5X/idhj62FTgm4zIk4OXdg9EvPEeu4B9DEwlWJ+7
	zBljbhA2FUDsqLhXwDTN68u2Jc3DbQDdycGVK1+/Eg4SnztkA4718Lg4aZkqKfGYtf+vElqpWHSSp
	5s98Nz+Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inpJP-0000uW-2i; Sat, 04 Jan 2020 19:42:15 +0000
Received: from mout-p-202.mailbox.org ([2001:67c:2050::465:202])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inpJE-0000sJ-1r
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 19:42:07 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 47qsbj3DRhzQlCq;
 Sat,  4 Jan 2020 20:41:53 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id Lcmd6PHupjYN; Sat,  4 Jan 2020 20:41:49 +0100 (CET)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
References: <20200103004638.16307-1-ynezz@true.cz>
 <20200103004638.16307-4-ynezz@true.cz>
From: Hauke Mehrtens <hauke@hauke-m.de>
Autocrypt: addr=hauke@hauke-m.de; keydata=
 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
Message-ID: <75fc5a11-2610-b298-ec69-24595184b5d9@hauke-m.de>
Date: Sat, 4 Jan 2020 20:41:44 +0100
MIME-Version: 1.0
In-Reply-To: <20200103004638.16307-4-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_114204_404322_DAFCE8F4 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH procd 3/4] system: sysupgrade: rework
 firmware validation
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
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: multipart/mixed; boundary="===============7898199745309186853=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7898199745309186853==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="50MVT8MabhZBWZVvbAtuXecV9fUm81uwi"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--50MVT8MabhZBWZVvbAtuXecV9fUm81uwi
Content-Type: multipart/mixed; boundary="dhatMKaai0uCCzn9stIWYCVRWSoiymGFc"

--dhatMKaai0uCCzn9stIWYCVRWSoiymGFc
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 1/3/20 1:46 AM, Petr =C5=A0tetiar wrote:
> Fixes following deficiencies:
>=20
>  * unhandled read() errors
>  * everything bundled in one long function, which is hard to follow and=

>    reason about
>  * JSON parser errors are being ignored, anything else then
>    json_tokener_continue is fatal error
>  * JSON parser errors are being output to stderr, thus invisible via SS=
H
>  * validate_firmware_image_call can fail at a lot of places, but we jus=
t
>    get one generic "Firmware image couldn't be validated" so it's hard
>    to debug
>=20
> Cc: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
> ---
>  system.c | 170 ++++++++++++++++++++++++++++++++++++++++---------------=

>  1 file changed, 123 insertions(+), 47 deletions(-)
>=20
> diff --git a/system.c b/system.c
> index 5cd88e0d8227..f0198a5b20b8 100644
> --- a/system.c
> +++ b/system.c
> @@ -37,6 +37,12 @@ static struct blob_buf b;
>  static int notify;
>  static struct ubus_context *_ctx;
> =20
> +enum vjson_state {
> +	VJSON_ERROR,
> +	VJSON_CONTINUE,
> +	VJSON_SUCCESS,
> +};
> +
>  static int system_board(struct ubus_context *ctx, struct ubus_object *=
obj,
>                   struct ubus_request_data *req, const char *method,
>                   struct blob_attr *msg)
> @@ -413,30 +419,127 @@ static int proc_signal(struct ubus_context *ctx,=
 struct ubus_object *obj,
>  	return 0;
>  }
> =20
> +static enum vjson_state vjson_error(char **b, const char *fmt, ...)

Please annotate the function with:
__attribute__ ((format (printf, 2, 3)));

> +{
> +	static char buf[256] =3D { 0 };
> +	const char *pfx =3D "Firmware image couldn't be validated: ";
> +	va_list va;
> +	int r;
> +
> +	r =3D snprintf(buf, sizeof(buf), "%s", pfx);
> +	if (r < 0) {
> +		*b =3D "vjson_error() snprintf failed";
> +		return VJSON_ERROR;
> +	}
> +
> +	va_start(va, fmt);
> +	r =3D vsnprintf(buf+r, sizeof(buf)-r, fmt, va);
Please check here for truncation:
rv =3D vsnprintf(buf+r, sizeof(buf)-r, fmt, va);
if (rv < 0 || rv >=3D  sizeof(buf)-r ) {


> +	if (r < 0) {
> +		*b =3D "vjson_error() vsnprintf failed";
> +		return VJSON_ERROR;
> +	}
> +	va_end(va);
> +
> +	*b =3D buf;
> +	return VJSON_ERROR;
> +}
> +
> +static enum vjson_state vjson_parse_token(json_tokener *tok, char *buf=
, ssize_t len, char **err)
> +{
> +	json_object *jsobj =3D NULL;
> +
> +	jsobj =3D json_tokener_parse_ex(tok, buf, len);
> +	if (json_tokener_get_error(tok) =3D=3D json_tokener_continue)
> +		return VJSON_CONTINUE;
> +
> +	if (json_tokener_get_error(tok) =3D=3D json_tokener_success) {
> +		if (json_object_get_type(jsobj) !=3D json_type_object) {
> +			json_object_put(jsobj);
> +			return vjson_error(err, "result is not an JSON object");
> +		}
> +
> +		blobmsg_add_object(&b, jsobj);
> +		json_object_put(jsobj);
> +		return VJSON_SUCCESS;
> +	}
> +
> +	return vjson_error(err, "failed to parse JSON: %s (%d)",
> +			   json_tokener_error_desc(json_tokener_get_error(tok)),
> +			   json_tokener_get_error(tok));

Why don't you free it here too json_object_put()?

> +}
> +
> +static enum vjson_state vjson_parse(int fd, char **err)
> +{
> +	enum vjson_state r =3D VJSON_ERROR;
> +	size_t read_count =3D 0;
> +	char buf[64] =3D { 0 };
> +	json_tokener *tok;
> +	ssize_t len;
> +	int _errno;
> +
> +	tok =3D json_tokener_new();
> +	if (!tok)
> +		return vjson_error(err, "json_tokener_new() failed");
> +
> +	vjson_error(err, "incomplete JSON input");
> +
> +	while ((len =3D read(fd, buf, sizeof(buf)))) {
> +		if (len < 0 && errno =3D=3D EINTR)
> +			continue;
> +
> +		if (len < 0) {
> +			_errno =3D errno;
> +			json_tokener_free(tok);
> +			return vjson_error(err, "read() failed: %s (%d)",
> +					   strerror(_errno), _errno);
> +		}
> +
> +		read_count +=3D len;
> +		r =3D vjson_parse_token(tok, buf, len, err);
> +		if (r !=3D VJSON_CONTINUE)
> +			break;
> +
> +		memset(buf, 0, sizeof(buf));
> +	}
> +
> +	if (read_count =3D=3D 0)
> +		vjson_error(err, "no JSON input");
> +
> +	json_tokener_free(tok);
> +	return r;
> +}
> +
>  /**
>   * validate_firmware_image_call - perform validation & store result in=
 global b
>   *
>   * @file: firmware image path
>   */
> -static int validate_firmware_image_call(const char *file)
> +static enum vjson_state validate_firmware_image_call(const char *file,=
 char **err)
>  {
>  	const char *path =3D "/usr/libexec/validate_firmware_image";
> -	json_object *jsobj =3D NULL;
> -	json_tokener *tok;
> -	char buf[64];
> -	ssize_t len;
> +	enum vjson_state ret =3D VJSON_ERROR;
> +	int _errno;
>  	int fds[2];
> -	int err;
>  	int fd;
> =20
> -	if (pipe(fds))
> -		return -errno;
> +	blob_buf_init(&b, 0);
> +	vjson_error(err, "unhandled error");
In which case is this returned, aren't there specific error handlers in
call cases now and vjson_parse() would overwrite it again?

> +
> +	if (pipe(fds)) {
> +		_errno =3D errno;
> +		return vjson_error(err, "pipe() failed: %s (%d)",
> +				   strerror(_errno), _errno);
> +	}
> =20
>  	switch (fork()) {
>  	case -1:
> +		_errno =3D errno;
> +
>  		close(fds[0]);
>  		close(fds[1]);
> -		return -errno;
> +
> +		return vjson_error(err, "fork() failed: %s (%d)",
> +				   strerror(_errno), _errno);
>  	case 0:
>  		/* Set stdin & stderr to /dev/null */
>  		fd =3D open("/dev/null", O_RDWR);
> @@ -458,43 +561,10 @@ static int validate_firmware_image_call(const cha=
r *file)
>  	/* Parent process */
>  	close(fds[1]);
> =20
> -	tok =3D json_tokener_new();
> -	if (!tok) {
> -		close(fds[0]);
> -		return -ENOMEM;
> -	}
> -
> -	blob_buf_init(&b, 0);
> -	while ((len =3D read(fds[0], buf, sizeof(buf)))) {
> -		if (len < 0 && errno =3D=3D EINTR)
> -			continue;
> -
> -		jsobj =3D json_tokener_parse_ex(tok, buf, len);
> -
> -		if (json_tokener_get_error(tok) =3D=3D json_tokener_success)
> -			break;
> -		else if (json_tokener_get_error(tok) =3D=3D json_tokener_continue)
> -			continue;
> -		else
> -			fprintf(stderr, "Failed to parse JSON: %d\n",
> -				json_tokener_get_error(tok));
> -	}
> -
> +	ret =3D vjson_parse(fds[0], err);
>  	close(fds[0]);
> =20
> -	err =3D -ENOENT;
> -	if (jsobj) {
> -		if (json_object_get_type(jsobj) =3D=3D json_type_object) {
> -			blobmsg_add_object(&b, jsobj);
> -			err =3D 0;
> -		}
> -
> -		json_object_put(jsobj);
> -	}
> -
> -	json_tokener_free(tok);
> -
> -	return err;
> +	return ret;
>  }
> =20
>  enum {
> @@ -512,6 +582,8 @@ static int validate_firmware_image(struct ubus_cont=
ext *ctx,
>  				   const char *method, struct blob_attr *msg)
>  {
>  	struct blob_attr *tb[__VALIDATE_FIRMWARE_IMAGE_MAX];
> +	enum vjson_state ret =3D VJSON_ERROR;
> +	char *err;
> =20
>  	if (!msg)
>  		return UBUS_STATUS_INVALID_ARGUMENT;
> @@ -520,7 +592,8 @@ static int validate_firmware_image(struct ubus_cont=
ext *ctx,
>  	if (!tb[VALIDATE_FIRMWARE_IMAGE_PATH])
>  		return UBUS_STATUS_INVALID_ARGUMENT;
> =20
> -	if (validate_firmware_image_call(blobmsg_get_string(tb[VALIDATE_FIRMW=
ARE_IMAGE_PATH])))
> +	ret =3D validate_firmware_image_call(blobmsg_get_string(tb[VALIDATE_F=
IRMWARE_IMAGE_PATH]), &err);
> +	if (ret !=3D VJSON_SUCCESS)
>  		return UBUS_STATUS_UNKNOWN_ERROR;
> =20
>  	ubus_send_reply(ctx, req, b.head);
> @@ -580,6 +653,8 @@ static int sysupgrade(struct ubus_context *ctx, str=
uct ubus_object *obj,
>  	struct blob_attr *validation[__VALIDATION_MAX];
>  	struct blob_attr *tb[__SYSUPGRADE_MAX];
>  	bool valid, forceable, allow_backup;
> +	enum vjson_state ret =3D VJSON_ERROR;
> +	char *err;
> =20
>  	if (!msg)
>  		return UBUS_STATUS_INVALID_ARGUMENT;
> @@ -588,8 +663,9 @@ static int sysupgrade(struct ubus_context *ctx, str=
uct ubus_object *obj,
>  	if (!tb[SYSUPGRADE_PATH] || !tb[SYSUPGRADE_PREFIX])
>  		return UBUS_STATUS_INVALID_ARGUMENT;
> =20
> -	if (validate_firmware_image_call(blobmsg_get_string(tb[SYSUPGRADE_PAT=
H]))) {
> -		sysupgrade_error(ctx, req, "Firmware image couldn't be validated");
> +	ret =3D validate_firmware_image_call(blobmsg_get_string(tb[SYSUPGRADE=
_PATH]), &err);
> +	if (ret !=3D VJSON_SUCCESS) {
> +		sysupgrade_error(ctx, req, err);
>  		return UBUS_STATUS_UNKNOWN_ERROR;
>  	}
> =20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>=20



--dhatMKaai0uCCzn9stIWYCVRWSoiymGFc--

--50MVT8MabhZBWZVvbAtuXecV9fUm81uwi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEyz0/uAcd+JwXmwtD8bdnhZyy68cFAl4Q6ngACgkQ8bdnhZyy
68duvwf/U+9g6ZffwTXUGk3/G7i22J79mEqkmapGrixnKRqm0Xqqz0wEhNM7aHq5
Jem4W30UqVKYrb74LnziAWpQszuScwq6BqaZBzE+eLdzaO8PD8VQjXGiufYPu0Vd
KOkgh31BWbFaErhCQMRF0GtuLQRfiXkWi8HYjuE/6hTfPpvuP6z36+Dvd3gDYYS3
Qnmi3+mYh8nmUv408H4/sTo4D1kfzvl/w/s929H7QoV5PkW1N8Bm0gVl2FIktFqB
x+Jpkpq3ob6J5naiHzJm9If7xRlG87KpKbekTMM4AEhWvjHRmKpe2fuJ4jIVXc/S
rE6SllHz/hsxoWk7xnFvX3simDV2MQ==
=aVfz
-----END PGP SIGNATURE-----

--50MVT8MabhZBWZVvbAtuXecV9fUm81uwi--


--===============7898199745309186853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7898199745309186853==--

