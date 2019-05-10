Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE6C1985B
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 May 2019 08:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FApyFQcVCUfGp+H8BVon1nwv3EQBCiQTZkLlLA4gNbk=; b=MyuiYzKc6+KpYprxmZ5j6C3WB
	WLvD57GcFPCbyCUxlRZfEbedXzFZf9JDZK2APfcBeF7sIlThuoV57+jWEIBXl2lPQNJL1NG91622N
	zOj213etbGxPU0ykotRpixX+nDxPd+4pfb9D0zM/zg7ILhJBxUufoptVBUrUIrbpMNvuTd97OQNdD
	diJ1rC2/CPhVM5Kf21lqNyxwq4ayLmC2MPPaH7R9heXeypLU3HA2zQ56zYX4JmjygcqZJHGyn9Pgd
	KP9Cg4K5Wlh4VzawLUbWn0/FRsgEe4iuMH7clvnTU+QCC9EcyhHIVl7hgZhKvYnhhuZJPbgEp5wkB
	KE/Uiyrug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOz1R-0002xn-1d; Fri, 10 May 2019 06:28:45 +0000
Received: from narfation.org ([79.140.41.39] helo=v3-1039.vlinux.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOz1K-0002xO-85
 for openwrt-devel@lists.openwrt.org; Fri, 10 May 2019 06:28:40 +0000
Received: from bentobox.localnet (unknown
 [IPv6:2001:16b8:550e:9be2:2eb1:8880:f2c8:8bd7])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id E36511100E1;
 Fri, 10 May 2019 08:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1557469712; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=tnJD7dSCX0SnETP6eIzgF7ZTooskK7/yUNvszcoJHbU=;
 b=wfmAr4+bCirAdz+0PCKRqj0XmewoTvRZFNmbqRgsCNwvKBZAviMOE+77JYiSHJrC2lZ+4D
 lTiGGGtWxHpwDTve9IgEtmSk4fAtnZx4UQlhKMRqN4Zw0gDWETcSp4mK8xJ84OLXgg6XYj
 GDuX4faY+a2t5iAh/cSfaV8owjwJz4A=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 10 May 2019 08:28:19 +0200
Message-ID: <2704987.airHHaY0nA@bentobox>
In-Reply-To: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
References: <20190509115039.6127-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1557469712;
 h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:openpgp:autocrypt;
 bh=tnJD7dSCX0SnETP6eIzgF7ZTooskK7/yUNvszcoJHbU=;
 b=TNKI5EzT90JHlHvAwGSDD7VVBGKeGBMnDKlyWysY3YNwk96FQCNRjot1JEOAYEty8G7AFz
 JNxt0E4kFqiKm9D/lz48VLJIX1+d0y8hTwxMFVL2J8BDqBVb3varxa1KvuFpIB3UQDqlb3
 Qo9WRjOVbfFniO2fb8GK337aPePaR8Y=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1557469712; a=rsa-sha256; cv=none;
 b=bY8FR/O5iIzTv5LyUbQOzDSsJxQbTrP4IURPBrFXR8sPQHH00+9naOw6yHpqD+5BGMZ470
 eCwZ3zR740pPwf7PXLKp6PBgEdj88l+HFh1WUQXE2OwOQBXDprLW6hBiw8xPQB9YA4h754
 1QPauZL7a+ueET0Ao6mt/25rMBOuUNs=
ARC-Authentication-Results: i=1; v3-1039.vlinux.de;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_232838_882144_C55B28FB 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [79.140.41.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: Add missing read-only properties
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>, blogic@phrozen.org
Content-Type: multipart/mixed; boundary="===============3598821912422348880=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3598821912422348880==
Content-Type: multipart/signed; boundary="nextPart16400150.djxRjkm9lz"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart16400150.djxRjkm9lz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 9 May 2019 13:50:39 CEST Adrian Schmutzler wrote:
> diff --git a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts b/
target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
> index 1e3cf40f71..fa74cf2344 100644
> --- a/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
> +++ b/target/linux/ath79/dts/qca9558_openmesh_om5p-ac-v2.dts
> @@ -114,6 +114,7 @@
>                         partition@1 {
>                                 label = "u-boot-env";
>                                 reg = <0x040000 0x010000>;
> +                               read-only;
>                         };
>  
>                         partition@2 {

I think this device is in a weird state for ath79 but following info would be 
relevant when it would support flash installations and sysupgrade like under 
ar71xx:

This device needs to write access to the u-boot-env to switch the firmware 
partition and adjust the kernel + (static part of) rootfs checksums during 
syspgrade.

Kind regards,
	Sven
--nextPart16400150.djxRjkm9lz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzVGgMACgkQXYcKB8Em
e0YqiA//XHnJFXVo3foDt63QIZ9afxgTjncFeAXoUvmSe3A6zcD/x+1iT81hNwki
Zv1j6CKKUJEdd3n4oKgh9mLVF/IxUYRLRPgJIGJxQIDDiVuqKdwo4Q5PPwH09su6
o8qM3acRLaTBvJwTGupVD/+hy1qBHpPajlRbiGsLoDt3XRA8QLVkMWgdFgG5F2mX
vxqtTS/DtO+GkGMymKTWW515ws/hNwfaPYn/7X6kFxULEItEPXNn0tQbZZeDUXVW
vudi/4SdainO2rPZxDwOxfgaqVjmeHJ4ipwxUb5dN9Q7EPVUBfAXe9EgRDh71Sqh
Zy0SEKiAdxWvKscUFYs9z8KJeTsmZ9/acSGwFu7I3qfjhQ3sYUJ2vvjxnyIqHmD0
pCHthooc8k7Ry4AD/cnP0enScQ/N6IwrfdioaM20MuiuHX47hKBwkB3ojBgvpZpq
oAQ/cue+I1SZiWNR6tVsOSew0vsPT8afqPhCHGFqDbnwfmjhRyh2wKOBepPH2E/+
QR2D1aXv4paFpstBPz5/1cWgmVi2NwrFi35biLSI9tt3zddSg9JK4fyrrqwz9OEJ
ix7Rw+J7C/TcOD5BOUN7sgT709a8L4iFnXDihPw+8ttQsYTo5Qwr8dFE6+GhedZ2
9c+fcVNapelS2v9YrmmLMwMCFVZqo50UUHtoRhL6AiLzgoSbtHE=
=9jNZ
-----END PGP SIGNATURE-----

--nextPart16400150.djxRjkm9lz--





--===============3598821912422348880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3598821912422348880==--




